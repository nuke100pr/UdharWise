class UsersController < ApplicationController

  def index
    if current_user.admin?
      @users = User.all
      render json: @users
    else
      render json: { error: "Unauthorized" }, status: :unauthorized
    end
  end

  def show
    @user = User.find(params[:id])
    if current_user.admin? || current_user == @user
      render json: @user
    else
      render json: { error: "Unauthorized" }, status: :unauthorized
    end
  end

  def create # only creates user if user has referrel code , to be added later
    if true # Replace with your authentication logic
      puts "User params: #{user_params.inspect}" # Debugging line
      @user = User.new(user_params)
      if @user.save
        render json: @user, status: :created
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    else
      render json: { error: "Unauthorized" }, status: :unauthorized
    end
  end

  def update
    @user = User.find(params[:id])
    if current_user.admin? || current_user == @user
      if @user.update(user_params)
        render json: @user
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    else
      render json: { error: "Unauthorized" }, status: :unauthorized
    end
  end

  def destroy
    @user = User.find(params[:id])
    if current_user.admin? || current_user == @user
      @user.status = 'inactive'
      @user.save
      head :no_content
    else
      render json: { error: "Unauthorized" }, status: :unauthorized
    end
  end

  def restore
    @user = User.find(params[:id])
    if current_user.admin? || current_user == @user
      @user.status = 'active'
      @user.save
      render json: @user
    else
      render json: { error: "Unauthorized" }, status: :unauthorized
    end
  end
  
  def new
    if current_user.admin?
      @user = User.new
    else
      render json: { error: "Unauthorized" }, status: :unauthorized
    end
  end

  def edit
    @user = User.find(params[:id])
    if current_user.admin? || current_user == @user
      @user = User.update(user_update_params)
      render json: @user
    else
      render json: { error: "Unauthorized" }, status: :unauthorized
    end
  end
  
  def user_update_params
    params.require(:user).permit(:name, :email, :status)
  end
  
  def user_params
    params.require(:user).permit(:name, :email)
  end
  
end
