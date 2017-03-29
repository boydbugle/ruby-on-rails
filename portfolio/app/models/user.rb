class User < ApplicationRecord

    attr_accessor :email,:password
    validates :name, presence: true, uniqueness: true, length: { in: 3..20 }
    validates :email, presence: true, uniqueness: true
    validates :password, confirmation: true 
    validates_length_of :password, in: 6..20, on: :create

    before_save :encrypt_password

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
