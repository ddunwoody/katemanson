class Cartoon < ActiveRecord::Base
  belongs_to :category

  validates_presence_of :category
  validates_associated :category

  has_attached_file :artwork, :styles => { :medium => '640x480>', :thumb => '100x100>' },
                    :url => '/:attachment/:id/:style/:basename.:extension',
                    :path => ':rails_root/public/:attachment/:id/:style/:basename.:extension'
  validates_attachment_presence :artwork
  validates_attachment_content_type :artwork, :content_type => ['image/jpeg', 'image/png']
end
