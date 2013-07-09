require 'sinatra'
require 'sinatra/reloader'
guess = ""

secret_num = (1 + rand(99))

get "/" do 
	guess = params["guess!"].to_i
	erb :index, :locals => {:number => secret_num, :guess => guess}
end 