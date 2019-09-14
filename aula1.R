# Aula 1 - Geração de Amostras

#Importando packages
install.packages("ggplot2")
library(ggplot2)

# Dataframe diamonds
d <- diamonds


#Entrada e Saída de dados
write.csv(d,file="d.csv")
d1 <- read.csv("d.csv")

# Média
mean(d$price)

# Mediana
median(d$price)

# Desvio Padrão
sd(d$price)

# Geração de Amostras
a1 <- d[1:3000,]

mean(a1$price)
median(a1$price)
sd(a1$price)

a2 <- d[3001:6000,]

mean(a2$price)
median(a2$price)
sd(a2$price)

# Geração de números aleatórios
sample(3)

# Definição da semente de aleatoridade
# Exemplo: semente é o 33
set.seed(33)
sample(3)

set.seed(33)
va <- sample(53940)

# Geração da amostra aleatória | Tem que comparar com os resultados pois não garante que o dataset seja inviezado
a3 <- d[va[1:3000],]
mean(a3$price)
median(a3$price)
sd(a3$price)

# Histograma
hist(d$price)

#visualização de 4 gráficos
par(mfrow=c(2,2))

#comparativo lado a lado
hist(d$price)
hist(a1$price)
hist(a2$price)
hist(a3$price)


# Descrição de uma amostra
summary(d)
summary(a3)




