class User < ApplicationRecord

    attr_accessor :password
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

    validates :name, presence: true, uniqueness: true, length: { in: 3..6 }
    validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}, uniqueness: true
    validates :password, confirmation: true 
    validates_length_of :password, in: 6..20, on: :create

    before_save :encrypt_password
#     before_save :downcase_fields

#    def downcase_fields
#       self.email.downcase
#    end

    def self.authenticate(email, password)
        user = User.where(email: email).first

        if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)

            user

        else

            nil

        end
    end

    def encrypt_password

        self.password_salt = BCrypt::Engine.generate_salt

        self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)

    end
    
    
end
