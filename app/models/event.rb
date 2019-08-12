class Event < ApplicationRecord

  has_many :attendances
  
  validates :start_date, 
    presence: true
    numericality: {only_integer: true, greater_than: 0}

  validates :duration, 
    presence: true
    
  validates :title,
      presence: true, 
      length: {in: 5..140 }

  validates :description,
      presence: true,
      length: {in: 20..1000}

    validates :price,
      presence: true,
      length: {in: 1..1000}

    validates :location,
      presence: true
  
end
