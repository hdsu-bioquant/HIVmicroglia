# HIVmicroglia
Script related to the microglia HIV paper


## Explanations  

### IS locations, profiles of IS genes (comparison with ChIP-seq and ATAC-seq) 
- `Figure1_SuppFig1.Rmd` : IS locations assessment, expression comparisons, and GO enrichment (All panels from Figure 1 and panels D-F in supplementary figure 1)
- `Figure2_Supp2A-C.Rmd` : Metagene plots by expression levels (Panels A-C from Figures 2 and Supplementary 2)
- `Figure2D.Rmd` : Profile plots for IS and RMC (Panel D from Figure 2) 
- `SuppFigure2D.Rmd` : Profile plots for IS and RMC by genic/intergenic (Panel D from Supplementary Figure 2)
- `Figure2E.Rmd` : Comparison with the ChromHMM model  

### NMF-derived analysis  
- `Figure3AB.Rmd` : NMF-analysis derived plots for the H and W matrix


### ATAC-seq processing

- `2021-11-02_atacseq.Rmd` : Quality control / annotation of ATAC-seq peaks
- `2021-11-04_diffATAC.Rmd` : Differential ATAC-seq analysis between 3 conditions


### TAD boundaries and H3K36me3/locations
- `Figure5_S6_TADboundaryISViolins.Rmd` : reproduces the plots on the IS (partitioned) distance to the nearest TAD boundary
To perform this, download the hg38 set of TADs from 3D Genome Browser and convert them to bed format.
(http://3dgenome.fsm.northwestern.edu/downloads/hg38.TADs.zip) 
