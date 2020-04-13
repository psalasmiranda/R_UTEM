Rails.application.routes.draw do
  resources :evaluacionavisos
  resources :avisos
  resources :encuestadonados
  resources :encuestasolicitantes
  resources :productos
  devise_for :users, controllers: {:confirmations=> 'user/confirmations'}#:registrations => 'user/registrations'//autorizo a que otros usuarios creen otras cuentas
  root to: 'welcome#index'
  get 'ayuda' => 'welcome#ayuda'

    get 'estadistica/donadores' ,to:'welcome#estadistica', as: 'evalua'
    get 'estadistica/solicitante' ,to:'welcome#estadist', as: 'solici'
    get 'estadistica/productos' ,to:'welcome#producto', as: 'pro'
    get 'estadistica/avisos' ,to:'welcome#aviso', as: 'avi'


  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end
  get 'users/index' =>'user#index'
  get "users/index/:id" => "user#show"
  get 'users/index/bloquear/:id',to:'user#bloquear', as: 'bloquear'
  delete 'users/index/eliminar/:id',to:'user#eliminar', as: 'eliminar'
  #post 'users/index/bloquear',to:'user#desbloquear'
  get 'users/index/desbloquear/:id',to:'user#desbloquear', as: 'desbloquear'
  #post 'users/index/desbloquear',to:'user#desbloquear'
  get 'users/permisos' =>'user#permisos'
  get 'configuraciones/plataforma' => 'user#cambio', as: 'cambio'

  get 'users/permisos/administrador/:id',to:'user#administrador', as: 'administrador'
  get 'users/permisos/noadministrador/:id',to:'user#noadministrador', as: 'noadministrador'
  get 'users/estadisticos' => "user#estadisticos", as: 'users_estadisticos'

  post'productos/solicitar/:id',to:'productos#solicitar' , as: 'solicitar'
  get 'avisos/contactar/:id',to:'avisos#contactar' , as: 'contactar'
  post 'productos/reportar/:id',to:'productos#reportar' , as: 'reportar'


  get 'users/inactivos' =>'user#inactivos'
  delete 'users/inactivos/eliminar_inactivo/:id',to:'user#eliminar_inactivo', as: 'eliminar_inactivo'

  #categorias
  get 'productos/categoria/Vehiculos' =>'publicaciones#Vehiculos' , as:'vehiculo'
  get 'productos/categoria/Libros' =>'publicaciones#Libros', as:'libro'
  get 'productos/categoria/MaterialEstudio' =>'publicaciones#MaterialEstudio', as:'material'
  get 'productos/categoria/Vestuario' =>'publicaciones#Vestuario', as:'vestuario'
  get 'productos/categoria/AccesorioBebe' =>'publicaciones#AccesorioBebe', as:'bebe'
  get 'productos/categoria/DeporteFitness' =>'publicaciones#DeporteFitness' , as:'deporte'
  get 'productos/categoria/Oficinas' =>'publicaciones#Oficinas', as:'oficina'
  get 'productos/categoria/Muebles' =>'publicaciones#Muebles', as:'mueble'
  get 'productos/categoria/HogaryElectro' =>'publicaciones#HogaryElectro', as:'hogar'
  get 'productos/categoria/Herramientas' =>'publicaciones#Herramientas', as:'herramienta'
  get 'productos/categoria/ArteyAntiguedad' =>'publicaciones#ArteyAntiguedad' , as:'arte'
  get 'productos/categoria/Jardin' =>'publicaciones#Jardin', as:'jardin'
  get 'productos/categoria/Otros' =>'publicaciones#Otros', as:'otros'
  get 'publicaciones/reportados' => "publicaciones#reportados" , as:'reportados'
  get 'publicaciones/reporte/:id' => "productos#reporte" , as:'reporte'
  get 'publicaciones/estadisticos' => "publicaciones#estadisticos", as: 'abc'
  get 'publicaciones/encuesta/solicitante' => "publicaciones#encuestasolicitante"
  get 'publicaciones/encuesta/aviso' => "publicaciones#encuestaaviso"
  get 'publicaciones/encuesta/donador' => "publicaciones#encuestapedido"
  get 'publicaciones/avisos' => "publicaciones#misavisos", as: 'misavisos'
  get 'publicaciones/contactados' => "publicaciones#contactados", as: 'contactados'


  #rutas de productos

  get 'publicaciones' => 'publicaciones#publicaciones'
  get 'publicaciones/aprobados' => 'publicaciones#aprobados', as:'aprobados'
  get 'publicaciones/rechazados' => 'publicaciones#rechazados', as:'rechazados'
  get 'publicaciones/pendientes' => 'publicaciones#pendientes', as:'pendientes'
  get 'publicaciones/pedidos' => 'publicaciones#pedidos', as:'pedidos'
  get 'publicaciones/solicitados' => 'publicaciones#solicitados', as:'solicitados'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
