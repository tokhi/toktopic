Toktopic::Application.routes.draw do
   


  resources :semesters do
    resources :courses do
      resources :projects
    end
    resources :theses
  end

  resources :events


  #resources :topics
  #resources :events

  ##

#  resources :events do
 # resources :topics do
  #  collection do 
   #   get :list_topics
   # end
  #end
 #end
  #match '/events/:id/topics', :controller => 'events', :action => 'topics'


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end
