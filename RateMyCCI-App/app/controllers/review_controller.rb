class ReviewController < ApplicationController
  def index
  end
  def create #for submit button
    render plain: params[:review].inspect
  end
end
