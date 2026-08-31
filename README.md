# Uku-ESP-Part-2

**Milestone 1:** Updated data for potential indicators identified in Ayers et al. 2022 are used as inputs for NEesp2 package and a draft ESP report and snapshot are generated.

| Potential Indicator | Data Years | Source | Notes | Category |
|---------------|---------------|---------------|---------------|---------------|
| CPUE by season, gear | 1948−2018 | Nadon et al 2020; Nadon 2024 | CPUE included in assessment model. CPUE time series split into two periods to account for changes in fishing effort data. Generated CPUE indices for three dominant fishing gears used to catch uku (deep-sea handline, inshore handline, trolling). Trends are described with hypotheses in the discussion. |  |
| Effort (#vessels, #processors) | 2000−2018 | WPRFMC 2019, Hospital & Leong 2021 | Starting in 2003, fishers were required to report the number of hours fished per record; prior to 2003 fishing effort was recorded as individual fishing days. |  |
| Bycatch by gear, region | 1948−2018 | \*\*Needs to be defined for application to the fishery. |  |  |
| Ex-vessel value, revenue share | 2000−2018 | Hospital and Leong 2021 |  |  |
| Ex-vessel price per pound | 2000−2018 | Hospital and Leong 2021 |  |  |
| Fish condition in the fishery | 1948−2018 | Nadon et al 2020 Kobe Plot | Uku stock is not currently overfished, and overfishing is not currently occurring. | Contextual |
| TAC utilization (percent) | 2012−present | 2012 when non-Deep 7, otherwise more recent | 2020 assessment yielded ACL of 134 mt. Commercial and recreational fishers caught 104 mt per year on average. | Monitoring |
| Processors active in the fishery | 2000−2018 | Hospital and Leong 2021 |  |  |
| Local, regional quotient | 2000−2018 | Hospital and Leong 2021 |  |  |
| Commercial Importance | 2020 | Methot 2015 |  |  |
| Constituent Demand | 2020 | Methot 2015 |  |  |
| Non-Catch Value | 2020 | Methot 2015 |  |  |
| Sea Surface Temperatures (SSTs) | 1979–2019 | WPFMC 2019; Nadon et al. 2020 | Strong recruitment event or migration correlated with unusually cold temperatures in NWHI | Monitoring |
| Wind speed | 2003–2018 | Nadon et al 2020; <https://www.ncdc.noaa.gov/data-access/marineocean-data/blended-global/blended-sea-winds> (accessed 5/23/2019) | Explanatory variable for CPUE standardization | Contextual |
| Pacific Decadal Oscillation (PDO) | 1979–2019 | WPFMC 2019; Nadon et al. 2020; Nadon 2024 | Recent recruitment trends did not correlate with PDO index. | Contextual |
| Southern Oscillation Index (SOI) | 1979–2019 | WPFMC 2019; Nadon et al. 2020; Nadon 2024 | Recent recruitment trends did not correlate with SOI index. | Contextual |
| Oceanic Nino Index (ONI) | 1979–2019 | WPFMC 2019; Nadon et al. 2020; Nadon 2024 | Recent recruitment trends did not correlate with ONI index. | Contextual |
| Surface zonal flow | 2002–2012 | WPFMC 2019 |  |  |
| Sea Level Pressure | 1979–2019 | WPFMC 2019 |  |  |
| Surface Meridional Winds | 1979–2019 | WPFMC 2019 |  |  |
| Outgoing Longwave Radiation (OLR) | 1979–2019 | WPFMC 2019 |  |  |
| Depth Strata | 20–200 m | Nadon et al 2020 | Uku inhabit coastal waters of the main Hawaiian Islands at depths ranging from 20 to 200 meters. | Contextual |
| Fisher Experience |  | Nadon et al 2020 | Individual fisher name is used as an explanatory variable for CPUE standardization. Fisher experience is also an explanatory variable, measured as the cumulative number of fishing events associated with an individual fisher. Ultimately, only fisher experience was kept in two models. |  |
| Price per Pound (adjusted for inflation) |  | Hospital and Leong 2021 | From dealer reports, mentioned in stock assessment intro. Price per pound for uku has been steadily increasing from 2003-2018 (adjusted for inflation). |  |
| Housing | 2010–2018 | CSVI online |  |  |
| Labor Force | 2010–2018 | CSVI online |  |  |
| Personal Disruption | 2010–2018 | CSVI online |  |  |
| Poverty | 2010–2018 | CSVI online |  |  |
| Occupational Diversity | 2010–2018 | CSVI online |  |  |
| Housing Disruption | 2010–2018 | CSVI online |  |  |
| Retiree Migration | 2010–2018 | CSVI online |  |  |
| Urban Sprawl | 2010–2018 | CSVI online |  |  |
| Commercial Fishing Engagement | 2003–2018 | Hospital and Leong 2021 |  |  |
| Natural Hazards | 2010–2018 | CSVI online |  |  |
| Unemployment Rate | 1976–2021 | Hawai‘i DBEDT |  |  |
| Uku-targeted Trips | \*\* Needs to be defined for application to the fishery | Nadon et al 2020; Ayers 2022 | Species targeting information not recorded. PCA of species composition used to generate principal components that were then used in CPUE standardization. Fishers can deploy deep-sea handlines in a configuration that targets uku, but the gear configuration is not recorded in logbooks. Fishers report that uku is an important fish, but is rarely their primary target, which is more typically tunas and Deep 7 snappers. |  |
| Commercial Landings | 1948–2018 | Nadon et al 2020 | Trends described in stock assessment. Commercial catch is self-reported. |  |
| Non-commercial Landings | 2013–2018 used in most recent stock asssessment | Nadon et al 2020; Nadon 2024 | No license system for non-commercial. Recreational catch estimated from phone interviews and onsite fisher interviews. Data pulled from MRIP website. Length observations from HMRFS interviews were used to estimate recreational selectivity parameters. Recreational fishery catches were uncertain with CV of 0.4. Recreational catches were reconstructed for the 1948-2003 period by relating historical catch to human population trends. In the 2024 update assessment, they implemented correction factors for the recreational catches related to the decline of phone landlines between 2003-2016. This increased the HMRFS catches from 1948 to 2016 compared to the previous assessment. |  |
| Total Landings | 1948–2018 | Nadon et al 2020 | Sum of commercial and recreational landings. |  |
| Revenue per Trip | \*\* Needs to be defined for application to the fishery | State of Hawai‘i |  |  |
| Gini Coefficient | \*\* Needs to be defined for application to the fishery | State of Hawai‘i |  |  |
| CMLs Reporting Catch | \*\* Needs to be defined for application to the fishery | Hospital and Leong 2021 |  |  |
| Spatial Distribution of Commercial Trips/Landings | \*\* Needs to be defined for application to the fishery |  | Area used as an explanatory variable for CPUE standardization. |  |

-   Could update the targeting analysis with a portfolio analysis to understand how much uku contributes to commercial revenue per vessel. Carissa has one for king mackerel ESP.
-   Categorize indicators by monitoring, contextual, or causal (requires stats)
-   Shark depredation would be a good indicator to include. Need to request data from state. Fishers don't want to take uku trips because of depredation.

**Milestone 2:** Host semi-structured meetings with uku stock assessment lead, uku MSE lead, managers, WP Council and SSC members to improve the utility of the product for the PI region. Adam could also discuss with the fishers if he has time, particularly if they could comment on trends in non-commercial fishing effort for uku.

**Milestone 3:** Incorporate feedback and generate the final ESP product using the National ESP package.

Helpful links

[PI Uku ESP shared folder](https://drive.google.com/drive/folders/1jP3lYgaBWVqB5kbi_-_rjvJR5NHYCd2I)

[AKesp package functions](https://kshotwell.github.io/AKesp/reference/index.html)

[NEesp2 package functions](https://nefsc.github.io/READ-EDAB-NEesp2/reference/index.html)
