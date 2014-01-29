class IdeasController < ApplicationController
  def index
    @idea = Idea.all.order(created_at: :desc).limit(1).first
    render :show
  end

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
