Rails.application.routes.draw do
  resources :school_classes, except: [:destroy, :index]
  resources :students, except: [:destroy, :index]
  #get '/school_classes' => 'school_classes#index'

end
