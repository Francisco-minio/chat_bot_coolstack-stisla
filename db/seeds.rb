# crear relaciones entre tablas

# Establecimiento
establecimientos = ["Colegio Ejercito de Salvacion", "Tecnico Naciones Unidas"]
rbds = ['7704-6', '7705-7']#falta definicion
direccions = ['Avenida siempre viva 666','Avenida siempre viva 742']#falta definicion
telefonos = ['79251341','69251541']#falta definicion
emails = ['contacto@correo.cl','contacto2@correo.cl']#falta definicion

(0...rbds.length).each do |i|
    Establecimiento.create(nombre: establecimientos[i], ciudad: 'Puerto Montt', rbd: rbds[i],
         direccion:direccions[i], telefono: telefonos[i], email: emails[i])
end

#Roles
roles = ['Superadmin', 'Soporte', 'Admin', 'Directivo', 'Usuario']

roles.each do |rol|
    Role.create(rol: rol)
end

# Usuarios

Usuario.create(nombre:"Cristobal" , apellido:"Fernandez", email:"cristobal.fernandez@correo.cl", password:"admin123", role: Role.find(1)) 
Usuario.create(nombre:"Adrian" , apellido:"Calcumil" , email:"adrian.calcumil@correo.cl", password:"admin123", role: Role.find(2)) 
Usuario.create(nombre:"Francisco" , apellido:"Minio" , email:"francisco.minio@correo.cl", password:"admin123", role: Role.find(3)) 
Usuario.create(nombre:"Carlos" , apellido:"Saquel" , email:"carlos.saquel@correo.cl", password:"admin123", role: Role.find(4)) 
Usuario.create(nombre:"Chat" , apellido:"Bot" , email:"info.bot@correo.cl", password:"admin123", role: Role.find(5)) 

# Usuarios-Establecimientos
# Superadministrador
Registro.create(usuario: Usuario.find(1), establecimiento: Establecimiento.find(1)) 
Registro.create(usuario: Usuario.find(1), establecimiento: Establecimiento.find(2))
# Soporte
Registro.create(usuario: Usuario.find(2), establecimiento: Establecimiento.find(1)) 
Registro.create(usuario: Usuario.find(2), establecimiento: Establecimiento.find(2))
# Administrador
Registro.create(usuario: Usuario.find(3), establecimiento: Establecimiento.find(1))
# Directivo
Registro.create(usuario: Usuario.find(4), establecimiento: Establecimiento.find(1))
# Usuario
Registro.create(usuario: Usuario.find(5), establecimiento: Establecimiento.find(1))


# Horarios
horarios = ['00:00'] #definir
horarios.each do |h|
    Horario.create(horario: h)
end


# Profesores
# Los correos no se deben repetir, modificar en el modelo
apellido = [
    'González',
    'Muñoz',
    'Rojas',
    'Díaz',
    'Pérez',
    'Soto',
    'Contreras',
    'Silva',
    'Martínez',
    'Sepúlveda',
    'Morales',
    'Rodríguez',
    'López',
    'Fuentes',
    'Hernández'
]

nombre = ['Mateo',
    'Isabella',
    'Sofía',
    'Agustina',
    'Agustín',
    'Santiago',
    'Emilia',
    'Tomás',
    'Benjamín',
    'Lucas',
    'Josefa',
    'Isidora',
    'Emma',
    'Trinidad',
    'Gaspar'
]

(1..10).each do |i|
    nombre_ = nombre[rand(0...nombre.length)]
    apellido_ = apellido[rand(0...apellido.length)]
    email_ = nombre_.to_s.downcase.gsub('ñ', 'n').parameterize + "." + apellido_.to_s.downcase.gsub('ñ', 'n').parameterize + "@correo.cl"
    Profesor.create(nombre: nombre_, apellido: apellido_, email:email_, horario: Horario.find(1))# depende de la definicion de horario
end

# Relacion Colegio Profesor
Regprofesor.create(profesor:Profesor.find(1), establecimiento:Establecimiento.find(1))
Regprofesor.create(profesor:Profesor.find(2), establecimiento:Establecimiento.find(1))
Regprofesor.create(profesor:Profesor.find(3), establecimiento:Establecimiento.find(1))
Regprofesor.create(profesor:Profesor.find(4), establecimiento:Establecimiento.find(1))
Regprofesor.create(profesor:Profesor.find(5), establecimiento:Establecimiento.find(1))
Regprofesor.create(profesor:Profesor.find(1), establecimiento:Establecimiento.find(2))
Regprofesor.create(profesor:Profesor.find(2), establecimiento:Establecimiento.find(2))
Regprofesor.create(profesor:Profesor.find(3), establecimiento:Establecimiento.find(2))
Regprofesor.create(profesor:Profesor.find(4), establecimiento:Establecimiento.find(2))
Regprofesor.create(profesor:Profesor.find(5), establecimiento:Establecimiento.find(2))


