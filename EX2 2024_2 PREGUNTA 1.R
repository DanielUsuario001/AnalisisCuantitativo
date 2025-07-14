
# Analisis Cuantitativo para la Toma de Decisiones
# EX2 2024.2 

# Pregunta 1: Series de tiempo (3 puntos)
# Un supermercado que promueve productos orgánicos está monitoreando la demanda diaria de estos 
# productos durante los últimos 301 días. 
# Inicialmente, la demanda estaba alrededor de las 100 unidades diarias, pero se sospecha que ha 
# disminuido debido a factores como la competencia de otros supermercados y el incremento en los 
# precios.

# Dentro del archivo “ventaDiaria.csv” se encuentra las unidades vendidas en los últimos 301 días,
# y presenta la siguiente estructura:
#   - dia: día de la venta (correlativo)
#   - ventas: ventas para cada día

# a) (0.5 puntos) Grafique la serie de tiempo para la venta a lo largo de cada día. Indique si 
# presenta alguna tendencia y de qué tipo.

data <- read.csv(file.choose())

plot(data, type="o")

head(data)

# b) (0.5 puntos) Utilizando la función diff grafique la serie de tiempo para la venta a lo largo 
# de cada día, diferenciada en un periodo. Indique si presenta alguna tendencia y de qué tipo.

y=diff(data$ventas,1) # crea la variable = X_t – X_{t-1}
plot(y,type="o") 

# c) (0.5 puntos) Grafique un correlograma para la venta a lo largo de cada día (serie sin aplicar
# la función diff) y justifique si es factible utilizar un modelo autoregresivo de primer orden
# sobre dicha serie.

acf(data$ventas, xlim=c(1,24))

# d) (0.5 puntos) Grafique un correlograma para la serie de tiempo de la venta diferenciada en un 
# periodo y justifique si es factible utilizar un modelo autoregresivo de primer orden sobre dicha
# serie.

acf(y,xlim=c(1,24))  # correlograma con los primeros 24 lags

# e) (1.0 punto) Plantee un modelo autoregresivo de primer orden para la serie de tiempo 
# diferenciada en un periodo, estime los coeficientes del modelo y realice la estimación de la 
# venta en el día 302.

ny = length(y)
yy = y[-1]      # serie original - última observación
ym = y[-ny]      # serie rezagada: serie original - primera observación
summary(lm(yy~ym))

###

ar(y,
   method = "ols",  # mínimos cuadrados
   order.max=1,     # Autoregresivo de orden 1
   demean = FALSE,  # Que estime con los datos originales
   intercept=TRUE)  # Con intercepto (media en una serie de tiempo)

# Donde:
# Yt = -0.02998-0.4233*Yt-1

c = -0.02998
phi = -0.4233

mediaAR1 = c/(1-phi)
mediaAR1

# mediaAR1 = -0.02106373

#Sabemos que hay 301 dias

st1<-ar(y,method = "ols",order.max=1,demean = FALSE,intercept=TRUE)
predict(st1,         # serie estimada  
        n.ahead=2)   # horizonte

yt1<-st1$x.intercept+st1$ar[1]*y[ny]
yt1 # Dia 301+1 = 302

nx = length(data$ventas)
xt1<-yt1+data$ventas[nx]
xt1 # Dia 301+1 = 302







