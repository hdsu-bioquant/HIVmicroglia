library(DiffBind)
library(tidyverse)
library(UpSetR)
library(ComplexHeatmap)
library(GenomicRanges)
library(EnsDb.Hsapiens.v86)

#source("helperfunctions_for_peaks_regions.R")

# Paths
home_folder="/media/ag-cherrmann/projects/06_HIV_Microglia/data/chip/microglia_10-11-2022/mglia_correctAssig"

CTCF_samplesheet_path=paste0(home_folder, "/sampleSheetCTCF_for_DiffBind.csv")


# Import the data
CTCF_samples = read.csv(CTCF_samplesheet_path,stringsAsFactors=FALSE)

CTCF_dbObj <- dba(sampleSheet=CTCF_samples)

plot(CTCF_dbObj)

# This step calculates a binding matrix based on the read counts
# Count the reads (takes some time)
CTCF_dbObj = dba.count(CTCF_dbObj)


# Check metrics
CTCF_dbObj

# Making the contrasts
CTCF_dbObj = dba.contrast(CTCF_dbObj, 
                          contrast=c("Condition", "CTCFKD", "wt"), 
                          # Our comparison target is in the Condition column
                          minMembers = 2)

# Perform differential binding
CTCF_dbObj = dba.analyze(CTCF_dbObj, method=DBA_ALL_METHODS)

# Big picture:
#dba.plotHeatmap(CTCF_dbObj, contrast=1)
dba.plotMA(CTCF_dbObj)

dba.plotVolcano(CTCF_dbObj)

# Check numbers
dba.show(CTCF_dbObj, bContrasts=T)
dba.plotVenn(CTCF_dbObj, contrast=1,
             method=DBA_ALL_METHODS)


