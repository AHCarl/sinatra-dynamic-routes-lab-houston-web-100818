require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @rn = params[:name]
    "#{@rn.reverse}"
  end
  
  get '/square/:number' do
    @sn = params[:number].to_i
    "#{@sn * @sn}"
  end 
  
  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @ph = params[:phrase]
    "#{@num}" * "#{@ph}"
  end
end