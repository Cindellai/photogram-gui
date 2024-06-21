class UsersController < ActionController::Base
  
  def index
    #get all users
    mathing_users = User.all
    @list_of_users = mathing_users.order({ :username => :asc })

    render({ :template => "user_templates/index"})
  end

  def show
    url_username = params.fetch("path_username")

    mathing_usernames = User.where({ :username => url_username })

    @the_user = mathing_usernames.first

    render({ :template => "user_templates/show"})
end

  def create
    input_username = params.fetch("query_username")

    new_user = User.new
    new_user.username = input_username
    new_user.save

    redirect_to("/users/#{new_user.username}")
  end

  def update
    user_id = params.fetch("id")
    updated_username = params.fetch("query_username")

    user = User.find(user_id)
    user.username = updated_username
    user.save

    redirect_to("/users/#{user.username}")
  end
end 
