require 'rails_helper'

RSpec.describe AppointmentsController, type: :controller do
	describe "GET #index" do
    it "renders the show template" do
    	get :index
      expect(response).to render_template(:index)
    end

  end
end