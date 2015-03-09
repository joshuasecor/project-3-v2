class Service < ActiveRecord::Base

	has_many :appointments

	# "dependent: :destroy" means that if a service is deleted, all of its comments are also deleted.
	has_many :comments, dependent: :destroy

	belongs_to :level

	belongs_to :category

	#Paperclip
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

end
