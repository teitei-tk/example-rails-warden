class SummaryController < ApplicationController
  def index
    @result = params[:result]
    render :index
  end
end
