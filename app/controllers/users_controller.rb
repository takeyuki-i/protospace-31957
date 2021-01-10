class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @prototype = user.prototypes
    @user = User.find(params[:id])
  end

end