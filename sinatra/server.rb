# require 'sinatra'
#
# get '/hi' do
#  "Hello World!"
#  end


# server.rb
require 'sinatra'

set :bind, '0.0.0.0'
enable :sessions
set :session_secret, 'SecretString#!$%'

$count = 0

get '/' do
  @mensaje = 'Hola todos'
  @colors = ['red', 'green', 'blue', 'black', 'white', 'yellow', 'cyan', 'magenta']
  session[:count] ||= 0
  session[:count] += 1
  @count = session[:count]
  $count += 1
  @global_count = $count
  erb :index
end

get '/hello/:name' do
  # matches "GET /hello/foo" and "GET /hello/bar"
  # params['name'] is 'foo' or 'bar'
  "Hello #{params['name']}!"
end
