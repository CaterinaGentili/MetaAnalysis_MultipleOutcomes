* Encoding: UTF-8.
* Encoding: .
*Let's start by calculating the effect sizes*
    
*So far we have:
    *- Insert all outcomes in the SPSS dataset and record which measures for which study have been assigned to which variable (keep the record in the Excel file) 
    * - Decided on the same direction, flipping articles accordingly*
     
*for each of the outcome variables*
    *Intervention Group (Group 1) = (Post-test) – (Pre-test) = INTGroupGAIN_PT*
    *Control Group (Group 2) = (Post-test) – (Pre-test) = CONTGroupGAIN_PT*
     *Intervention Group (Group 1) = (Follow-up) – (Pre-test) = INTGroupGAIN_FU*
    *Control Group (Group 2) = (Follow-up) – (Pre-test) = CONTGroupGAIN_FU*

    *INTGroupGAIN_PT – CONTGroupGAIN_PT = BETWEENGroupsGAIN_PT*
        *INTGroupGAIN_FU – CONTGroupGAIN_FU = BETWEENGroupsGAIN_FU*
        

    *Body Image Outcome 1, Pre to Post Test gain, Intervention & Control group*

COMPUTE INT_BI1G_T2=BI1_IntT2_M - BI1_IntT1_M.
EXECUTE.
COMPUTE CO_BI1G_T2=BI1_CoT2_M - BI1_CoT1_M.
EXECUTE.


    *Body Image Outcome 2, Pre to Post Test gain, Intervention & Cointrol group*

COMPUTE INT_BI2G_T2=BI2_IntT2_M - BI2_IntT1_M.
EXECUTE.
COMPUTE CO_BI2G_T2=BI2_CoT2_M - BI2_CoT1_M.
EXECUTE.


    *Body Image Outcome 3 Pre to Post Test gain, Intervention&Control group*

COMPUTE INT_BI3G_T2=BI3_IntT2_M - BI3_IntT1_M.
EXECUTE.
COMPUTE CO_BI3G_T2=BI3_CoT2_M - BI3_CoT1_M.
EXECUTE.


    *Body Image Outcome 4 Pre to Post Test gain, Intervention&Control group*

COMPUTE INT_BI4G_T2=BI4_IntT2_M - BI4_IntT1_M.
EXECUTE.
COMPUTE CO_BI4G_T2=BI4_CoT2_M - BI4_CoT1_M.
EXECUTE.


    *Body Image Outcome 5 Pre to Post Test gain, Intervention&Control group*

COMPUTE INT_BI5G_T2=BI5_IntT2_M - BI5_IntT1_M.
EXECUTE.
COMPUTE CO_BI5G_T2=BI5_CoT2_M - BI5_CoT1_M.
EXECUTE.


    *Body Image Outcome 6 Pre to Post Test gain, Intervention&Control group*

COMPUTE INT_BI6G_T2=BI6_IntT2_M - BI6_IntT1_M.
EXECUTE.
COMPUTE CO_BI6G_T2=BI6_CoT2_M - BI6_CoT1_M.
EXECUTE.


    *Body Image Outcome 7 Pre to Post Test gain, Intervention&Control group*

COMPUTE INT_BI7G_T2=BI7_IntT2_M - BI7_IntT1_M.
EXECUTE.
COMPUTE CO_BI7G_T2=BI7_CoT2_M - BI7_CoT1_M.
EXECUTE.


    *Body Image Outcome 8 Pre to Post Test gain, Intervention&Control group*

COMPUTE INT_BI8G_T2=BI8_IntT2_M - BI8_IntT1_M.
EXECUTE.
COMPUTE CO_BI8G_T2=BI8_CoT2_M - BI8_CoT1_M.
EXECUTE.


    *Body Image Outcome 9 Pre to Post Test gain, Intervention&Control group*

COMPUTE INT_BI9G_T2=BI9_IntT2_M - BI9_IntT1_M.
EXECUTE.
COMPUTE CO_BI9G_T2=BI9_CoT2_M - BI9_CoT1_M.
EXECUTE.


    *Body Image Outcome 10Pre to Post Test gain, Intervention&Control group*

