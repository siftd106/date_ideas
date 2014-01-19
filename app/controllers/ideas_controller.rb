class IdeasController < ApplicationController
  def index
    @include_add_link = true
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

  def new
    @include_add_link = false
    @idea = Idea.new
  end

  def create
    @idea = Idea.create(params[:idea])

    redirect_to root_url
  end
end
