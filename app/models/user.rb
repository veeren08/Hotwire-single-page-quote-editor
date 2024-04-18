class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
   :rememberable, :validatable
  belongs_to :company

  def name
    email.split("@").first.capitalize
  end
end