COMPUTE INT_BI10G_T2=BI10_IntT2_M - BI10_IntT1_M.
EXECUTE.
COMPUTE CO_BI10G_T2=BI10_CoT2_M - BI10_CoT1_M.
EXECUTE.


    *Body Image Outcome 11Pre to Post Test gain, Intervention&Control group*

COMPUTE INT_BI11G_T2=BI11_IntT2_M - BI11_IntT1_M.
EXECUTE.
COMPUTE CO_BI11G_T2=BI11_CoT2_M - BI11_CoT1_M.
EXECUTE.



*INTGroupGAIN_PT – CONTGroupGAIN_PT = BETWEENGroupsGAIN_PT*
*Let's do this for all measures*

COMPUTE BwtGAIN_BI1T2 = INT_BI1G_T2 - CO_BI1G_T2.
EXECUTE.

COMPUTE BwtGAIN_BI2T2 = INT_BI2G_T2 - CO_BI2G_T2.
EXECUTE.

COMPUTE BwtGAIN_BI3T2 = INT_BI3G_T2 - CO_BI3G_T2.
EXECUTE.

COMPUTE BwtGAIN_BI4T2 = INT_BI4G_T2 - CO_BI4G_T2.
EXECUTE.

COMPUTE BwtGAIN_BI5T2 = INT_BI5G_T2 - CO_BI5G_T2.
EXECUTE.

COMPUTE BwtGAIN_BI6T2 = INT_BI6G_T2 - CO_BI6G_T2.
EXECUTE.

COMPUTE BwtGAIN_BI7T2 = INT_BI7G_T2 - CO_BI7G_T2.
EXECUTE.

COMPUTE BwtGAIN_BI8T2 = INT_BI8G_T2 - CO_BI8G_T2.
EXECUTE.

COMPUTE BwtGAIN_BI9T2 = INT_BI9G_T2 - CO_BI9G_T2.
EXECUTE.

COMPUTE BwtGAIN_BI10T2 = INT_BI10G_T2 - CO_BI10G_T2.
EXECUTE.

COMPUTE BwtGAIN_BI11T2 = INT_BI11G_T2 - CO_BI11G_T2.
EXECUTE.



*Now calculate pooled pre-test standard deviatio
    *√ (N1 – 1) SDbaseline12 + (N2 – 1) Sdbaseline22/ (N1 + N2 – 2)
    
*Pooled pre-test SD for BI1*

COMPUTE aBI1=(((N_Intervention - 1) * (BI1_IntT1_SD * BI1_IntT1_SD)) + 
    ((N_control - 1) * (BI1_CoT1_SD*BI1_CoT1_SD))) / (N_Intervention + N_control -2).
EXECUTE.

COMPUTE PooledSD_BI1=SQRT(aBI1).
EXECUTE.

*Pooled pre-test SD for BI2*

COMPUTE aBI2=(((N_Intervention - 1) * (BI2_IntT1_SD * BI2_IntT1_SD)) + 
    ((N_control - 1) * (BI2_CoT1_SD*BI2_CoT1_SD))) / (N_Intervention + N_control -2).
EXECUTE.

COMPUTE PooledSD_B2 = SQRT(aBI2).
EXECUTE.

*Pooled pre-test SD for BI3*

COMPUTE aBI3=(((N_Intervention - 1) * (BI3_IntT1_SD * BI3_IntT1_SD)) + 
    ((N_control - 1) * (BI3_CoT1_SD*BI3_CoT1_SD))) / (N_Intervention + N_control -2).
EXECUTE.

COMPUTE PooledSD_BI3=SQRT(aBI3).
EXECUTE.

*Pooled pre-test SD for BI4*

COMPUTE aBI4=(((N_Intervention - 1) * (BI4_IntT1_SD * BI4_IntT1_SD)) + 
    ((N_control - 1) * (BI4_CoT1_SD*BI4_CoT1_SD))) / (N_Intervention + N_control -2).
EXECUTE.

COMPUTE PooledSD_BI4=SQRT(aBI4).
EXECUTE.

*Pooled pre-test SD for BI5*

COMPUTE aBI5 = (((N_Intervention - 1) * (BI5_IntT1_SD * BI5_IntT1_SD)) + 
    ((N_control - 1) * (BI5_CoT1_SD*BI5_CoT1_SD))) / (N_Intervention + N_control -2).
EXECUTE.

