class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  
  def actors_list
    actors = []
    self.characters.each do |n|
      actors << "#{n.actor.first_name} #{n.actor.last_name}"
    end
    actors
  end
  
end