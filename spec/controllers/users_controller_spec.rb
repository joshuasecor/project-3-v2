require 'rails_helper'

RSpec.describe UsersController, type: :controller do
	before :each do 
		@user1 = User.new(email:"John@johndoe.com", id: 1, is_admin: false)
		@user2 = User.new(email:"John@johndoe.com", id: 2, is_admin: true)
	end

	describe "GET #show" do
		it "redirects to a show page" do
			get :show, id: 1
			expect(response).to have_http_status(302)
		end
		# it "shows a user" do
		# 	get :show, id: 2
		# 	expect(response).to redirect_to(user_path(@user2))
		# end
	end


  describe "GET #edit" do
  	
    it "redirect to homepage" do
    	get :edit, id: 1
    	expect(response).to redirect_to(home_index_path)
    end
  end

   describe "GET #edit" do
    it "renders edit page for a user" do
    		get :edit, id: 2
    		expect(response).to have_http_status(302)
    end
  end

  describe "DELETE #destroy" do
    it "destroys a user" do
  		@user1.destroy
    	expect(response).to have_http_status(200)
    end
  end

end
