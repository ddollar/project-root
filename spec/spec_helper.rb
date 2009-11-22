require "rubygems"

$:.unshift File.join(File.dirname(__FILE__), '..', 'lib')
require "project_root"

Spec::Runner.configure do |config|
  config.mock_with :rr
end
