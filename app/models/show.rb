class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  def actors_list
    array = []
    self.characters.each do |n|
      array << "#{n.actor.first_name} #{n.actor.last_name}"
    end
    array
  end
  
end