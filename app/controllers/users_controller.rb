# ==============================================================================
# app - controller - users
# ==============================================================================
class UsersController < ApplicationController
  def show
    render json: UserSerializer.new(current_user)
  end

  def destroy
    current_user.destroy!
    render json: { message: 'user deleted.' }
  end
end
