require 'gossip'

# We create a class that inherits from the Sinatra::Base class
class ApplicationController < Sinatra::Base

    get '/' do
        erb :index, locals: { gossips: Gossip.all }
    end

    get '/gossips/new/' do
        erb :new_gossip
    end

    get '/gossips/:id/' do
        puts  "This is the id #{params['id']}!"
        gossip = Gossip.find(params['id'])

        if gossip
            erb :show, locals: { gossip: gossip, id: params['id']}
        else 
            puts "Gossip not found"
        end
    end

    post '/gossips/new/' do
       Gossip.new(params["gossip_author"], params["gossip_content"]).save
        redirect '/'
    end

end