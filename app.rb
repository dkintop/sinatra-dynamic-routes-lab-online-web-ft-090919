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
    binding.pry
  end
end