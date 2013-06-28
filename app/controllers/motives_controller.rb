class MotivesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_motives, only: [:index, :create]

  def index
    @motive = Motive.new

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
    @motive.creator = current_user
    @motive.supporters << current_user

    if @motive.save
      redirect_to @motive
    else
      render 'index'
    end
  end

  def show
    @motive = Motive.find(params[:id])
  end

  def destroy
    @motive = Motive.find(params[:id])
    @motive.destroy
    redirect_to root_url
  end

  private
    def set_motives
      @motives = Motive.all
    end

    def motive_params
      result = params.require(:motive).permit(:description, tag_id: [])
      result[:tag_id] = result[:tag_id].last
      result
    end
end
