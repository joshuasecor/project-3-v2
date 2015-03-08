class Trainer < ActiveRecord::Base

	has_many :appointments
	
	has_many :comments

  def full_name
    "#{first_name} #{last_name}"
  end
	
end