COMPUTE PooledSD_BI5=SQRT(aBI5).
EXECUTE.

*Pooled pre-test SD for BI6*

COMPUTE a_BI6=(((N_Intervention - 1) * (BI6_IntT1_SD * BI6_IntT1_SD)) + 
    ((N_control - 1) * (BI6_CoT1_SD*BI6_CoT1_SD))) / (N_Intervention + N_control -2).
EXECUTE.

COMPUTE PooledSD_BI6=SQRT(a_BI6).

*Pooled pre-test SD for BI7*

COMPUTE a_BI7=(((N_Intervention - 1) * (BI7_IntT1_SD * BI7_IntT1_SD)) + 
    ((N_control - 1) * (BI7_CoT1_SD*BI7_CoT1_SD))) / (N_Intervention + N_control -2).
EXECUTE.

COMPUTE PooledSD_BI7=SQRT(a_BI7).

*Pooled pre-test SD for BI8*

COMPUTE a_BI8=(((N_Intervention - 1) * (BI8_IntT1_SD * BI8_IntT1_SD)) + 
    ((N_control - 1) * (BI8_CoT1_SD*BI8_CoT1_SD))) / (N_Intervention + N_control -2).
EXECUTE.

COMPUTE PooledSD_BI8=SQRT(a_BI8).
EXECUTE.

*Pooled pre-test SD for BI9*

COMPUTE a_BI9=(((N_Intervention - 1) * (BI9_IntT1_SD * BI9_IntT1_SD)) + 
    ((N_control - 1) * (BI9_CoT1_SD*BI9_CoT1_SD))) / (N_Intervention + N_control -2).
EXECUTE.

COMPUTE PooledSD_BI9=SQRT(a_BI9).
    EXECUTE.

*Pooled pre-test SD for BI10*

COMPUTE a_BI10=(((N_Intervention - 1) * (BI10_IntT1_SD * BI10_IntT1_SD)) + 
    ((N_control - 1) * (BI10_CoT1_SD*BI10_CoT1_SD))) / (N_Intervention + N_control -2).
EXECUTE.

COMPUTE PooledSD_BI10=SQRT(a_BI10).
EXECUTE.


*Pooled pre-test SD for BI11*

COMPUTE a_BI11=(((N_Intervention - 1) * (BI11_IntT1_SD * BI11_IntT1_SD)) + 
    ((N_control - 1) * (BI11_CoT1_SD*BI11_CoT1_SD))) / (N_Intervention + N_control -2).
EXECUTE.

COMPUTE PooledSD_BI11=SQRT( a_BI11).
EXECUTE.

*Cohens’d = BETWEENGroupsGAIN/ pooled pretest standard deviation

COMPUTE CohensD_BI1_PT= BwtGAIN_BI1T2/PooledSD_BI1.
EXECUTE. 

COMPUTE CohensD_BI2_PT = BwtGAIN_BI2T2/PooledSD_B2.
EXECUTE. 

COMPUTE CohensD_BI3_PT = BwtGAIN_BI3T2/PooledSD_BI3.
EXECUTE. 

COMPUTE CohensD_BI4_PT = BwtGAIN_BI4T2/PooledSD_BI4.
EXECUTE. 

COMPUTE CohensD_BI5_PT = BwtGAIN_BI5T2/PooledSD_BI5.
EXECUTE. 

COMPUTE CohensD_BI6_PT = BwtGAIN_BI6T2/PooledSD_BI6.
EXECUTE. 

COMPUTE CohensD_BI7_PT = BwtGAIN_BI7T2/PooledSD_BI7.
EXECUTE. 

COMPUTE CohensD_BI8_PT = BwtGAIN_BI8T2/PooledSD_BI8.
EXECUTE. 

COMPUTE CohensD_BI9_PT = BwtGAIN_BI9T2/PooledSD_BI9.
EXECUTE. 

COMPUTE CohensD_BI10_PT = BwtGAIN_BI10T2/PooledSD_BI10.
EXECUTE. 

COMPUTE CohensD_BI11_PT = BwtGAIN_BI11T2/PooledSD_BI11.
EXECUTE. 


*Now we calculate Cohen's d variance on mean cohen's d for each Cohen's D of BI*

Var(d) for all the studies
Var(d) = (n1 + n2)/(n1*n2) + d2/[2(n1 + n2 - 2)]

