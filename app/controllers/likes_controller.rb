class LikesController < ApplicationController
  def create
  @like =  Like.create(user_id: current_user.id, picture_id: params[:id], liked:true)

  end

end
