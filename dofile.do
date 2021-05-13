doedit
 import excel "C:\Users\我是小徐、\Desktop\第二学期\5250\TE11\TE11_0502\ACS.xlsx", sheet("ACS") firstrow
 
 ** clean ACS dataset, create percentage variables
 drop in 1
 drop QualifyingName 

. rename StatePostalAbbreviation State

. label variable FIPS "FIPS "

. rename TotalPopulation TotalPop

. rename TotalPopulationMale Male

. rename TotalPopulationBlackorAfric Black

. rename CivilianPopulation16to19Yea Age16_19

. rename I Dropped

. rename CivilianPopulationinLaborFor Labor

. rename K Unemployed

. rename PopulationforWhomPovertyStat Poverty

. generate MaleRate = Male/TotalPop

destring TotalPop Male Black Age16_19 Dropped Labor Unemployed Poverty, replace
TotalPop: all characters numeric; replaced as long
Male: all characters numeric; replaced as long
Black: all characters numeric; replaced as long
Age16_19: all characters numeric; replaced as long
Dropped: all characters numeric; replaced as long
Labor: all characters numeric; replaced as long
Unemployed: all characters numeric; replaced as long
Poverty: all characters numeric; replaced as long

. destring FIPS, replace
FIPS: all characters numeric; replaced as byte

. tostring FIPS, replace
FIPS was byte now str2

. generate MaleRate = Male/TotalPop

. generate BlackRate = Black/TotalPop

. generate DropRate = Dropped/Age16_19

. generate UnemRate = Unemployed/Labor

. generate PovRate = Poverty/TotalPop

. save "C:\Users\我是小徐、\Desktop\第二学期\5250\TE11\TE11_0502\ACScollecteddata.dta"
file C:\Users\我是小徐、\Desktop\第二学期\5250\TE11\TE11_0502\ACScollecteddata.dta saved

** clean Alcohol dataset
import excel "C:\Users\我是小徐、\Desktop\第二学期\5250\TE11\TE11_0502\AlcoholPercent.xlsx", sheet("AlcoholP
> ercent") firstrow clear
(6 vars, 53 obs)

. drop in 1
(1 observation deleted)

. drop Nation 

. drop QualifyingName 

. drop State 

. rename Alcohol DrinkRate

** combine datasets

merge 1:1 FIPS using "C:\Users\我是小徐、\Desktop\第二学期\5250\TE11\TE11_0502\ACScollecteddata.dta"

drop AreaName 

. save "C:\Users\我是小徐、\Desktop\第二学期\5250\TE11\TE11_0502\FinalDataset.dta"
file C:\Users\我是小徐、\Desktop\第二学期\5250\TE11\TE11_0502\FinalDataset.dta saved

. destring DrinkRate, replace
DrinkRate: all characters numeric; replaced as double
(1 missing value generated)

. save "C:\Users\我是小徐、\Desktop\第二学期\5250\TE11\TE11_0502\FinalDataset.dta", replace
file C:\Users\我是小徐、\Desktop\第二学期\5250\TE11\TE11_0502\FinalDataset.dta saved

. rename Dropped DropSchool

. save "C:\Users\我是小徐、\Desktop\第二学期\5250\TE11\TE11_0502\FinalDataset.dta", replace
file C:\Users\我是小徐、\Desktop\第二学期\5250\TE11\TE11_0502\FinalDataset.dta saved

** Normal distribution
qladder DrinkRate
graph export "C:\Users\我是小徐、\Desktop\第二学期\5250\TE11\TE11_0502\graph\QQ-drink.png", as(png) name("Gr
> aph")

summarize DrinkRate, detail
** scattor plots

graph matrix DrinkRate MaleRate DropRate UnemRate PovRate BlackRate

 graph export "C:\Users\我是小徐、\Desktop\第二学期\5250\TE11\TE11_0502\scattor plots.png", as(png) name("Gra
> ph")

** correlation matrix

pwcorr DrinkRate MaleRate DropRate UnemRate PovRate BlackRate, star(0.05)
** abandon BlackRate because it has smallest correlation.

** descriptive statistic

tabstat DrinkRate  UnemRate PovRate MaleRate DropRate, statistics( count mean max min sd skewness )

** what kind of relation decides model type

twoway (scatter DrinkRate DropRate) (lfit DrinkRate DropRate)
. graph export "C:\Users\我是小徐、\Desktop\第二学期\5250\TE11\TE11_0502\drink_drop.png", as(png) name("Graph"
> )

twoway (scatter DrinkRate MaleRate) (lfit DrinkRate MaleRate)
 graph export "C:\Users\我是小徐、\Desktop\第二学期\5250\TE11\TE11_0502\drink_male.png", as(png) name("Graph"
> )

twoway (scatter DrinkRate UnemRate) (lfit DrinkRate UnemRate)
 graph export "C:\Users\我是小徐、\Desktop\第二学期\5250\TE11\TE11_0502\drink_unem.png", as(png) name("Graph"
> )

twoway (scatter DrinkRate PovRate) (lfit DrinkRate PovRate)
 graph export "C:\Users\我是小徐、\Desktop\第二学期\5250\TE11\TE11_0502\drink_pov.png", as(png) name("Graph")
 
 ** use linear regression model
 
regress DrinkRate UnemRate MaleRate DropRate PovRate

** preclude UnemRate due to its p-value is not good, run a new model
regress DrinkRate MaleRate DropRate PovRate

rvfplot
 graph export "C:\Users\我是小徐、\Desktop\第二学期\5250\TE11\TE11_0502\rvfplot.png", as(png) name("Graph")
 
 ** check for OVB, Heteroscedasticity, multicoliinearity
 
 estat ovtest
 estat imtest, white
 estat vif
 
** finish


