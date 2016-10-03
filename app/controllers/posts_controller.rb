class PostsController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]
	before_action :log_impression, :only=> [:show]
	before_action :set_search

	def index
		if params[:tag]
			@posts =  Post.tagged_with(params[:tag].strip).paginate(page: params[:page], per_page: 5)
		elsif params[:q]
	  	@posts = @q.result(distinct: true).paginate(page: params[:page], per_page: 5)
		else
			@posts = Post.all.order("created_at desc").paginate(page: params[:page], per_page: 5)
		end
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new post_params
		if @post.save
			redirect_to @post, notice: "Post was successfully created !!!"
		else
			render 'new', notice: "Some thing wrong !!!"
		end
	end

	def show
		@comment =  Comment.new({post: @post})
	end

	def edit
	end

	def update
		if @post.update post_params
			redirect_to @post, notice: "Huzzah! Your article was successfully saved!"
		else
			render 'edit'
		end
	end

	def destroy
		@post.destroy
		redirect_to posts_path
	end

	private

	def post_params
		params.require(:post).permit(:title, :content, :slug, :all_tags)
	end

	def find_post
		@post = Post.friendly.find(params[:id])
	end

	def log_impression
	  @post = Post.friendly.find(params[:id])
	  @post.impressions.create(ip_address: request.remote_ip)
	end


end