COMPUTE VAR_D_BI1pt = ((N_control + N_Intervention) / (N_control * N_Intervention)) + ((CohensD_BI1_PT * CohensD_BI1_PT) / (2* (N_control + N_Intervention - 2))).
EXECUTE.

COMPUTE VAR_D_BI2pt = ((N_control + N_Intervention) / (N_control * N_Intervention)) + ((CohensD_BI2_PT * CohensD_BI2_PT) / (2* (N_control + N_Intervention - 2))).
EXECUTE.

COMPUTE VAR_D_BI3pt = ((N_control + N_Intervention) / (N_control * N_Intervention)) + ((CohensD_BI3_PT * CohensD_BI3_PT) / (2* (N_control + N_Intervention - 2))).
EXECUTE.

COMPUTE VAR_D_BI4pt = ((N_control + N_Intervention) / (N_control * N_Intervention)) + ((CohensD_BI4_PT * CohensD_BI4_PT) / (2* (N_control + N_Intervention - 2))).
EXECUTE.

COMPUTE VAR_D_BI5pt = ((N_control + N_Intervention) / (N_control * N_Intervention)) + ((CohensD_BI5_PT * CohensD_BI5_PT) / (2* (N_control + N_Intervention - 2))).
EXECUTE.

COMPUTE VAR_D_BI6pt = ((N_control + N_Intervention) / (N_control * N_Intervention)) + ((CohensD_BI6_PT * CohensD_BI6_PT) / (2* (N_control + N_Intervention - 2))).
EXECUTE.

COMPUTE VAR_D_BI7pt = ((N_control + N_Intervention) / (N_control * N_Intervention)) + ((CohensD_BI7_PT * CohensD_BI7_PT) / (2* (N_control + N_Intervention - 2))).
EXECUTE.

COMPUTE VAR_D_BI8pt = ((N_control + N_Intervention) / (N_control * N_Intervention)) + ((CohensD_BI8_PT * CohensD_BI8_PT) / (2* (N_control + N_Intervention - 2))).
EXECUTE.

COMPUTE VAR_D_BI9pt = ((N_control + N_Intervention) / (N_control * N_Intervention)) + ((CohensD_BI9_PT * CohensD_BI9_PT) / (2* (N_control + N_Intervention - 2))).
EXECUTE.

COMPUTE VAR_D_BI10pt = ((N_control + N_Intervention) / (N_control * N_Intervention)) + ((CohensD_BI10_PT * CohensD_BI10_PT) / (2* (N_control + N_Intervention - 2))).
EXECUTE.

COMPUTE VAR_D_BI11pt = ((N_control + N_Intervention) / (N_control * N_Intervention)) + ((CohensD_BI11_PT * CohensD_BI11_PT) / (2* (N_control + N_Intervention - 2))).
EXECUTE.


*Now we calculate the product of cohen's d at pt with the respective variances*
    
COMPUTE PRODUCT_BI1_PT = CohensD_BI1_PT * VAR_D_BI1pt .
EXECUTE.

COMPUTE PRODUCT_BI2_PT = CohensD_BI2_PT * VAR_D_BI2pt .
EXECUTE.

COMPUTE PRODUCT_BI3_PT = CohensD_BI3_PT * VAR_D_BI3pt .
EXECUTE.

COMPUTE PRODUCT_BI4_PT = CohensD_BI4_PT * VAR_D_BI4pt .
EXECUTE.

COMPUTE PRODUCT_BI5_PT = CohensD_BI5_PT * VAR_D_BI5pt .
EXECUTE.

COMPUTE PRODUCT_BI6_PT = CohensD_BI6_PT * VAR_D_BI6pt .
EXECUTE.

COMPUTE PRODUCT_BI7_PT = CohensD_BI7_PT * VAR_D_BI7pt .
EXECUTE.

COMPUTE PRODUCT_BI8_PT = CohensD_BI8_PT * VAR_D_BI8pt .
EXECUTE.

COMPUTE PRODUCT_BI9_PT = CohensD_BI9_PT * VAR_D_BI9pt .
EXECUTE.

COMPUTE PRODUCT_BI10_PT = CohensD_BI10_PT * VAR_D_BI10pt .
EXECUTE.

