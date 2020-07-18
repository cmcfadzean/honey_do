class Project < ApplicationRecord
  has_many :quotes
  include RailsSortable::Model
  set_sortable :sort, without_updating_timestamps: true
  belongs_to :user
end
