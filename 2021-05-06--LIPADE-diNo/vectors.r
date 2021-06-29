res = data.frame(xo = NA, yo = NA, zo = NA, x = NA, y = NA, z = NA)


library(matlib)
#open3d()
#vectors3d(diag(3) * 10, color="red", lwd=1)
for (j in 0:50) {
  x = runif(1, min = .5)
  y = runif(1, min = .5)
  z = runif(1, min = .5)
  for (i in 0:10) {
    x = x * (.5 + runif(1, max = 1))
    y = z * (.5 + runif(1, max = 1))
    z = z * (.5 + runif(1, max = 1))
    #cat(sprintf("x = %f / y = %f / z = %f\n", x, y, z))
    res[nrow(res) + 1,] = c(j,0,i,x+j,y,z+i)
    #vectors3d(c(x+j, y, z+i), color = "blue", origin = c(j,0,i), headlength = 1)
  }
}

write.csv(na.omit(res), file = "vectors.csv", row.names = FALSE, quote = FALSE)
