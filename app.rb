require_relative 'config/environment'
require 'pry'

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
    @ph = params[:phrase] + " "
    @result = []
    @num.times {@result << @ph}
    @result.join
  end
  
  get 'say/:word1/:word2/:word3/:word4/:word5' do 
    
  end
end