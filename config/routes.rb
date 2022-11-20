Rails.application.routes.draw do
 
  get '/students/grades', to: 'students#grades'
  get '/students/highest-grade', to: 'students#highest_grade'
  get '/students?name=:name', to: 'students#index'
  resources :students
end
