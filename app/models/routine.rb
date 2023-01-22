class Routine < ActiveRecord::Base
    belongs_to :client
    belongs_to :exercise
end