# CAnD3-Data-Activity

Practicing replicability and reproducibility with the 2017 Canadian General Social Survey.

## Acitvity Description

The purpose of this activity is to become fluent and experienced in drafting replicability and reproducibility reports for research in the social sciences. Using data from the 2017 Canadian General Social Survey (GSS), I will reproduce a co-fellow's analysis and explanation of findings. More specifically, analysis will examine how self-reported sex, minority status, martial/partner status, education, and age-group predicts the likelihood of having at least one child. 

## Data Description

### Data Source Availability Statement

Data used in this exercise were obtained through ODESI, a service provided by the Ontario Council of University Libraries (https://search1.odesi.ca/#/). Access is restricted to those users who have a DLI License and can be used for statistical and research purposes. The terms of the license can be viewed here (https://www.statcan.gc.ca/eng/dli/licence). 

As part of McGill University, the CAND3 initiative has license to use the data for the purposes of training. Those outside of McGill university should not use the data provided through CAND3's training activities for purposes not related to their CAND3 training. Trainees who belong to another DLI institution should re-download the data using the ODESI site using the login provided by their institution if they wish to make use of the data for other purposes.

### Codebook and Data

To access The 2017 Canadian GSS codebook and data, please use this <a href="https://acrobat.adobe.com/link/review?uri=urn:aaid:scds:US:836178a8-bcbb-3e91-b445-a49ae6a026ff"> link </a> to view the publicly available data.

### Citation

Statistics Canada. 2020. General Social Survey, Cycle 31, 2017 [Canada]: Family (version 2020-09). Statistics Canada [producer and distributor], accessed September 10, 2021. ID: gss-12M0025-E-2017-c-31

## Files Included

<table>
  <tr>
    <th>File Name</th>
    <th>Description</th> 
  </tr>
  <tr>
    <td>RRWM_Instr_CodeOutputs_YT.pdf</td>
     <td>Document which contains instructions, tables, and logit regression output of original code           </td>
  <tr/>
  <tr>
    <td>RRWM_DataWrangling.R</td>
    <td>Contains R code to process data for analysis</td>
  </tr>
  <tr>
    <td>RRWM_DescStats.R</td>
    <td>Contains R code which creates frequency and proportion tables of predictor variables shown in RRWM_CodeOutputs_NZ.pdf</td>
   <tr>
    <td>RRWM_CodeOutputs_NZ.pdf</td>
    <td>Document which contains table and logit regression output of reproduced code–this differs from original code</td>
  </tr>
  </tr>
  <tr>
    <td>RRWM_Reprod.R</td>
    <td>Contains R code which successfully reproduces the RRWM_Instr_CodeOutputs_YT.pdf outputs</td>
  <tr>  
    <td>RRWM_RepDiffs.pdf</td>
    <td>Document which outlines differences between original code and reproduced code and identifies minor value assignment error; classifies activity reproducibility</td>
  </tr>
</table>

## Instructions for Download

### Pre-Processing the Data

Once .csv file of data is downloaded, import file titled "gss_12M0025_E_2017_c_31_F1.csv" into R environment. For efficiency, rename the folder to your desired title (i.e. GSS_data) and select the columns of interest for analysis. These columns include: SEX, AGEGR10, MARSTAT, VISMIN, EHG3_01B, and TOTCHDC. To remove missing data, set any value >= 96 within the data frame equal to NA.

Following the removal of missing values, conduct a brief recoding/one-hot encoding of the variables of focus for future logit regression. 

### Software, Packages, and Applications for Wrangling and Analysis

I used RStudio (2022.07.1) as my statistical software for this activity. The wrangling and analyses conducted in the reposited files required the installation and use of several R packages including readr, tidyr, and dplyr. 

The attached document files were created in Microsoft Word, where tables and regression outputs in the R Console were copy-and-pasted. Another word document file such as .rtf, .txt, .pages, or Google Document would be equally as effective. These word documents were then exported as .pdf files for best distribution.

## Other Requirements

### Time

This acitivity spanned roughly 2-3 weeks in length. However, wrangling, analysis, and documentation took roughly 5-8 hours total. 

### Computing 

The wrangling, analysis, and documentation required of this activity was done on macOS Monterey v 12.6 with a 2.6 GHz 6-Core Intel Core i7 processer and 16 GB 2400 MHz DDR4 memory. 
