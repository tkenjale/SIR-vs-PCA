# Define number of observations and number of predictors
n = 200
p = 10

# Can be tweaked
x.bound = 10
y.error = 10
y.sym.error = 25

# Generate random predictors
X = matrix(runif(n * p, -x.bound, x.bound), n, p)

# Generate linearly-related response variable
Y = (X[,1] + X[,2]) + runif(n, -y.error, y.error)

# Export linear data to CSV
linear_data = data.frame(cbind(X, Y))
write.csv(linear_data, "data/linear_data.csv", row.names = FALSE)

# Generate a quadratic-related response variable
Y.sym = (X[,1] + X[,2])^2 + runif(n, -y.sym.error, y.sym.error)

# Export quadratic data to CSV
symmetric_data = data.frame(cbind(X, Y.sym))
write.csv(symmetric_data, "data/symmetric_data.csv", row.names = FALSE)
