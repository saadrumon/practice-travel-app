class SignupsController < ApplicationController
  def new; end

  def create
    @user_info = Signup.new(signup_params)
    puts Signup.all
    if @user_info.save
      redirect_to thanks_path
    else
      render new_signup_path
    end
  end

  private

  def signup_params
    params.require(:signup).permit(:firstname, :email)
  end
end
