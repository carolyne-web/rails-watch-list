Rails.application.routes.draw do
  root to: "lists#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
resources :lists, only: [:index, :show, :new, :create] do
  resources :bookmarks, only: [:new, :create]
end
resources :bookmarks, only: [:destroy]
end

# As a user, I can see all my movie lists
# As a user, I can create a movie list
# As a user, I can see the details of a movie list
# As a user, I can bookmark a movie inside a movie list
# As a user, I can destroy a bookmark
