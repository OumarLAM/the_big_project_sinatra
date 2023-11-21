require 'bundler'
require 'puma'

Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)

require 'controller'

set :server, 'puma'

run ApplicationController