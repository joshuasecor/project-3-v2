require 'rails_helper'

RSpec.feature "Messages", type: :feature do
  before(:each) do
    @about = About.create(
      about_text: 'Curabitur efficitur auctor tortor. Proin ex nunc, posuere non venenatis ac, eleifend id libero. Vivamus a magna eget sapien facilisis mattis in id risus. Duis arcu risus, porta in imperdiet eu, venenatis id diam.', 
      address_line_1: '1410 Second Street', 
      address_line_2: '1st Floor', 
      city: 'Santa Monica', 
      state: 'CA', 
      zip: '90401', 
      email: 'info@branchstudio.com', 
      phone: '310-555-7283')
  end

    it "expects contact info to be valid" do 
    visit '/contact'
    within(".contact_form") do
      fill_in "Name", with: "John Doe"
      fill_in "Email", with: "john@johndoe.com"
      fill_in "Message", with: "Hi"
    end
    click_button('Send')
    expect(page).to have_content "HomePage"
  end

end
