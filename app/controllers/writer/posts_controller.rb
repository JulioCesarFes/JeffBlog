module Writer
  class PostsController < WriterController
    layout 'writer'

    before_action :set_post, only: %i[ show edit update destroy ]
    before_action :set_users, only: %i[ new create edit update ]
    before_action :set_categories, only: %i[ new create edit update ]

    def index
      @posts = Post.all
    end

    def show; end

    def new
      @post = Post.new
    end

    def edit; end

    def create
      @post = Post.new(post_params)

      respond_to do |format|
        if @post.save
          format.html { redirect_to writer_post_url(@post), notice: "Post was successfully created." }
          format.json { render :show, status: :created, location: @post }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @post.errors, status: :unprocessable_entity }
        end
      end
    end

    def update
      respond_to do |format|
        if @post.update(post_params)
          format.html { redirect_to writer_post_url(@post), notice: "Post was successfully updated." }
          format.json { render :show, status: :ok, location: @post }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @post.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @post.destroy

      respond_to do |format|
        format.html { redirect_to writer_posts_url, notice: "Post was successfully destroyed." }
        format.json { head :no_content }
      end
    end

    private
      def set_post
        @post = Post.find(params[:id])
      end

      def set_users
        @users = User.all
      end

      def set_categories
        @categories = Category.all
      end

      def post_params
        params.require(:post).permit(:title, :user_id, :category_id)
      end
  end
end