class PostsController < ApplicationController

	#creamos la accion new
	def new
		@post=Post.new()
	end

	#creamos la accion CREATE
	def create
	#render text: params[:post].inspect
	#end
		@post=Post.new(post_params)

		@post.save
		redirect_to @post
	end

	def show
		@post=Post.find(params[:id])
	end

	def index
		@posts=Post.all
	end

	private
		def post_params
			params.require(:post).permit(:title,:text)
		end
	
end
