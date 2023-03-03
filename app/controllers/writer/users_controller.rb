module Writer
  class UsersController < WriterController
    before_action :set_user, only: %i[ show edit update destroy ]

    def index
      @users = User.all
    end

    def show
    end

    def new
      @user = User.new
    end

    def edit
    end

    def create
      @user = User.new(writer_user_params)

      respond_to do |format|
        if @user.save
          format.html { redirect_to writer_user_url(@user), notice: "User was successfully created." }
          format.json { render :show, status: :created, location: @user }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    end

    def update
      respond_to do |format|
        if @user.update(writer_user_params)
          format.html { redirect_to writer_user_url(@user), notice: "User was successfully updated." }
          format.json { render :show, status: :ok, location: @user }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @user.destroy

      respond_to do |format|
        format.html { redirect_to writer_users_url, notice: "User was successfully destroyed." }
        format.json { head :no_content }
      end
    end

    private
      def set_user
        @user = User.find(params[:id])
      end

      def writer_user_params
        params.require(:user).permit(:name)
      end
  end
end