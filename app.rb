require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!


  get '/reversename/:name' do 
    
    @name = params[:name]
    @name.reverse 
    binding.pry
  end 
  
end