require "rails_helper"

feature "First Test" do
  it "should be cool" do
    visit root_path

    expect(page).to have_text("Hello!")
  end
end
