library(plumber)

#* @apiTitle API Corte de Luces

#* Verificar que la API funciona
#* @get /ping
function() {
  list(status = "ok", mensaje = "API funcionando")
}

#* Lista de tareas
#* @get /panel/tareas
function() {
  data.frame(
    id_tarea = 1,
    nombre_bloque = "5",
    codigo_cama = "007B",
    estado = "PENDIENTE"
  )
}

