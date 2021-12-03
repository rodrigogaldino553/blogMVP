class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  #rescue_from CanCan::AccessDenied do |exception|
  #  redirect_to '/', alert: exception.message
  #end

  #def current_ability
  #  @current_ability ||= Ability.new(current_user) # when add user, its needly to change this part like: https://stackoverflow.com/questions/53540799/cancancan-cant-get-it-work-with-user-and-admin
  #end
end
