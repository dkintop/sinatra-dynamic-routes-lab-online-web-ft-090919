require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!


  get '/reversename/:name' do 
    @name = params[:name]
    @name.reverse 
  end 
  
  get '/square/:number' do 
    @number = params[:number].to_i
    square = @number * @number
    square.to_s
  end 
  
  get '/say/:number/:phrase' do 
    @times = params[:number].to_i 
    @phrase = params[:phrase]
    array = []
    @times.times {array << @phrase}
    array.join
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    "#{word1} " + "#{word2} " + "#{word3} " + "#{word4} " + "#{word5}."
  end
  
  get '/:operation/:number1/:number2' do
  op = params[:operation]
  num1 = params[:number1].to_i
  num2 = params[:number2].to_i
  
    if op == "add"
      (num1 + num2).to_s 
    elsif op == "subtract"
      (num1 - num2).to_s
    elsif op == "multiply"
      (num1 * num2).to_s 
    elsif op == "divide"
      (num1 / num2).to_s
     
    end 
    
  end
end
