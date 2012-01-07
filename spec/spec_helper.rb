# -- coding: utf-8

ENV["RACK_ENV"] = "test"
require "#{File.dirname(__FILE__)}/../app.rb"
require "capybara"
require "capybara/rspec"
require "capybara/session"
require "capybara/webkit"
require "rack/test"

set :run, false

RSpec.configure do |conf|
  conf.include Capybara::DSL

  Capybara.app = Sinatra::Application
  Capybara.javascript_driver = :webkit
end
