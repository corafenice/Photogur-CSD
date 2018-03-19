
class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new user_params
    return render action: "new" unless @user.save
    redirect_to root_path, notice: "Created user"
  end

  private
  def user_params
    params.
      require(:user).
      permit(:username,
             :password,
             :password_confirmation)
  end
end














# class UsersController < ApplicationController
#   before_action :set_user, only: [:show, :edit, :update, :destroy]
#
#   # GET /pictures
#   # GET /pictures.json
#   def index
#
#   end
#
#   # GET /pictures/1
#   # GET /pictures/1.json
#   def show
#   end
#
#   # GET /pictures/new
#   def new
#     @user = User.new
#   end
#
#   # GET /pictures/1/edit
#   def edit
#   end
#
#   # POST /pictures
#   # POST /pictures.json
#   def create
#     @user = User.new(user_params)
#
#     respond_to do |format|
#       if @user.save
#         format.html { redirect_to @user, notice: 'Picture was successfully created.' }
#         format.json { render :show, status: :created, location: @user }
#       else
#         format.html { render :new }
#         format.json { render json: @user.errors, status: :unprocessable_entity }
#       end
#     end
#   end
#
#   # PATCH/PUT /pictures/1
#   # PATCH/PUT /pictures/1.json
#   def update
#     respond_to do |format|
#       if @user.update(picture_params)
#         format.html { redirect_to @user, notice: 'Picture was successfully updated.' }
#         format.json { render :show, status: :ok, location: @user }
#       else
#         format.html { render :edit }
#         format.json { render json: @user.errors, status: :unprocessable_entity }
#       end
#     end
#   end
#
#   # DELETE /pictures/1
#   # DELETE /pictures/1.json
#   def destroy
#     @user.destroy
#     respond_to do |format|
#       format.html { redirect_to pictures_url, notice: 'Picture was successfully destroyed.' }
#       format.json { head :no_content }
#     end
#   end
#   private
#     def user_params
#       params.
#         require(:user).
#         permit(:username,
#                :password,
#                :password_confirmation)
#     end
#   # private
#   #   # Use callbacks to share common setup or constraints between actions.
#   #   def set_picture
#   #     @picture = Picture.find(params[:id])
#   #   end
#   #
#   #   # Never trust parameters from the scary internet, only allow the white list through.
#   #   def picture_params
#   #     params.require(:picture).permit(:title, :url)
#   #   end
# end
