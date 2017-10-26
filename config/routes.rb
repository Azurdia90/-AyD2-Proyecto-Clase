Rails.application.routes.draw do
  
  #Estableciendo como pagina de inicio
  root 'welcome#index'
  
  #Metodos para el login
  get '/register', to: 'welcome#register'

  get '/help', to: 'welcome#help'

  get '/about', to: 'welcome#about'

  get '/contact', to: 'welcome#contact'

  get '/login', to: 'welcome#new'

  post '/login', to: 'welcome#create'

  delete '/logout', to: 'welcome#delete'

  #Metodos de favio
  get 'boton/btn'

  get 'formularios/por_get'

  get 'formularios/por_post'

  post "boton/btn" => "boton#btn"
  
  post "boton/imprimir" => "boton#imprimir"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
