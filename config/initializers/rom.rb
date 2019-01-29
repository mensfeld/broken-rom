# frozen_string_literal: true

require "dry/types/compat"

host = 'localhost'
port = 5434
db = 'whateverdb'
username = 'user'
password = 'passowrd'

ROM::Rails::Railtie.configure do |config|
  config.gateways[:default] = [
    :sql,
    "postgres://#{host}:#{port}/#{db}",
    username: username,
    password: password
  ]
end
