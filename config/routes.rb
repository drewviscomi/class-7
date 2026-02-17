Rails.application.routes.draw do
  get("/dice", {:controller => "dice", :action => "index"})
  get("/tacos", {:controller => "tacos", :action => "index"})
  get("/cards", {:controller => "cards", :action => "index"})
  get("/bitcoins", {:controller => "bitcoins", :action => "index"})

  resources "companies"
  resources "contacts"

  # If you want ALL posts routes (index/new/create/show/edit/update/destroy):
  # resources "posts"

  # If you only want the lab routes:
  resources :posts, only: [:index, :new, :create, :destroy]
end

