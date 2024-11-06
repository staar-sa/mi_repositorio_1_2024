##CREACION DE ARBOLES CON GGTRE##

#LIBRERIAS REQUERIDAS
library (ggtree)
library (ape)


tr <- rtree(10) #random con 10 nodos distintos
ggtree(tr) #visuaLizacion basica

#para guardarlo
#ggsave() en png
class(tr)
str (tr)

#Arbol clustal con GGTREE
a_clustal <- ggtree(arbol_clustal) +
  geom_tiplab(size = 4, fontface = "italic", color="turquoise2") +  # Nombres en cursiva
  theme_tree2() +  
  ggtitle("Árbol filogenético - Clustal") +  # Título
  theme(plot.title = element_text(hjust=0.5 , face = "bold", size = 16, color = "green4"))  # Estilo del título, hjust es para ver si va en medio o no
print(a_clustal)

a_clustal_png <- "03_resultados/arbol_filogenetico_clustal.png"
ggsave(filename = a_clustal_png)


#Arbol Muscle con GGTREE
a_muscle <- ggtree(arbol_muscle) +
  geom_tiplab(size = 5, fontface = "italic", color = "violetred") +  # Nombres en cursiva
  theme_tree2() +  # Tema visual
  ggtitle("Árbol filogenético - Muscle") +  # Título
  theme(plot.title = element_text(hjust = 0.5, face = "bold", size = 16, color ="steelblue"))  # Estilo del título

print(a_muscle)

a_muscle_png <- "03_resultados/arbol_filogenetico_muscle.png"
ggsave(filename = a_muscle_png)

