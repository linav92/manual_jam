class User < ApplicationRecord
    has_many :stories
    has_secure_password
    validates :email, presence: true, uniqueness: { case_sensitive: false}
    validates_confirmation_of :password
    accepts_nested_attributes_for :stories
end
