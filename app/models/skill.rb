class Skill < ActiveRecord::Base

    validates :name, :description, presence: true
end
