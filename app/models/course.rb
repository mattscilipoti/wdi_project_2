class Course < ActiveRecord::Base
  has_many :lessons, dependent: :destroy

  validates :name, presence: true, length: { maximum: 50 }
  validates :content, presence: true, length: { maximum: 500 }
  

end
