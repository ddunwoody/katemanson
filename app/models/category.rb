class Category < ActiveRecord::Base
  has_many :cartoons
  validates_presence_of :name
  before_destroy 'cartoons.empty?'
end
