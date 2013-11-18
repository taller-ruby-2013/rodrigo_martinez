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

		if @post.save
		redirect_to @post
		else
			render "new"
		end
	end

	def edit
		@post=Post.find(params[:id])
	end

	def update
		@post=Post.find(params[:id])

		if @post.update(params[:post].permit(:title,:text))
			redirect_to @post
		else
			render 'edit'
		end
	end

	def destroy
		@post= Post.find(params[:id])
		@post.destroy

		redirect_to posts_path
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
