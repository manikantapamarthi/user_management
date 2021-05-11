# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]
  include UserConcern
  # GET /resource/sign_up
  def new
    @user = User.new
    @user.build_address
    # super
  end

  # POST /resource
  def create
    user  = User.new(user_params.merge(role: :user))
    if user.save
      flash[:notice] = "User created successfully"
      redirect_to user_path(user)
    else
      flash[:error] = user.errors.full_messages.join(',')
    end
    # super
  end

end
