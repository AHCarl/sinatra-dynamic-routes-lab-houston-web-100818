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
  
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @return = []
    params.each do |key, value|
      @return << value
    end
    "#{@return.join(' ')}."
  end
  
  get '/:operation/:number1/:number2' do 
    @op = params[:operation]
    @num1 = params[:number1].to_i 
    @num2 = params[:number2].to_i 
    if @op == "add" 
      "#{@num1 + @num2}"
    elsif @op == "subtract"
      "#{@num1 - @num2}"
    elsif @op == "multiply"
      "#{@num1 * @num2}"
    elsif @op == "divide" 
      "#{@num1 / @num2}"
    end
  end
  
end