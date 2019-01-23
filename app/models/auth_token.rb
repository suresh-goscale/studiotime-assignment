class AuthToken < ApplicationRecord
  belongs_to :customer
  enum kind: %I[email mobile]

  validates_presense_of :token, :expires_at

  before_create :generate_token

  private

  def generate_token
    # Generate unique token
  end
end
