class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render plain: User.all.map { |u| u.to_s }.join("\n")
  end

  def show
    id = params[:id]
    user = User.find(id)
    render plain: user.to_s
  end

  def create
    name = params[:name]
    email = params[:email]
    password = params[:password]
    new_user = User.create!(
      name: name,
      email: email,
      password: password,
    )
    response_text = "Hey your new user is created with the id #{new_user.id}"
    render plain: response_text
  end

  def login
    render plain: User.where("email = ? and password = ?", params[:email], params[:password]).exists?
  end

  def update
    id = params[:id]
    email = params[:email]
    user = User.find(id)
    user.email = email
    user.save!
    render plain: "Updated User email status to #{email}"
  end
end
