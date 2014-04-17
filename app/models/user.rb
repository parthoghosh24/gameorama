class User < ActiveRecord::Base
   before_save { self.email = email.downcase }
   before_create :create_remember_token
   validates :name, presence: true, length: { maximum: 50}
   VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
   validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}, uniqueness: { case_sensitive: false }
   has_secure_password
   validates :password, length: { minimum: 6 }

   def User.new_remember_token
      SecureRandom.urlsafe_base64
   end

   def User.hash(token)
       Digest::SHA1.hexdigest(token.to_s)
   end

   def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|      
      user.provider = auth.provider
      user.uid = auth.uid
      user.fbname = auth.info.name
      user.name = auth.info.name
      user.email = auth.info.email    
      user.password="secret"
      user.password_confirmation="secret"
      user.is_admin=0
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end

   private
   
        def create_remember_token
            self.remember_token = User.hash(User.new_remember_token) 
        end  
end
