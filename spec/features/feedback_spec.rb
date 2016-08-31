require "rails_helper"

feature "Feedback" do
  before { visit new_feedback_path }

  context "form valid" do
    scenario "Visitor sends feedback" do
      fill_in "feedback_email", with: "John@Doe.com"
      fill_in "feedback_body", with: "Hey!!!"
      click_on "Send feedback"

      expect(page).to have_text("Mail sent successfuly.")

      open_last_email

      expect(current_email).to have_text("Hey!!!")
      expect(current_email).to deliver_from("John@Doe.com")
      expect(current_email).to have_subject("New feedback from John@Doe.com")
    end
  end

  context "form no valid" do
    scenario "Visitor sends feedback" do
      click_on "Send feedback"

      expect(page).not_to have_text("Mail sent successfuly.")
      expect(page).to have_text("Emailcan't be blank")
      expect(page).to have_text("Bodycan't be blank")
    end
  end
end