# Asignaturas
asignaturas = ["Lenguaje", "Matematica", "Ciencias Naturales", "Historia", "Ingles", "Ed. Fisica", "Artes Visuales", "Musica", "Religion"]

(1..asignaturas.length).each do |i|
    Asignatura.create(nombre: asignaturas[i])
end
# Relacion Asignatura Establecimiento
Regasignatura.create(asignatura:Asignatura.find(1), establecimiento:Establecimiento.find(1))
Regasignatura.create(asignatura:Asignatura.find(2), establecimiento:Establecimiento.find(1))
Regasignatura.create(asignatura:Asignatura.find(3), establecimiento:Establecimiento.find(1))
Regasignatura.create(asignatura:Asignatura.find(4), establecimiento:Establecimiento.find(1))
Regasignatura.create(asignatura:Asignatura.find(5), establecimiento:Establecimiento.find(1))
Regasignatura.create(asignatura:Asignatura.find(6), establecimiento:Establecimiento.find(1))
Regasignatura.create(asignatura:Asignatura.find(7), establecimiento:Establecimiento.find(1))
Regasignatura.create(asignatura:Asignatura.find(1), establecimiento:Establecimiento.find(2))
Regasignatura.create(asignatura:Asignatura.find(2), establecimiento:Establecimiento.find(2))
Regasignatura.create(asignatura:Asignatura.find(3), establecimiento:Establecimiento.find(2))
Regasignatura.create(asignatura:Asignatura.find(4), establecimiento:Establecimiento.find(2))
Regasignatura.create(asignatura:Asignatura.find(5), establecimiento:Establecimiento.find(2))
Regasignatura.create(asignatura:Asignatura.find(6), establecimiento:Establecimiento.find(2))
Regasignatura.create(asignatura:Asignatura.find(7), establecimiento:Establecimiento.find(2))


# Relacion Asignatura Profesor
Asignaturaprofesor.create(profesor:Profesor.first, asignatura:Asignatura.first)
Asignaturaprofesor.create(profesor:Profesor.second, asignatura:Asignatura.second)
Asignaturaprofesor.create(profesor:Profesor.third, asignatura:Asignatura.third)


# Curso
numero = ["Pre-Kinder", "Kinder", "1", "2", "3", "4", "5", "6", "7", "8"]
letra = ("A".."Z")
nivel = ["Pre-Basica", "Basica", "Media"]
jornada = ["Mañana", "Tarde", "Completa"]

nivel.each do |n|
    if n=="Pre-Basica"
        numero[0..1].each do |num|
            letra.each do |l|
                Curso.create(numero:num , letra:l ,nivel:n, jornada:jornada[0])
            end
        end
    end
    if n=="Basica"
        numero[2...numero.length].each do |num|
            letra.each do |l|
                Curso.create(numero:num , letra:l ,nivel:n, jornada:jornada[1])
            end
        end
    end
    if n=="Media"
        numero[2..5].each do |num|
            letra.each do |l|
                Curso.create(numero:num , letra:l ,nivel:n, jornada:jornada[2])
            end
        end
    end
end

# Relacion Establecimiento Curso
Regcurso.create(establecimiento:Establecimiento.find(1), curso:Curso.find(1))
Regcurso.create(establecimiento:Establecimiento.find(2), curso:Curso.find(5))
Regcurso.create(establecimiento:Establecimiento.find(1), curso:Curso.find(10))

# Relacion Asignatura Curso
Asignaturacurso.create(asignatura:Asignatura.find(1), curso:Curso.find(1))
Asignaturacurso.create(asignatura:Asignatura.find(2), curso:Curso.find(5))
Asignaturacurso.create(asignatura:Asignatura.find(1), curso:Curso.find(10))

# Relacion Profesor Curso
Cursoprofesor.create(profesor:Profesor.find(1), curso:Curso.find(1))
Cursoprofesor.create(profesor:Profesor.find(2), curso:Curso.find(5))
Cursoprofesor.create(profesor:Profesor.find(1), curso:Curso.find(10))
