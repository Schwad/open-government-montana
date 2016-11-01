class ApiKey < ActiveRecord::Base
  belongs_to :user
  validates :token, length: { minimum: 40 }, uniqueness: true
end
