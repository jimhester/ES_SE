## ---------------------------------------------------------------------
## GOING FROM ExpressionSet TO RangedSummarizedExperiment
## ---------------------------------------------------------------------

data(sample.ExpressionSet, package="Biobase")

# 2 equivalent ways of doing the naive coercion
makeSummarizedExperimentFromExpressionSet(sample.ExpressionSet)
as(sample.ExpressionSet, "RangedSummarizedExperiment")

# using probe range mapper
makeSummarizedExperimentFromExpressionSet(sample.ExpressionSet, probeRangeMapper)

# using the gene range mapper
makeSummarizedExperimentFromExpressionSet(sample.ExpressionSet,
                                          geneRangeMapper("TxDb.Hsapiens.UCSC.hg19.knownGene"))

## ---------------------------------------------------------------------
## GOING FROM RangedSummarizedExperiment TO ExpressionSet
## ---------------------------------------------------------------------

example(RangedSummarizedExperiment)  # to create 'sset'
sset
as(sset, "ExpressionSet")