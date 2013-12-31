BitlyApp::Application.routes.draw do
  
  resources :urls
  match 'urls/:id' => 'urls#try_url', :as => :try_url

  root :to => 'urls#index'

end
