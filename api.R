library(plumber)

#* @apiTitle API Corte de Luces
#* @apiDescription API para uso en campo – Corte de luces

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

# ==============================
# 🚀 ARRANQUE DE LA API
# ==============================
pr <- plumb("api.R")

pr$run(
  host = "0.0.0.0",
  port = as.numeric(Sys.getenv("PORT", "8000"))
)



