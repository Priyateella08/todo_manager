class UsersController < ApplicationController
  def index
    render plain: User.all.map { |u| u.to_s }.join("\n")
  end
end
