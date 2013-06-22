class MotivesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @motives = Motive.all

    if params[:order_by]
      @motives = @motives.send("order_by_#{params[:order_by]}")
    else
      @motives = @motives.order_by_support
    end
  end

  def new
    @motive = Motive.new
  end

  def create
    @motive = Motive.new(motive_params)
    @motive.supporters << current_user

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
