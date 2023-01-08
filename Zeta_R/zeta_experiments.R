# set working directory

setwd("C:/Users/danie/Projekte/Masterarbeit/Zeta")

# import stylo library"

library(stylo)

# execute Zeta

results = oppose(gui = FALSE,
                 primary.corpus.dir = "kunstepoche",
                 secondary.corpus.dir = "aufklaerung",
                 text.slice.length = 50000,
                 text.slice.overlap = 0,
                 rare.occurrences.threshold = 20,
                 zeta.filter.threshold = -1,
                 oppose.method = "craig.zeta",
                 display.on.screen = TRUE,
                 write.pdf.file = FALSE,
                 write.png.file = FALSE,
                 use.color.graphs = TRUE,
                 titles.on.graph = TRUE,
                 identify.points = FALSE,
                 visualization = "words",
                 classification = FALSE,
                 plot.token = ""
)

write.csv(results$words.avoided.scores, "scores_aufklaerung_drama_50000_20.csv", quote=FALSE, fileEncoding = "UTF-8")
#write.csv(results$words.preferred.scores, "scores_kunstepoche_lyrik.csv", quote=FALSE, fileEncoding = "UTF-8")
