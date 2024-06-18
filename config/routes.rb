Rails.application.routes.draw do
  get("/", { :controller => "pages", :action => "home" })
  get("/users", { :controller => "users", :action => "index" })
  

end

