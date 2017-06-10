# Base controller. Handles redirect from the root to the tickets controller.
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def home
    redirect_to tickets_path
  end
end
