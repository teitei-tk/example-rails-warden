module WardenAccessible
  extend ActiveSupport::Concern

  included do
    helper_method :warden
  end

  def warden
    request.env['warden']
  end
end