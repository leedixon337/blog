class SignupController < ApplicationController
  def index
  end

  def new
    @messages = Posts.all
    @newmessage = Posts.new
  end

  def create
    @newmessage = Posts.new
    if @newmessage.save
      render "index"
    else
      render ""
    end
  end


end
