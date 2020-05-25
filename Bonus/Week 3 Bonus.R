# install igraph; this might take a long time
# you only run this line the first time you install igraph:
install.packages('igraph')
library('igraph')
nodes <- read.csv("texasnodes.csv", header=T, as.is=T)
links <- read.csv("texaslinks.csv", header=T, as.is=T)
#examine data
head(nodes)
head(links)
nrow(nodes); length(unique(nodes$id))
nrow(links); nrow(unique(links[,c("source", "target")]))
links <- aggregate(links[,3], links[,-3], sum)
links <- links[order(links$target, links$source),]
colnames(links)[3] <- "weight"
rownames(links) <- NULL
head(links)
net <- graph_from_data_frame(d=links, vertices=nodes, directed=T)
net
plot(net, edge.arrow.size=.4,vertex.label=NA)
deg <- degree(net, mode="all")
hist(deg, breaks=1:vcount(net)-1, main="Histogram of node degree")
plot(net, vertex.size=deg*2, vertex.label = NA)
## write this info to file for safekeeping
write.csv(deg, 'degree.csv')
closepeople <- closeness(net, mode="all", weights=NA)
sort(closepeople, decreasing = T)
write.csv(closepeople, 'closeness.csv')
hs <- hub_score(net, weights=NA)$vector
as <- authority_score(net, weights=NA)$vect
par(mfrow=c(1,2))
plot(net, vertex.size=hs*10, vertex.label.cex =.2, edge.arrow.size=.1, main="Hubs")
plot(net, vertex.size=as*10, vertex.label = NA, edge.arrow.size=.1, main="Authorities")
cfg <- cluster_fast_greedy(as.undirected(net))

lapply(cfg, function(x) write.table( data.frame(x), 'cfg.csv'  , append= T, sep=',' ))
plot(cfg, net, vertex.size = 1, vertex.label.cex =.2, edge.arrow.size=.1, main="Communities")
l1 <- layout_with_fr(net)
plot(cfg, net, layout=l1, vertex.size = 1, vertex.label.cex =.2, edge.arrow.size=.1, main="Communities")
