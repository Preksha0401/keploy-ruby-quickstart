require 'sinatra'
require 'json'

todos = []

get '/' do
  content_type :json
  { message: "Hello from Ruby + Keploy" }.to_json
end

post '/todos' do
  content_type :json
  data = JSON.parse(request.body.read)
  todos << data
  { status: "added", todos: todos }.to_json
end

get '/todos' do
  content_type :json
  todos.to_json
end

set :bind, '0.0.0.0'
set :port, 4567
