Rails.application.routes.draw do
  resources :exams

  devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  resources :staffs
  get 'events/index'
resources :teachers,:subjects,:students,:departments,:holidays,:librarys,:staffs,:dashboards

  get '/holidays/index'
  get '/librarys/index'
  get '/staffs/index'
  get '/teachers/index'
  get '/subjects/index'
  get '/students/index'
  get '/departments/index'
  get '/exams/class_1'
  post 'exams/class_1'
  post 'exams/class_2'
  post 'exams/class_3'
  post 'exams/class_4'
  post 'exams/class_5'
  post 'exams/class_6'
  post 'exams/class_7'
  post 'exams/class_8'
  post 'exams/nus1'
  post 'exams/nus2'
  post 'exams/nus3'
  get '/dashboards/index', to: 'dashboards#index'
  get '/events/index', to: 'events#index'
  get '/about', to: 'dashboards#about'
   root :controller => 'dashboards', :action => 'index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
