class SessionsController < ApplicationController



  def new
  end

  def create
    if params[:name] == nil || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    render :new
  end

  # private
  #
  # def current_user
  #   return head(:forbidden) unless session.include? :user_id
  # end

end
