module Authenticatable
  extend ActiveSupport::Concern

  include WardenAccessible

  included do
    helper_method :authorized?, :authenticate!, :current_user
  end

  def authorized?
    !current_user.nil?
  end

  def current_user
    warden.user
  end

  def authenticate!
    warden.authenticate!
  end
end
