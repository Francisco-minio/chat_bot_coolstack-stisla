#Crear relaciones entre Superadmin y : Profesor, Asignatura, Curso, Administrador
#Crear rol de soporte en Superadmin

rails g scaffold Establecimiento nombre:string ciudad:string rbd:string direccion:string telefono:string email:string --force
rails g scaffold Role rol:string --force
rails g scaffold Usuario nombre:string apellido:string email:string password:string role:references --force
rails g model Registro usuario:references establecimiento:references --force

rails g scaffold Horario horario:string --force
rails g scaffold Profesor nombre:string apellido:string email:string horario:references --force
rails g model Regprofesor profesor:references establecimiento:references --force

rails g scaffold Asignatura nombre:string --force
rails g model Regasignatura asignatura:references establecimiento:references --force
rails g model Asignaturaprofesor profesor:references asignatura:references --force

rails g scaffold Curso numero:string letra:string nivel:string jornada:string --force
rails g model Regcurso establecimiento:references curso:references --force
rails g model Asignaturacurso curso:references asignatura:references --force
rails g model Cursoprofesor profesor:references curso:references --force

rake db:migrate
