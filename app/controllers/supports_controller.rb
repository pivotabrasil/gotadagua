class SupportsController < ApplicationController
  before_action :authenticate_user!

  def create
    @motive = Motive.find(params[:motive_id])
    @motive.supports.create!(supporter: current_user)
    redirect_to @motive
  end
end
