require 'rails_helper'

RSpec.describe DashboardController, type: :controller do
	describe "GET #index" do
    it "renders the show template for the dashboard" do
    	get :index
      expect(response).to render_template(:index)
    end

  end
end
