class UsersController < ActionController::Base
  
  def index
    #get all users
    mathing_users = User.all
    @list_of_users = mathing_users.order({ :username => :asc })

    render({ :template => "user_templates/index"})
end
end 
