class Service < ActiveRecord::Base

	has_many :appointments

	# "dependent: :destroy" means that if a service is deleted, all of its comments are also deleted.
	has_many :comments, dependent: :destroy

	belongs_to :trainer

	belongs_to :level

	belongs_to :category

end
