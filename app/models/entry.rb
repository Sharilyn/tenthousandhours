class Entry < ActiveRecord::Base
  belongs_to :user
  belongs_to :skill

  validates :note, length: { maximum: 250 }
  validates :hours, presence: true
  
end
