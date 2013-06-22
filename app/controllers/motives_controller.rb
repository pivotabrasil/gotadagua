class MotivesController < ApplicationController
  def index
    @motives = Motive.all
  end

  def new
    @motive = Motive.new
  end

  def create
    @motive = Motive.new(motive_params)
    if @motive.save
      redirect_to @motive
    else
      render 'new'
    end
  end

  def show
    @motive = Motive.find(params[:id])
  end

  private
    def motive_params
      params.require(:motive).permit(:description, :tag_id)
    end
end
