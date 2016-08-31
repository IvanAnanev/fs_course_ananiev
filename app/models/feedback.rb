class Feedback
  include ActiveModel::Model
  include ActiveModel::Validations

  ATTRIBUTES = %i(email
                  body).freeze

  EMAIL_FORMAT = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

  attr_reader(*ATTRIBUTES)

  validates(*ATTRIBUTES, presence: true)
  validates :email, format: { with: EMAIL_FORMAT }

  def initialize(opts = {})
    @email = opts[:email]
    @body  = opts[:body]
  end
end
