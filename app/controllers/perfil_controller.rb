class PerfilController < ApplicationController

	def index
		if params[:username]
      		@user = User.where(:username => params[:username]).first
		end
	end

end