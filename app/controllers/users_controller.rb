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
end 
