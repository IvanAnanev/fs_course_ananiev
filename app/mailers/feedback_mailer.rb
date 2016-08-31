class FeedbackMailer < ApplicationMailer
  include ActionView::Helpers

  def admin_email(feedback)
    body = feedback.body
    mail(to: ENV["ADMIN_MAIL"], from: feedback.email, subject: "New feedback from #{feedback.email}") do |format|
      format.text { render plain: body }
      format.html { render html: content_tag(:p, body) }
    end
  end
end
