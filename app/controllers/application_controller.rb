class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :set_title

  def current_application
    return @application if @application

    if session[:application_id]
      @application = EmploymentApplication.where(id: session[:application_id]).first
    end

    if @application.nil?
      @application = EmploymentApplication.new
      @application.save(validate: false)
    end

    session[:application_id] = @application.id
    return @application
  end

  private
    def set_title
      @title = 'Hines Furlong Line - Professional Marine Transportation'
    end
end
