require_relative "#{Rails.root}/lib/custom_logger"

# Application Controller
class ApplicationController < ActionController::Base
  # logger.formatter =
  #   proc do |severity, time, progname, msg|
  #     "--> #{time}, #{severity}: #{msg} from #{progname} \n"
  #   end
  logger.formatter = CustomLogger::LogInJson
  Rails.logger.info 'Check out this info! ApplicationController'
  Rails.logger.info Rails.application.credentials.test_key
  Rails.logger.info Rails.application.credentials.nested_keys[:child_key]
end
