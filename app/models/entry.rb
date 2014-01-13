class Entry < ActiveRecord::Base

  default_scope order('created_at DESC')
  
  belongs_to :user
  belongs_to :skill

  validates :note, length: { maximum: 250 }
  validates :hours, numericality: { greater_than: 0 }

end
