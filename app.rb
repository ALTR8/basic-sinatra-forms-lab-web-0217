require 'sinatra/base'

class App < Sinatra::Base

	get '/newteam' do
		erb :newteam
	end

	post '/team' do
		@teamname = params[:name]
		@coach = params[:coach]
		@pointguard = params[:pg]
		@shootingguard = params[:sg]
		@smallforward = params[:sf]
		@powerforward = params[:pf]
		@center = params[:c]
		erc :team
	end



end
