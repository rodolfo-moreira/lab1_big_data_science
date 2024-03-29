# Aula 1 - Gera��o de Amostras

#Importando packages
install.packages("ggplot2")
library(ggplot2)

# Dataframe diamonds
d <- diamonds


#Entrada e Sa�da de dados
write.csv(d,file="d.csv")
d1 <- read.csv("d.csv")

# M�dia
mean(d$price)

# Mediana
median(d$price)

# Desvio Padr�o
sd(d$price)

# Gera��o de Amostras
a1 <- d[1:3000,]

mean(a1$price)
median(a1$price)
sd(a1$price)

a2 <- d[3001:6000,]

mean(a2$price)
median(a2$price)
sd(a2$price)

# Gera��o de n�meros aleat�rios
sample(3)

# Defini��o da semente de aleatoridade
# Exemplo: semente � o 33
set.seed(33)
sample(3)

set.seed(33)
va <- sample(53940)

# Gera��o da amostra aleat�ria | Tem que comparar com os resultados pois n�o garante que o dataset seja inviezado
a3 <- d[va[1:3000],]
mean(a3$price)
median(a3$price)
sd(a3$price)

# Histograma
hist(d$price)

# visualiza��o de 4 gr�ficos
par(mfrow=c(2,2))

# comparativo lado a lado
hist(d$price)
hist(a1$price)
hist(a2$price)
hist(a3$price)


# Descri��o de uma amostra
summary(d)
summary(a3)


par(mfrow=c(1,1))

# Boxplot
boxplot(d$price)
boxplot(d$price~d$cut)
boxplot(d$price~d$color)

# Gr�fico de dispers�o scaterplot
m <- mtcars

plot(m$mpg~m$wt)

# Coeficiente de correla��o linear
# (pearson) | Pesquisar por correlation packages
# Verificar qual as variaveis para separar para realizar uma causa
cor(m$mpg, m$wt)
cor(m)

#Exerc�cio
install.packages("swirl")
library(swirl)
#apaga na memoria todas as variaveis rm(list=ls())
swirl()



