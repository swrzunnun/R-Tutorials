#install pheatmap
#install.packages("pheatmap")
library(pheatmap)

#make a dataframe/matrix
head(mtcars)
class(mtcars)

df = scale(mtcars)

#make heatmap
pheatmap(df)

#change arguments
pheatmap(df, 
         border_color = "red",
         cluster_rows = T,
         cutree_rows = 3,
         show_rownames = T,
         fontsize = 8,
         display_numbers = T)

#without scaling
pheatmap(mtcars)

#with
pheatmap(mtcars, scale = "column")

#end


