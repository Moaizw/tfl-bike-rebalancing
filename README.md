# TfL Bike Rebalancing Forecasting

This project develops a data-driven framework to anticipate bike shortages
and surpluses in the TfL cycling hire system and inform proactive
rebalancing decisions.

## Problem
Bike shortages reduce service availability and user satisfaction.
Rebalancing is costly and operationally constrained, so actions must be
targeted and timely.

## Data
- 23M+ TfL bike hire trips (2022–2025)
- Processed and aggregated in BigQuery
- Station-level net bike flow in 30-minute windows

## Approach
1. Constructed station-level net flow signals from raw trip data
2. Engineered short-term temporal features and imbalance labels
3. Trained and evaluated forecasting models using time-aware validation
4. Translated predictions into rebalancing actions and measured coverage

## Key Results
- Random Forest model achieved ~58% recall on shortage events
- Simple rebalancing logic could address ~56% of predicted shortages
- Rebalancing is most effective outside peak demand periods

## Repository Structure
- `sql/`: BigQuery SQL pipeline
- `notebooks/`: EDA, modelling, and decision analysis
- Data files are not included due to size

## Tools
Python, SQL, BigQuery, pandas, scikit-learn
