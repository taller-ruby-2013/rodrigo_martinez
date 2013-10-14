class PostsController < ApplicationController

	#creamos la accion new
	def new
	end

	#creamos la accion CREATE
	def create
	render text: params[:post].inspect
	end
end
