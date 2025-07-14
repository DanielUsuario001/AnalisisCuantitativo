
# Analisis Cuantitativo para la Toma de Decisiones
# EX2 2024.2 

# Pregunta 2: Regresión Logística (5 puntos)
# Una determinada empresa lanza una aplicación de entrega de alimentos con la cual desea predecir
# la probabilidad de que un cliente realice un pedido en el próximo mes.
# El archivo pedidos_alimentos.csv contiene información de 1000 usuarios y las siguientes variables:
#   - pedidos_mes: Número promedio de pedidos por mes realizados en el último año.
#   - monto_promedio: Monto promedio de cada pedido (en dólares).
#   - tiempo_respuesta: Tiempo promedio (en minutos) en que la app procesa los pedidos del cliente.
#   - region: Región donde vive el usuario, categorizada en "Norte", "Sur" y "Centro".
#   - suscripcion: Indica si el usuario tiene o no una suscripción premium a la app ("Sí" o "No").
#   - pedido_realizado: Variable objetivo (1 si realizó un pedido el último mes, 0 en caso contrario).

# a) (0.5 puntos) Ajuste un modelo de regresión logística (completo) para estimar la probabilidad 
# de que un usuario realice un pedido.


# b) (1.0 puntos) Evaluar la significancia global del modelo utilizando un nivel de significancia
# de 0.05 (1 punto)

# c) (1.0 puntos) Indique si las variables pedidos_mes y region contribuyen de manera significativa
# al modelo, utilizando un nivel de significancia de 0.05. En caso sea necesario utilice el test de
# razón de verosimilitud para evaluar la significancia de la variable región.

# d) (1.0 puntos) Interpretar los coeficientes estimados para las variables suscripción y
# tiempo_respuesta.

# e) (0.5 puntos) Evalúe si el modelo señalado presenta un buen ajuste con un nivel de significancia
# de 0.05, utilizando la prueba de Hosmer y Lemeshow.

# f) (1.0 puntos) Hallar una matriz de confusión utilizando un punto de corte de 0.5. Calcule e 
# interprete los resultados obtenidos para la sensibilidad y especificidad.



