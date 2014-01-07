class Skill < ActiveRecord::Base
    has_many :entries
    has_many :users, through: :entries
    validates :name, :description, presence: true
end
