#pacotes

list.of.packages <- c("tidyverse", "png", "ggrepel", "plotly", "gridExtra", "ggimage","kableExtra")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)

#carrega tidyverse

library(tidyverse)
library(png)
library(ggrepel)
library(plotly)
library(gridExtra)
library(ggimage)
library(kableExtra)

# carrega o banco de dados
pkmn <- readr::read_rds("~/Documents/Git/AnalisePokemon/Data/pokemon.rds") # Atenção este caminho deve ser específico do seu computador para evitar bugs no .rmd

# transforma a informação de geração em factor para facilitar manipulação nos gráficos
pkmn$id_geracao <- factor(pkmn$id_geracao, c("1","2","3","4","5","6","7"))

# Cria score geral dos pokemons
pkmn <- pkmn %>% mutate(score_geral = ataque + defesa + hp)

# filtra top 3 pokemons por categoria

lista_tipo <- unique(pkmn$tipo_1)

pkmn_fortes <- data.frame()

for(i in 1:length(lista_tipo)){
 x <- pkmn %>%
   filter(id_geracao != 'NA') %>%
   group_by(tipo_1) %>%
   arrange(desc(score_geral), .by_group = TRUE) %>%
   filter(tipo_1 == lista_tipo[i]) %>%
   head(n=3)
 pkmn_fortes <- bind_rows(pkmn_fortes, x)
 }

# tratando pokemons sprites faltando
# Selecionando os sprites que estão faltando para download manual na pasta "Data/Missing Sprites"
# pkmn_fortes %>% filter(str_detect(pkmn_fortes$url_imagem,"NA")) %>% select(pokemon)

# Atenção! Deve ser o caminho completo no seu computador
caminho <- "~/Documents/Git/AnalisePokemon/Data/Missing Sprites/"

sprites_faltando <- list.files(path = "./Data/Missing Sprites", full.names = FALSE)

sprites_faltando <- paste0(caminho, sprites_faltando)

imagens <-  as.character()

for (i in 1:length(pkmn_fortes$url_imagem)) {
  x <- ifelse(str_detect(pkmn_fortes$url_imagem[i],"NA"),
        sprites_faltando[which(str_detect(sprites_faltando,as.character(pkmn_fortes$pokemon[i])))],
         pkmn_fortes$url_imagem[i])
  imagens <- append(imagens, x)
}

pkmn_fortes <- cbind(pkmn_fortes,imagens)


