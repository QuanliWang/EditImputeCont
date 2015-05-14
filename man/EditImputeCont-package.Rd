\name{EditImputeCont-package}
\alias{EditImputeCont-package}
\alias{EditImputeCont}
\docType{package}
\title{
Simultaneous Edit-Imputation for Continuous Microdata
}
\description{
More about what it does (maybe more than one line) 

Hang: add description about the package here
}
\details{
\tabular{ll}{
Package: \tab EditImputeCont\cr
Type: \tab Package\cr
Version: \tab 1.0.0\cr
Date: \tab 2014-12-29\cr
License: \tab GPL(>= 3)\cr
}
~~ An overview of how to use the package, including the most important ~~
~~ functions ~~
}
\author{
Quanli Wang, Hang J. Kim, Jerome P. Reiter, Lawrence H. Cox and Alan F. Karr

Maintainer: Quanli Wang <quanli@stat.duke.edu>
}
\references{
Hang J. Kim, Lawrence H. Cox, Alan F. Karr,Jerome P. Reiterand Quanli Wang. "Simultaneous Edit-Imputation for Continuous Microdata", JASA, to appear.
}

\keyword{ package}

\examples{
library(EditImputeCont)
#Use toy example for package testing
data(BabyEdit)
#Create the model object using toy example data, which has one balance edit
#The model will be fittined with 15 DP components
model <- new(bei,D_obs,Edit,logB,1,15)

#The following three lines allow most model initilization steps to be skipped
model$SetInitialSandD(Optional.data$init_S, Optional.data$init_D)
model$FeasibilityMap = Optional.data$FM
model$Log.Uniform.Compact <- Optional.data$log.uniform

model$Run(10) #Run  10 iterations
#View(model$ImputedX.Compact)

}
