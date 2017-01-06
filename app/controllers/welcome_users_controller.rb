class WelcomeUsersController < ApplicationController
  # GET /welcome_users
  # GET /welcome_users.json
  def index
    @welcome_users = WelcomeUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @welcome_users }
    end
  end

  # GET /welcome_users/1
  # GET /welcome_users/1.json
  def show
    @welcome_user = WelcomeUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @welcome_user }
    end
  end

  # GET /welcome_users/new
  # GET /welcome_users/new.json
  def new
    @welcome_user = WelcomeUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @welcome_user }
    end
  end

  # GET /welcome_users/1/edit
  def edit
    @welcome_user = WelcomeUser.find(params[:id])
  end

  # POST /welcome_users
  # POST /welcome_users.json
  def create
    @welcome_user = WelcomeUser.new(params[:welcome_user])

    respond_to do |format|
      if @welcome_user.save
        format.html { redirect_to @welcome_user, notice: 'Welcome user was successfully created.' }
        format.json { render json: @welcome_user, status: :created, location: @welcome_user }
      else
        format.html { render action: "new" }
        format.json { render json: @welcome_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /welcome_users/1
  # PUT /welcome_users/1.json
  def update
    @welcome_user = WelcomeUser.find(params[:id])

    respond_to do |format|
      if @welcome_user.update_attributes(params[:welcome_user])
        format.html { redirect_to @welcome_user, notice: 'Welcome user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @welcome_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /welcome_users/1
  # DELETE /welcome_users/1.json
  def destroy
    @welcome_user = WelcomeUser.find(params[:id])
    @welcome_user.destroy

    respond_to do |format|
      format.html { redirect_to welcome_users_url }
      format.json { head :no_content }
    end
  end
end
