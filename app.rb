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
  
end