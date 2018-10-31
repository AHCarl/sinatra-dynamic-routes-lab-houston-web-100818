require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @rn = params[:name]
    "#{@rn.reverse}"
  end
end