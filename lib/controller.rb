require 'gossip'

# We create a class that inherits from the Sinatra::Base class
class ApplicationController < Sinatra::Base

    get '/' do
        erb :index, locals: { gossips: Gossip.all }
    end

    get '/gossips/new/' do
        erb :new_gossip
    end

    get '/gossips/:id' do
        gossip_id = params['id']
        puts "You are in the gossip #{gossip_id}!"
    end

    post '/gossips/new/' do
       Gossip.new(params["gossip_author"], params["gossip_content"]).save
        redirect '/'
    end

end