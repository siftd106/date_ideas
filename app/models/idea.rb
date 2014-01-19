class Idea < ActiveRecord::Base
  belongs_to :location
  belongs_to :price
  belongs_to :destination
  belongs_to :duration
end
