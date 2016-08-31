class UsersController < ApplicationController
  skip_before_action :authenticate_request, only: [:create]

  def create
    @user = User.new(user_params)
    if @user.save
      command = AuthenticateUser.call(user_params[:email], user_params[:password])
      render json: { auth_token: command.result, user: @user }, include: ['listings','communities','conversations','organizations']
    else
      render json: @user.errors
    end
  end

  def show
    @user = User.find(params[:id])
    render json: @user, include: ['listings','organizations']
  end

  def signin
    @user = User.find(params[:id])
  end

  def update
    current_user.email = user_params[:email]
    current_user.zipcode = user_params[:zipcode]
    if current_user.save
      render json: 'success', status: 200
    else
      render json: { error: 'Account was not updated. Please try again later.' }, status: 404
    end
  end

  # def destroy
  # end

  def index
    render json: @current_user, include: ['listings','communities','conversations','organizations']
  end

  def validate
    # this needs to be fixed.. a user can technically change their email to another user's
    if !User.find_by(email: user_params[:email])|| params[:header].present?
      render json: 'success', status: 200
    else
      render json: { error: 'User already exists' }, status: 401
    end
  end

  private


  def user_params
    params.require(:user).permit(:first_name, :last_name, :zipcode, :password, :email)
  end
end
