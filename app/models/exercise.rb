class Exercise < ActiveRecord::Base
    has_many :routines
    has_many :clients, through: :routines
end