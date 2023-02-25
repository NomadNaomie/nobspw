require "nobspw_rails7/version"

module NOBSPW_RAILS7
  autoload :PasswordChecker, 'nobspw_rails7/password_checker'
  autoload :ValidationMethods, 'nobspw_rails7/validation_methods'
  autoload :Configuration, 'nobspw_rails7/configuration'

  if (defined?(::ActiveModel) && ActiveModel::VERSION::MAJOR >= 4) && defined?(I18n)
    require_relative 'active_model/validations/password_validator'
  end

  class << self
    attr_writer :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  def self.configuration
    @configuration ||= Configuration.new
  end
end
