class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    name = "#{self.first_name} #{self.last_name}"
    name
  end
  
  def list_roles
    actor = self
    roles = []
    
    actor.characters.each do |c|
      role = "#{c.name} - #{c.show.name}"
      roles << role
    end
    roles
  end
end