
# Carregar dados ----------------------------------------------------------

data("iris")
tibble::as_tibble(iris)

# Pacotes -----------------------------------------------------------------

library(ggplot2)
install.packages("wesanderson")
library(wesanderson)

# Gráfico -----------------------------------------------------------------

ggplot(iris, aes(x = Petal.Length, y = Sepal.Length, col = Species)) +
  geom_point(size = 3) +
  geom_smooth(method = 'lm') +
  scale_color_manual(values = wes_palette("GrandBudapest1", n = 3),
                     name = "Espécies",
                     labels = c("Setosa", "Versicolor", "Virginica")) +
  labs(x = "Comprimento de Pétalas (cm)", y = "Comprimento de Sépalas (cm)",
       title = "Medidas de 50 flores de espécies de Iris") +
  theme(axis.ticks = element_line(size = 4.2, colour = "red", linetype = 1),
                                  axis.text = element_text(size = 12),
        axis.line = element_blank(),
        axis.title = element_text(size = 13),
        legend.text = element_text(size = 12),
        legend.title = element_text(size = 13),
        legend.position = c(0.94, 0.1),
        legend.background = element_blank())
  
  
