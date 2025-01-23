# Repository for Figures published in Barg & Supran (2025)

All figures are generated the basis of our collected, coded, and cleaned data (`centers.csv` and 
`funders.csv` in the `data` folder). The code is cleaned to minimize the number of redundant 
steps etc. When annotating the code, we assumed some familiarity with the software packages we 
used.

Session info:

> R version 4.4.2 (2024-10-31)
> Platform: x86_64-pc-linux-gnu
> Running under: Debian GNU/Linux trixie/sid
> 
> Matrix products: default
> BLAS:   /usr/lib/x86_64-linux-gnu/blas/libblas.so.3.12.0 
> LAPACK: /usr/lib/x86_64-linux-gnu/lapack/liblapack.so.3.12.0
> 
> locale:
>  [1] LC_CTYPE=C.UTF-8       LC_NUMERIC=C          
>  [3] LC_TIME=C.UTF-8        LC_COLLATE=C.UTF-8    
>  [5] LC_MONETARY=C.UTF-8    LC_MESSAGES=C.UTF-8   
>  [7] LC_PAPER=C.UTF-8       LC_NAME=C             
>  [9] LC_ADDRESS=C           LC_TELEPHONE=C        
> [11] LC_MEASUREMENT=C.UTF-8 LC_IDENTIFICATION=C   
> 
> time zone: America/New_York
> tzcode source: system (glibc)
> 
> attached base packages:
> [1] stats     graphics  grDevices utils     datasets  methods  
> [7] base     
> 
> other attached packages:
>  [1] jules.tools_0.1.0 kableExtra_1.4.0  knitr_1.49       
>  [4] ggraph_2.2.1      tidygraph_1.3.1   glue_1.8.0       
>  [7] treemapify_2.5.6  patchwork_1.3.0   ggalluvial_0.12.5
> [10] here_1.0.1        lubridate_1.9.3   forcats_1.0.0    
> [13] stringr_1.5.1     dplyr_1.1.4       purrr_1.0.2      
> [16] readr_2.1.5       tidyr_1.3.1       tibble_3.2.1     
> [19] ggplot2_3.5.1     tidyverse_2.0.0  
> 
> loaded via a namespace (and not attached):
>  [1] ggfittext_0.10.2   gtable_0.3.6       xfun_0.50         
>  [4] ggrepel_0.9.5      tzdb_0.4.0         vctrs_0.6.5       
>  [7] tools_4.4.2        generics_0.1.3     pkgconfig_2.0.3   
> [10] lifecycle_1.0.4    compiler_4.4.2     farver_2.1.2      
> [13] munsell_0.5.1      ggforce_0.4.2      graphlayouts_1.2.0
> [16] htmltools_0.5.8.1  yaml_2.3.10        pillar_1.10.1     
> [19] MASS_7.3-64        rsconnect_1.3.1    cachem_1.1.0      
> [22] pandoc_0.2.0       viridis_0.6.5      tidyselect_1.2.1  
> [25] digest_0.6.37      stringi_1.8.4      polyclip_1.10-7   
> [28] rprojroot_2.0.4    fastmap_1.2.0      grid_4.4.2        
> [31] colorspace_2.1-1   cli_3.6.3          magrittr_2.0.3    
> [34] withr_3.0.2        rappdirs_0.3.3     scales_1.3.0      
> [37] timechange_0.3.0   rmarkdown_2.29.1   igraph_2.1.3      
> [40] gridExtra_2.3      hms_1.1.3          memoise_2.0.1     
> [43] evaluate_1.0.3     viridisLite_0.4.2  rlang_1.1.4       
> [46] Rcpp_1.0.14        tweenr_2.0.3       xml2_1.3.6        
> [49] svglite_2.1.3      rstudioapi_0.17.1  R6_2.5.1          
> [52] fs_1.6.4           systemfonts_1.1.0 
