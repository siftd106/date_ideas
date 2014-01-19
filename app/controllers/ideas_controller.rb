class IdeasController < ApplicationController
  def index
    
    if params[:next]
      @idea = Idea.find(params[:prev_idea_id].to_i + 1)
    elsif params[:prev]
      @idea = Idea.find(params[:prev_idea_id].to_i - 1)
    else
      @idea = Idea.first
    end

    @idea.id > 1 ? @include_prev_link = true : @include_prev_link = false
    @idea.id == Idea.last.id ? @include_next_link = false : @include_next_link = true
    
  end
end
