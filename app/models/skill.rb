class Skill < ActiveRecord::Base
    has_many :users, through: :entries
    has_many :entries
    validates :name, :description, presence: true
end
