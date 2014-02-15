\name{LearnerParam}
\alias{LearnerParam}
\alias{makeDiscreteLearnerParam}
\alias{makeDiscreteVectorLearnerParam}
\alias{makeFunctionLearnerParam}
\alias{makeIntegerLearnerParam}
\alias{makeIntegerVectorLearnerParam}
\alias{makeLogicalLearnerParam}
\alias{makeLogicalVectorLearnerParam}
\alias{makeNumericLearnerParam}
\alias{makeNumericVectorLearnerParam}
\alias{makeUntypedLearnerParam}
\title{Create a description object for a parameter of a machine learning algorithm.}
\usage{
  makeNumericLearnerParam(id, lower = -Inf, upper = Inf,
    default, when = "train", requires = NULL)

  makeNumericVectorLearnerParam(id, len = as.integer(NA),
    lower = -Inf, upper = Inf, default, when = "train",
    requires = NULL)

  makeIntegerLearnerParam(id, lower = -Inf, upper = Inf,
    default, when = "train", requires = NULL)

  makeIntegerVectorLearnerParam(id, len = as.integer(NA),
    lower = -Inf, upper = Inf, default, when = "train",
    requires = NULL)

  makeDiscreteLearnerParam(id, values, default,
    when = "train", requires = NULL)

  makeDiscreteVectorLearnerParam(id, len = as.integer(NA),
    values, default, when = "train", requires = NULL)

  makeLogicalLearnerParam(id, default, when = "train",
    requires = NULL)

  makeLogicalVectorLearnerParam(id, len = as.integer(NA),
    default, when = "train", requires = NULL)

  makeUntypedLearnerParam(id, default, when = "train",
    requires = NULL)

  makeFunctionLearnerParam(id, default, when = "train",
    requires = NULL)
}
\arguments{
  \item{id}{[\code{character(1)}]\cr See
  \code{\link{Param}}.}

  \item{len}{[\code{integer(1)}]\cr See
  \code{\link{Param}}.}

  \item{lower}{[\code{numeric}]\cr See
  \code{\link{Param}}.}

  \item{upper}{[\code{numeric}]\cr See
  \code{\link{Param}}.}

  \item{values}{[\code{vector} | \code{list}]\cr See
  \code{\link{Param}}.}

  \item{requires}{[\code{NULL} | R expression]\cr See
  \code{\link{Param}}.}

  \item{default}{[any]\cr Default value used in learner.
  If this argument is missing, it means no default value is
  available.}

  \item{when}{[\code{character(1)}]\cr Specifies when
  parameter is used in the learner: \dQuote{train},
  \dQuote{predict} or \dQuote{both}.  Default is
  \dQuote{train}.}
}
\value{
  [\code{\link{LearnerParam}}].
}
\description{
  This specializes \code{\link{Param}} by adding a few more
  attributes, like a default value, whether it refers to a
  training or a predict function, etc.
}
\details{
  The S3 class is a \code{\link{Param}} which additionally
  stores these elements: \describe{ \item{default
  [any]}{See argument of same name.} \item{has.default
  [\code{logical(1)}]}{Was a default value provided?}
  \item{when [\code{character(1)}]}{See argument of same
  name.} }
}
