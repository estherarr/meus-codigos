setwd("C:/Users/Esther/Desktop/FASE02CAP06")

dados <- read.csv("dados_producao_animal.csv")

print(dados)

# somar quantidade por tipo de animal
quantidade_por_tipo <- aggregate(quantidade ~ tipo_animal, data = dados, sum)

# somar produção total por tipo de animal
producao_por_tipo <- aggregate(rendimento_total ~ tipo_animal, data = dados, sum)

par(mfrow = c(1, 2))

barplot(
  quantidade_por_tipo$quantidade,
  names.arg = quantidade_por_tipo$tipo_animal,
  col = "lightblue",
  main = "Quantidade de Animais por Tipo",
  ylab = "Quantidade",
  xlab = "Tipo de Animal"
)

barplot(
  producao_por_tipo$rendimento_total,
  names.arg = producao_por_tipo$tipo_animal,
  col = "lightgreen",
  main = "Produção Total por Tipo de Animal",
  ylab = "Produção Total",
  xlab = "Tipo de Animal"
)