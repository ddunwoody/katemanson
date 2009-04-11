class Cartoon < ActiveRecord::Base
  belongs_to :category
  validates_presence_of :caption, :category
  validates_associated :category
end
