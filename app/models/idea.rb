class Idea < ActiveRecord::Base
  belongs_to :location
  belongs_to :price
  belongs_to :destination
  belongs_to :duration

  def next_idea
    Idea.where(["created_at < ?", created_at]).order(created_at: :desc).limit(1).first
  end

  def prev_idea
    Idea.where(["created_at > ?", created_at]).order(created_at: :asc).limit(1).first
  end
end
