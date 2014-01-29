class IdeasController < ApplicationController
  # def index
  #   @include_add_link = true
  #   if params[:next]
  #     @idea = Idea.find(params[:prev_idea_id].to_i + 1)
  #   elsif params[:prev]
  #     @idea = Idea.find(params[:prev_idea_id].to_i - 1)
  #   else
  #     @idea = Idea.first
  #   end

  #   @idea.id > 1 ? @include_prev_link = true : @include_prev_link = false
  #   @idea.id == Idea.last.id ? @include_next_link = false : @include_next_link = true
  # end

  def show
    @idea = Idea.find params[:id]
  end

  def new
    @include_add_link = false
    @idea = Idea.new
  end

  def create
    if @idea = Idea.create(idea_params)
      @include_add_link = true

      @idea.id > 1 ? @include_prev_link = true : @include_prev_link = false
      @idea.id == Idea.last.id ? @include_next_link = false : @include_next_link = true

      render :index
    else
      redirect_to root_url
    end
  end
private
  def idea_params
    params.require(:idea).permit(:description, :duration_id, :destination_id, :price_id)
  end
end
