Rails.application.routes.draw do
  resources :horarios
  resources :usuarios
  resources :roles
  resources :asigcursos
  resources :cursoprofesors
  resources :asigprofesors
  resources :estprofesors
  resources :sadminests
  resources :superadmins
  resources :asig_cursos
  resources :jefaturas
  resources :curso_profesors
  resources :cursos
  resources :asig_profesors
  resources :asignaturas
  resources :est_profesors
  resources :profesors
  resources :super_estabs
  resources :superadminins
  resources :administradors
  resources :establecimientos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
