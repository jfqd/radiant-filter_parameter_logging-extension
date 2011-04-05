# Uncomment this if you reference any of your controllers in activate
# require_dependency 'application_controller'

class FilterParameterLoggingExtension < Radiant::Extension
  version "1.0"
  description "Filter user, page, snippets, layouts, assets content in the log."
  url "http://github.com/jfqd/filter_parameter_logging"
  
  def activate
    ApplicationController.class_eval do
      filter_parameter_logging :username_or_email, :password, :password_confirmation,
                               :name, :email, :login, :authenticity_token, :content,
                               :published_at, :title, :caption, :description, :message
    end
  end
  
end