COMPUTE PRODUCT_BI11_PT = CohensD_BI11_PT * VAR_D_BI11pt .
EXECUTE.

*SUM OF COHEN'S D VARIANCES*
    
COMPUTE SUM_VAR_D_BIpt=SUM.1(VAR_D_BI1pt,VAR_D_BI2pt, VAR_D_BI3pt, VAR_D_BI4pt, VAR_D_BI5pt, 
    VAR_D_BI6pt, VAR_D_BI7pt, VAR_D_BI8pt, VAR_D_BI9pt, VAR_D_BI10pt, VAR_D_BI11pt).
EXECUTE.

*SUM OF PRODUCTS*
    
COMPUTE SUM_PROD_BIpt = SUM.1(PRODUCT_BI1_PT, PRODUCT_BI2_PT,  PRODUCT_BI3_PT, PRODUCT_BI4_PT, PRODUCT_BI5_PT, PRODUCT_BI6_PT, PRODUCT_BI7_PT, PRODUCT_BI8_PT, PRODUCT_BI9_PT , PRODUCT_BI10_PT 
    , PRODUCT_BI11_PT).
EXECUTE.

*WEIGHTED COHEN'S D FOR BI AT POST TEST*
    
COMPUTE BI_wD_PT =  SUM_PROD_BIpt / SUM_VAR_D_BIpt.
EXECUTE. 


















*Excellent. Now we repeat for all the time points*
    *FOLLOW UP 1*
    
*LET'S GET COHEN'S D
    
 *Body Image Outcome 1, Pre to fu  gain, Intervention & Control group*

COMPUTE INT_BI1G_T3=BI1_IntT3_M - BI1_IntT1_M.
EXECUTE.
COMPUTE CO_BI1G_T3=BI1_CoT3_M - BI1_CoT1_M.
EXECUTE.


    *Body Image Outcome 2, Pre to fu gain, Intervention & Cointrol group*

COMPUTE INT_BI2G_T3=BI2_IntT3_M - BI2_IntT1_M.
EXECUTE.
COMPUTE CO_BI2G_T3=BI2_CoT3_M - BI2_CoT1_M.
EXECUTE.


    *Body Image Outcome 3 Pre to FU gain, Intervention&Control group*

COMPUTE INT_BI3G_T3=BI3_IntT3_M - BI3_IntT1_M.
EXECUTE.
COMPUTE CO_BI3G_T3=BI3_CoT3_M - BI3_CoT1_M.
EXECUTE.


    *Body Image Outcome 4 Pre to FU gain, Intervention&Control group*

COMPUTE INT_BI4G_T3=BI4_IntT3_M - BI4_IntT1_M.
EXECUTE.
COMPUTE CO_BI4G_T3=BI4_CoT3_M - BI4_CoT1_M.
EXECUTE.


    *Body Image Outcome 5 Pre to FU gain, Intervention&Control group*

COMPUTE INT_BI5G_T3=BI5_IntT3_M - BI5_IntT1_M.
EXECUTE.
COMPUTE CO_BI5G_T3=BI5_CoT3_M - BI5_CoT1_M.
EXECUTE.


    *Body Image Outcome 6 Pre to FU gain, Intervention&Control group*

COMPUTE INT_BI6G_T3=BI6_IntT3_M - BI6_IntT1_M.
EXECUTE.
COMPUTE CO_BI6G_T3=BI6_CoT3_M - BI6_CoT1_M.
EXECUTE.


*NOW LET'S GEET THE DIFFERENCES BETWEEN EXP AND CON*
    
COMPUTE BwtGAIN_BI1T3 = INT_BI1G_T3 - CO_BI1G_T3.
EXECUTE.

COMPUTE BwtGAIN_BI2T3 = INT_BI2G_T3 - CO_BI2G_T3.
EXECUTE.

COMPUTE BwtGAIN_BI3T3 = INT_BI3G_T3 - CO_BI3G_T3.
EXECUTE.

COMPUTE BwtGAIN_BI4T3 = INT_BI4G_T3 - CO_BI4G_T3.
EXECUTE.

COMPUTE BwtGAIN_BI5T3 = INT_BI5G_T3 - CO_BI5G_T3.
EXECUTE.

COMPUTE BwtGAIN_BI6T3 = INT_BI6G_T3 - CO_BI6G_T3.
EXECUTE.


