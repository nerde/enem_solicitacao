require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

require 'bundler/setup'

require 'minitest/autorun'
require 'minitest/pride'
require 'vcr'
require 'dotenv'
Dotenv.load

$:.unshift File.expand_path("../../lib", __FILE__)
require 'enem_solicitacao'

Dir["#{File.dirname(__FILE__)}/support/*.rb"].each { |f| require f }

class MyTest < Minitest::Test
  def setup
    EnemSolicitacao.instance_variable_set(:@session, nil)
    EnemSolicitacao.instance_variable_set(:@gateway, nil)
  end
end
