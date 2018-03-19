class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.
            find_by(username: params[:username]).
            try(:authenticate, params[:password])

    return render action: "new" unless @user

    #Logged in, Hooray
    session[:user_id] = @user.id
<<<<<<< HEAD
    redirect_to notes_path
=======
    redirect_to pictures_path
>>>>>>> merge-with-pk
  end
end