*THEN WE USE THE SAME  POOLED PRE TEST SD*
    
    COMPUTE CohensD_BI1_FU= BwtGAIN_BI1T3/PooledSD_BI1.
EXECUTE. 
  COMPUTE CohensD_BI2_FU= BwtGAIN_BI2T3/PooledSD_BI2.
EXECUTE. 
  COMPUTE CohensD_BI3_FU= BwtGAIN_BI3T3/PooledSD_BI3.
EXECUTE. 
  COMPUTE CohensD_BI4_FU= BwtGAIN_BI4T3/PooledSD_BI4.
EXECUTE. 
  COMPUTE CohensD_BI5_FU= BwtGAIN_BI5T3/PooledSD_BI5.
EXECUTE. 
  COMPUTE CohensD_BI6_FU= BwtGAIN_BI6T3/PooledSD_BI6.
EXECUTE. 



*THEN WE GET THE VARIANCE*

COMPUTE VAR_D_BI1fu = ((N_control + N_Intervention) / (N_control * N_Intervention)) + ((CohensD_BI1_FU * CohensD_BI1_FU) / (2* (N_control + N_Intervention - 2))).
EXECUTE.
COMPUTE VAR_D_BI2fu = ((N_control + N_Intervention) / (N_control * N_Intervention)) + ((CohensD_BI2_FU * CohensD_BI2_FU) / (2* (N_control + N_Intervention - 2))).
EXECUTE.
COMPUTE VAR_D_BI3fu = ((N_control + N_Intervention) / (N_control * N_Intervention)) + ((CohensD_BI3_FU * CohensD_BI3_FU) / (2* (N_control + N_Intervention - 2))).
EXECUTE.
COMPUTE VAR_D_BI4fu = ((N_control + N_Intervention) / (N_control * N_Intervention)) + ((CohensD_BI4_FU * CohensD_BI4_FU) / (2* (N_control + N_Intervention - 2))).
EXECUTE.
COMPUTE VAR_D_BI5fu = ((N_control + N_Intervention) / (N_control * N_Intervention)) + ((CohensD_BI5_FU * CohensD_BI5_FU) / (2* (N_control + N_Intervention - 2))).
EXECUTE.
COMPUTE VAR_D_BI6fu = ((N_control + N_Intervention) / (N_control * N_Intervention)) + ((CohensD_BI6_FU * CohensD_BI6_FU) / (2* (N_control + N_Intervention - 2))).
EXECUTE.


*Now we calculate the product of cohen's d at pt with the respective variances*
    
COMPUTE PRODUCT_BI1_FU = CohensD_BI1_FU *VAR_D_BI1fu .
EXECUTE.
COMPUTE PRODUCT_BI2_FU = CohensD_BI2_FU *VAR_D_BI2fu .
EXECUTE.
COMPUTE PRODUCT_BI3_FU = CohensD_BI3_FU *VAR_D_BI3fu .
EXECUTE.
COMPUTE PRODUCT_BI4_FU = CohensD_BI4_FU *VAR_D_BI4fu .
EXECUTE.
COMPUTE PRODUCT_BI5_FU = CohensD_BI5_FU *VAR_D_BI5fu .
EXECUTE.
COMPUTE PRODUCT_BI6_FU = CohensD_BI6_FU *VAR_D_BI6fu .
EXECUTE.



*SUM OF COHEN'S D VARIANCES*
    
COMPUTE SUM_VAR_D_BIfu=SUM.1(VAR_D_BI1fu, VAR_D_BI2fu, VAR_D_BI3fu, VAR_D_BI4fu, VAR_D_BI5fu, VAR_D_BI6fu).
EXECUTE.

*SUM OF PRODUCTS*
    
COMPUTE SUM_PROD_BIfu = SUM.1(PRODUCT_BI1_FU, PRODUCT_BI2_FU, PRODUCT_BI3_FU, PRODUCT_BI4_FU, PRODUCT_BI5_FU, PRODUCT_BI6_FU).
EXECUTE.

*WEIGHTED COHEN'S D FOR BI AT POST TEST*
    
COMPUTE BI_wD_FU =  SUM_PROD_BIfu / SUM_VAR_D_BIfu.
EXECUTE. 




