class UsersController < ApplicationController
  respond_to :json, :html
	before_filter :authenticate_user!
  
  def index
   	@users = User.all
   	respond_with(@user)
  end

  def show
    @user = User.find(params[:id])
    respond_with_bip(@user)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'user was successfully updated.' }
        format.json { respond_with_bip(@user) }
      else
        format.html { render action: "edit" }
        format.json { respond_with_bip(@user) }
      end
    end
  end

def destroy
    @user = User.find(params[:id])
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :ok }
    end
  end
 
end
