require "bundler/setup"
require "pry"
require "simplecov"
require 'active_model'
require 'i18n'
require "nobspw_rails7"

SimpleCov.start do
  coverage_dir 'spec/reports'
end

RSpec.configure do |config|
  config.example_status_persistence_file_path = "spec/examples.txt"
  config.filter_run_when_matching :focus
  config.disable_monkey_patching!
  config.order = :random
  Kernel.srand config.seed

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.before(:each) do
    NOBSPW_RAILS7.configure do |config|
      config.use_ruby_grep = true
    end
  end

  config.after(:each) do
    NOBSPW_RAILS7.configuration = nil
  end
end
