class PanelsController < ApplicationController

  def index
    redirect_to root_path if current_user.nil?
  end

  def edit # current user quotes he can edit
  end

  def update
    
  end

  def destroy

  end

  def stats
    @number_of_quotes = current_user.quotes.count
  end
end
