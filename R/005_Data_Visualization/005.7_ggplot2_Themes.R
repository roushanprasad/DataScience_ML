#Themes
#There are a lot of built-in themes in ggplot and you can use them in two ways, by stating before your plot to set the theme:

#theme_set(theme_bw())

#or by adding them to your plot directly:

#my_plot + theme_bw()

#There is also a great library called 'ggthemes' which adds even more built-in themes for ggplot

#Try out the below themes. It is very simple adding a theme layer to your plot.
library(ggplot2)
df <- mtcars
pl <- ggplot(df,aes(x=mpg,y=hp)) + geom_point()
print(pl)
pl + theme_bw()
pl + theme_classic()
pl + theme_dark()
pl + theme_get()
pl + theme_light()
pl + theme_linedraw()
pl + theme_minimal()
pl + theme_void()

#You can add additional themes from 'ggthemes' package.
#Install the package 'ggthemes' and load and use it.
install.packages('ggthemes')
library(ggthemes)
pl + theme_excel()
pl + theme_economist()
pl + theme_economist_white()

