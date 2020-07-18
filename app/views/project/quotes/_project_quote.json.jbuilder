json.extract! project_quote, :id, :company, :price, :website, :phone, :notes, :created_at, :updated_at
json.url project_quote_url(project_quote, format: :json)
