require 'rails_helper'
require 'shoulda/matchers'

RSpec.describe MessagesController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  it "allows parameters for create" do
    should permit(:name, :email, :content).
      for(:create)
  end

end
