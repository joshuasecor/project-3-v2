class Message < ActiveRecord::Base
	include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :name, :email, :content

  validates :name, presence: true

  validates :email, presence: true
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i , multiline: true }, length: {minimum: 6}

  validates :content, presence: true
  validates_length_of :content, maximum: 256

end
