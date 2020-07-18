class QuotesController < ApplicationController
  before_action :set_project
  before_action :set_quote, only: [:show, :edit, :update, :destroy]

  # GET projects/1/quotes
  def index
    @quotes = @project.quotes
  end

  # GET projects/1/quotes/1
  def show
  end

  # GET projects/1/quotes/new
  def new
    @quote = @project.quotes.build
  end

  # GET projects/1/quotes/1/edit
  def edit
  end

  # POST projects/1/quotes
  def create
    @quote = @project.quotes.build(quote_params)

    if @quote.save
      redirect_to([@quote.project, @quote], notice: 'Quote was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT projects/1/quotes/1
  def update
    if @quote.update_attributes(quote_params)
      redirect_to([@quote.project, @quote], notice: 'Quote was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE projects/1/quotes/1
  def destroy
    @quote.destroy

    redirect_to project_quotes_url(@project)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:project_id])
    end

    def set_quote
      @quote = @project.quotes.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def quote_params
      params.require(:quote).permit(:company, :price, :website, :phone, :notes)
    end
end
