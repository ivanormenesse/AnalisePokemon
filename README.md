# Análise da base de dados de Pokémons realizada para o curso R para Data Science da Curso R ministrado em Agosto de 2020

As informções aqui utilizadas foram recebidas dentro do contexto do curso, com exceção de alguns sprites que foram baixados de 'https://bulbapedia.bulbagarden.net' para complementar dados que estava faltando no banco de dados.

Esta análise depende dos seguintes pacotes para ser totalmente reproduzível:
tidyverse
png
ggrepel
plotly
gridExtra
ggimage
kableExtra

Atenção especial ao aacote ggimage, pois pode requerer algumas bibliotecas específicas para usuários de Linux, Solaris e Mac, são elas:
* deb: libmagick++-dev (Debian, Ubuntu)
* rpm: ImageMagick-c++-devel (Fedora, CentOS, RHEL)
* csw: imagemagick_dev (Solaris)
* brew imagemagick@6 (MacOS)
