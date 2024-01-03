---
# Example from https://joss.readthedocs.io/en/latest/submitting.html
title: 'BGGMmod: Bayesian Gaussian Graphical Models in R'
tags:
- Gaussian graphical models
- Bayesian
- Bayes factor
- partial correlation
- R
authors:
  - name: Donald R. Williams
    affiliation: 1 # (Multiple affiliations must be quoted)
  - name: Joris Mulder
    affiliation: 2
affiliations:
 - name: Department of Psychology, University of California, Davis
   index: 1
 - name: Department of Methodology and Statistics, Tilburg University
   index: 2
citation_author: Williams and Mulder
date: 05 May 2020
year: 2020
bibliography: inst/REFERENCES.bib
---

# BGGMmod: Bayesian Gaussian Graphical Models
The `R` package **BGGMmod** provides tools for making Bayesian inference in 
Gaussian graphical models (GGM). The methods are organized around two general 
approaches for Bayesian inference: (1) estimation and (2) hypothesis 
testing. The key distinction is that the former focuses on either 
the posterior or posterior predictive distribution [@Gelman1996a; see section 
5 in @rubin1984bayesianly] , whereas the latter focuses on model comparison with the Bayes factor [@Jeffreys1961; @Kass1995].


## What is a Gaussian Graphical Model ?
A Gaussian graphical model captures conditional (in)dependencies among a set 
of variables. These are pairwise relations (partial correlations) controlling for 
the effects of all other variables in the model.

### Applications
The Gaussian graphical model is used across the sciences, including 
(but not limited to) economics [@millington2020partial], climate science 
[@zerenner2014gaussian], genetics [@chu2009graphical], and psychology [@rodriguez2020formalizing]. 

# Overview
The methods in **BGGMmod** build upon existing algorithms that are well-known in the literature.
The central contribution of **BGGMmod** is to extend those approaches:

1.  Bayesian estimation with the novel matrix-F prior distribution [@Mulder2018]
  
    + [Estimation](https://github.com/donaldRwilliams/BGGMmod#bayesian-estimation) [@Williams2019]

2. Bayesian hypothesis testing with the matrix-F prior distribution [@Williams2019_bf]

    + [Exploratory hypothesis testing](https://github.com/donaldRwilliams/BGGMmod#Exploratory)
  
    + [Confirmatory hypothesis testing](https://github.com/donaldRwilliams/BGGMmod#Confirmatory)
    
3. Comparing Gaussian graphical models [@Williams2019; @williams2020comparing]
    
    + [Partial correlation differences](https://github.com/donaldRwilliams/BGGMmod#partial-correlation-differences) 
    
    + [Posterior predictive check](https://github.com/donaldRwilliams/BGGMmod#posterior-predictive-check)
    
    + [Exploratory hypothesis testing](https://github.com/donaldRwilliams/BGGMmod#exploratory-groups) 
    
    + [Confirmatory hypothesis testing](https://github.com/donaldRwilliams/BGGMmod#confirmatory-groups)

4. Extending inference beyond the conditional (in)dependence structure [@Williams2019]

    +  [Predictability](https://github.com/donaldRwilliams/BGGMmod#Predictability)[e.g., @haslbeck2018well]
    
    +  [Posterior uncertaintyintervals](https://github.com/donaldRwilliams/BGGMmod#partial-correlation-differences) for the 
       partial correlations
       
    +  [Custom Network Statistics](https://github.com/donaldRwilliams/BGGMmod#custom-network-statistics)
    
    
## Supported Data Types

* **Continuous**: The continuous method was described in  @Williams2019. Note that 
                  this is based on the customary [Wishartdistribution](https://en.wikipedia.org/wiki/Wishart_distribution).

* **Binary**: The binary method builds directly upon @talhouk2012efficient
  that, in turn, built upon the approaches of @lawrence2008bayesian and
  @webb2008bayesian (to name a few).
  
* **Ordinal**: The ordinal methods require sampling thresholds. There are two approach 
   included in **BGGMmod**. The customary approach described in @albert1993bayesian 
   (the default) and the 'Cowles' algorithm described in @cowles1996accelerating.
   
* **Mixed**: The mixed data (a combination of discrete and continuous) method was introduced
 in @hoff2007extending. This is a semi-parametric copula model
 (i.e., a copula GGM) based on the ranked likelihood. Note that this can be used for 
 *only* ordinal data (not restricted to "mixed" data).

The computationally intensive tasks are written in `c++` via the `R` package **Rcpp** [@eddelbuettel2011rcpp] and the `c++` library **Armadillo** [@sanderson2016armadillo]. The Bayes factors are computed with the `R` package **BFpack** [@mulder2019bfpack]. Furthermore, there are [plotting](https://github.com/donaldRwilliams/BGGMmod#example-network-plot) functions
for each method, control variables can be included in the model (e.g., `~ gender`), 
and there is support for missing values (see `bggm_missing`).

## Comparison to Other Software
**BGGMmod** is the only `R` package to implement all of these algorithms and methods. The `mixed` data approach 
is also implemented in the package **sbgcop** [base `R`, @hoff2007extending]. The `R` package **BDgraph** implements a Gaussian copula graphical model in `c++` [@mohammadi2015bdgraph], but not the binary or ordinal approaches. Furthermore, **BGGMmod** is the only package for confirmatory testing and comparing graphical models with the methods described in @williams2020comparing.

# Acknowledgements
DRW was supported by a National Science Foundation Graduate Research Fellowship
under Grant No. 1650042 and JM was supported by a ERC Starting Grant (758791).

# References
