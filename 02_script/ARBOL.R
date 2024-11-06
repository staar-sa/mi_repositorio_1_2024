##CREACION DEL ARBOL##

#cargar librerias
library(Biostrings)
library(ape)
library(ggtree)
library(ggplot2)
library (msa)
library(ggmsa)


# Convertir los alineamientos a formato 'seqinr'
alineamiento_clustal_seqinr <- msaConvert(globinas_alineadas_clustal, type = "seqinr::alignment")
alineamiento_muscle_seqinr <- msaConvert(globinas_alineadas_muscle, type = "seqinr::alignment")

# Calcular las matrices de distancia
alineamiento_clustal_dnabin <- as.DNAbin(alineamiento_clustal_seqinr)
alineamiento_muscle_dnabin <- as.DNAbin(alineamiento_muscle_seqinr)

# Guardar los árboles filogenéticos en PDF
pdf("03_resultados/arbol_clustal.pdf")
arbol_clustal <- nj(alineamiento_clustal_dnabin)
plot(arbol_clustal, main = "Árbol filogenético de alineamiento con ClustalW")
dev.off()

pdf("03_resultados/arbol_muscle.pdf")
arbol_muscle <- nj(alineamiento_muscle_dnabin)
plot(arbol_muscle, main = "Árbol filogenético de alineamiento con Muscle")
dev.off()


