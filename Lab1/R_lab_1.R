" Laboratorio 1 Python"

#Atajos:
   "Codigo a texto = Crtl + Shift + C"


##0. Tipos de variables:

   
a2 <- 3.1614   # a2 = 3.1614  numero con decimales
print(a2)
typeof(a2)
class(a2)

a2 <- as.integer(a2)    # a2 = 3  entero de numero decimal
a2
typeof(a2)
class(a2)


c1 <- "My first python code"      #variables string
print(c1)
typeof(c1)
class(c1)


## 1. Incluir espacios entre x1 y x2 string


      #2. continuidad en línea   cat(x1, " : ", x2)
c1 <- "First python code"
c2 <- 'at R y python Class'
cat(c1," : ",c2)

      #3. continuidad en línea   paste0(x1, " palabras ", x2)
a <- paste0(c1,' : semester 2022-1')
print(a)

dato <- 2022
paste0(c1,' : semester ',dato, '-1')


## 2. Sustraer de string  ==>    substr(string, n1,n2)


    # n1 = donde empieza extracción
    # n2 = cuanto se extrae

cat('Sustraer la segunda letra de string c1 :', substr(c1, 2,1)  )   

cat('Sustrar la palabra del string (5 primeras letras) :', substr(c1, 1,5)  )


##3. Logical variables: Por default sale True/False con as.interger(x1)  o as.numeric se convierte a 1/0


a == a   
1 == 1

z1 <- (1==1)    # z1 <- (True)
typeof(z1)
print(z1)

z1 <- as.integer(z1)
print(z1)
class(z1)

z2 <- (10 > 20)
as.integer(z2)

z3 <- (100 != 100)
z3 <- as.numeric(z3)
print(z3)


### ARRAY O MATRICES


# 3. 1_DIMENSION numeric array

    # a. CREAR VECTOR
        " 3.1 c() Atomic vector: simple vector data" 
        # Elementos de vector pueden ser numeros o strings

a <- c(1,2,3,4,"Perú")     
print(a)
class(a)
typeof(a[1])

c2 <- c("Red", "Green", "Purple")
print(c2)

  # Repetir valores:   rep( number, times)

b <-  rep(2,3) 
b

  # b. AGREGAR VALOR A LA LISTA:
        #append(lista_original, valor a agregar)

        #b.1 agregar numero
a <- c(1,2,3,4)
a <- append(a, 100)
a

        #b.2 agregar lista
append(a,b)


  # c. Operaciones aritmeticas
print(mean(a))
print(sd(a))

#  g. Extraer valor de lista   lista[indice de extraccion]
a[5]

  # d.CREAR LISTA ALEATORIA   sample(n1:n2, size = n) lista de valores entre n1-n2 con n valores
sample(1:100, size = 10)


  #  e. Tamaño de lista     length(lista)
length( rep(sample(1:100, size = 10), 3) )


  #  f. Secuencia de valores con intervalo    
#f.1                seq(from , to ,by ) default es 1
y <- seq(from = 0, to = 19, by = 2)
y <- seq(0, 19, 2)
print(y)

#f.2                en números consecutivos
seq(10)
1:10
seq_len(10)

#f.2                numeros random entre n1 y n2, total = length=out
seq(100,1000, length.out = 50)
  

######  "3.4 Split vector"

#1.  partir base en 3 grupos
indices <- split(seq(100), sort( seq(100) %% 3 ) )
indices

#2. colocar nombra a cada parte, los 3 grupos      names(lista_sub) <- c(name1, name2, name3)
names(indices) <- c('training', 'est', 'test') 
print(indices)  #salen los numeros

#3. llamar al grupo 'est'=name2
indices$est   #salen los numeros

#4. llamar al nombre de los grupos
attributes(indices) #salen los nombres


##### 3.5 Array: genera vectores multidimensionales R^n

ar <- array(c(11:14, 21:24, 31:34), dim = c(2, 2, 3))
print(ar)
typeof(ar)  # tipo de elementos
class(ar)   # tipo de estrucutura del objeto



# array 1-dim vector 

a <- array(1:20)
n <- length(a)

print(sd(a)*sqrt((n-1)/n))  # take care standar deviation formula

# 2D array numeric

M <- matrix(c(1,2,3,4,5,6), nrow = 2, byrow =TRUE)

print(M)
typeof(M)
dim(M)

# Matrix by colum

M <- matrix(c(1,2,3,4,5,6), nrow = 2, byrow =FALSE)
print(M)

cat("rows: ", dim(M)[1], '\n', "Columns: ", dim(M)[2])

dim(M)[1]

# Create a 1D NumPy array with values from 0 to 20 (exclusively) incremented by 2.5:


" 3.6 Matrix "

A <- matrix(c(seq(0, 9), seq( 10, 19), seq( 30, 39), seq( -20, -11), seq( 2, 20,2)), nrow = 5, byrow =TRUE)
A

A[2:4,] # rows selecrtion

A[,1:6]  # columns selecrtion

A[,-c(2,3)] # drop columns 

# Join matrix and special Matrix

M1 <- matrix(0,8,2)

print(M1)

M2 <- matrix(1,8, 4) 
print(M2)

# horizontal stack 

M3 <- cbind(M1,M2)
M3

M4 = matrix(c(2,2,3,4,5,1,1,5,5,9,8,2), nrow =2, byrow = TRUE)
print(M4)

# vertical stack 

M5 <- rbind(M3,M4)

M5

## trasnpose

t(M5)

# Matrix Identity

I <- diag(8)
print(I)

# Reshape
I3 <- matrix(I, nrow = 32, ncol = 2)
print(I3)
typeof(I3)

"3.7 Factor"

university <- factor( c( rep("Licenciada",10), rep("No licenciada",100) ) )
attributes(university)


" 3. 8 List"

dis2 <- list('ATE', 'BARRANCO','BREÑA', 'CALLAO', 'CARABAYLLO','CHACLACAYO','CHORRILLOS','CIENEGUILLA'
             ,'COMAS','EL_AGUSTINO','INDEPENDENCIA')
dis2[[1]] # get element


dis1[2:5]

dis1[-1] # drop first element

# add new element
num <- list(13,5,5,8,9,10,5,8,13,1,20)
append(num, 102)
# add a list 
num2 <- list(10,20,30)
append(num, num2)


cat("Suma:", sum(unlist(num)),'\n', "Minimo:", min(unlist(num)), '\n', "Maximo:", max(unlist(num)))

list1 <- list(100:130, "R", list(TRUE, FALSE))
 
## ---------------------------------------------------------------------

### 3.0 OLS

set.seed(756)


x1 <- runif(500)  # 500 numeros uniformes de una distribucion 0 a 1
x2 <- runif(500)
x3 <- runif(500)
x4 <- runif(500)
e <- rnorm(500)

# Poblacional regression (Data Generating Process GDP)

Y <- 1 + 0.8*x1 + 1.2*x2 + 0.5*x3 + 1.5*x4 + e
Y


#M1 <- matrix(0,8,2)

X <- cbind(matrix(1,500), x1,x2,x3,x4)
X
head(X)

#inv(X) or solve (X)

beta <- solve(t(X) %*% X) %*% (t(X) %*% Y)
beta


## Probabilities from Distributions 









