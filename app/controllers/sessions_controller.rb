class SessionsController < ApplicationController
  def new
  end

  def create
    byebug
    @user = User.find_or_create_by(uid: auth['uid']) do |u|
      u.name = auth['info']['name']
      u.email = auth['info']['email']
    end

    session[:user_id] = @user.id


  end
end
