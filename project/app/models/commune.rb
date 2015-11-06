class Commune < ActiveRecord::Base
  
  def self.regions
    self.all.pluck(:region).uniq
  end
  
end
