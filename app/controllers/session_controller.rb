class SessionController < ApplicationController
  prepend_before_action :authenticate!

  def create
    binding.pry
    unless authorized?
      redirect_to controller: :summary, action: :index, result: 'invalid email or password'
    end

    redirect_to controller: :summary, action: :index, result: 'login successful'
  end
end
