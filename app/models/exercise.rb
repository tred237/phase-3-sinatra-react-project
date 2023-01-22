class Exercise < ActiveRecord::Base
    has_many :routines
    has_many :users, through: :routines
end