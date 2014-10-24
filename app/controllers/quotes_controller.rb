class QuotesController < ApplicationController
 before_filter :authorize, only: [:new, :create, :edit, :update, :destory]

  def new
    @quote = Quote.new
  end

  def create 
    @quote = Quote.new
    @quote.user_id = current_user.id  
    if @quote.update_attributes(quote_params)
      redirect_to root_path, notice: "Added"
    elsif params[:content].blank?
      redirect_to new_quote_path, notice: "Blank!"
    else
      redirect_to new_quote_path, notice: "Error"
    end
  end

  def show 
    @quote = Quote.find(params[:id])
  end

  def edit

  end

  def update
    @quote = Quote.find(params[:id])
    if @quote.update_attributes(quote_params)
      redirect_to panel_my_quotes_path, notice: "Updated"
    else
      redirect_to :back, notice: "Error"
    end
  end

  def destroy
    Quote.find(params[:id]).destroy
    redirect_to panel_my_quotes_path, notice: "Deleted"
  end

  private

  def quote_params
    params.require(:quote).permit(:content)
  end
end
