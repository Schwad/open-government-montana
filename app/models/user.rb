class User < ActiveRecord::Base
  has_many :api_keys #note, this is for possible future use and may be
                     #deprecated for now. Only currently using `api_key` column.

  # Assign an API key on create
 before_create do |user|
   user.api_key = user.generate_api_key
 end

 # Generate a unique API key
 def generate_api_key
   loop do
     token = SecureRandom.base64.tr('+/=', 'Qrt')
     break token unless User.exists?(api_key: token)
   end
 end
end
