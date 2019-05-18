class Classification < ActiveRecord::Base
  has_many :boat_classifications
  has_many :boats, through: :boat_classifications

  def self.my_all
    all
  end

  def self.longest
    longest = Boat.order('boats.length desc').limit(1)[0]
    #joins(:boats).where('boats.name = ?', longest)
  end
end
