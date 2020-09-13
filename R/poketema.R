
#### Desenvolvendo o Poketema

# Tema com fontes grandes

poketema <- function(x){
  theme(
    text = element_text(
      colour = "#003a70",
      family = "Pokemon Solid",
      size = 12
    ),
    plot.title = element_text(
      family = "Pokemon Solid",
      hjust = 0.5,
      size = 18
    ),
    axis.text = element_text(color = "#003a70"),
    axis.ticks.x = element_line(color = "white"),
    panel.background = element_rect(fill = "white"),
    panel.grid.major.y = element_line(size = 0.1),
    panel.grid.minor = element_blank(),
    panel.grid.major.x = element_blank(),
    legend.position = "bottom",
    legend.background = element_rect(fill = "white", color = "white"),
    plot.background = element_rect(fill = "white", color = "white")
  )
}

# Tema com fontes pequenas
poketema2 <- function(x){
  theme(
    text = element_text(
      colour = "#003a70",
      family = "Pokemon Solid",
      size = 6
    ),
    plot.title = element_text(
      family = "Pokemon Solid",
      hjust = 0.5,
      size = 10
    ),
    axis.text = element_text(color = "#003a70"),
    axis.ticks.x = element_line(color = "white"),
    panel.background = element_rect(fill = "white"),
    panel.grid.major.y = element_line(size = 0.1),
    panel.grid.minor = element_blank(),
    panel.grid.major.x = element_blank(),
    legend.position = "bottom",
    legend.background = element_rect(fill = "white", color = "white"),
    plot.background = element_rect(fill = "white", color = "white")
  )
}

# Tema com fonte grande apenas para o título
poketema3 <- function(x){
  theme(
    text = element_text(
      colour = "#003a70",
      family = "Pokemon Solid",
      size = 6
    ),
    plot.title = element_text(
      family = "Pokemon Solid",
      hjust = 0.5,
      size = 18
    ),
    axis.text = element_text(color = "#003a70"),
    axis.ticks.x = element_line(color = "white"),
    panel.background = element_rect(fill = "white"),
    panel.grid.major.y = element_line(size = 0.1),
    panel.grid.minor = element_blank(),
    panel.grid.major.x = element_blank(),
    legend.position = "bottom",
    legend.background = element_rect(fill = "white", color = "white"),
    plot.background = element_rect(fill = "white", color = "white")
  )
}

# criando uma paleta de cores para gráficos em geral e para mostrar os tipos de pokemon

pokecolor <- c("#3d7dca","#633dca","#3dca8b","#a93dca","#caba3d","#ca3d5e","#5cca3d","#736c6a")


pokecolortipo <- c("#736c6a","#3d7dca", "#cc822e", "#caba3d", "#cf2d7c", "#481975", "#d11b1b", "#4cd4cb","#3dca8b","#5cca3d","#deb969",
                   "#e39ccb", "#212120", "#ca3d5e", "#341d4a", "#4f370c", "#a93dca", "#467fab" )

# # To use for fills, add
# bp + scale_fill_manual(values = cbp1)
#
# # To use for line and point colors, add
# sp + scale_colour_manual(values=cbp1)

