class Classification < ActiveRecord::Base
  has_many :boat_classifications
  has_many :boats, through: :boat_classifications

  def self.my_all
    all
  end

  def self.longest
    longest = Boat.joins(:classifications).order('boats.length desc').limit(1)
    #where('id IN (?)', longest.pluck(:id))
  end
end
