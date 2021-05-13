This DATSETNAMEreadme.txt file was generated on 2021-05-02 by Ziyan Xu



GENERAL INFORMATION

1. Title of Dataset: Drinking Alcohol and demographic information
2. Author Information
	A. Principal Investigator Contact Information
		Name: Ziyan Xu
		Institution: Cornell University
		Address: Jiefang Road 536
		Email: zx285@cornell.edu

3. Date of data collection (single date, range, approximate date) : 2021-05-02

4. Geographic location of data collection : United State


DATA & FILE OVERVIEW

1. File List: 

File Name: T11: Tobacco and Alcohol Usage\Drinking Adults (Persons More Than 18 Years)
Health Data 2020: Technical Documentation. Health Data: Technical Documentation -> Subject Definitions -> T11: Tobacco and Alcohol Usage
Source:  https://www.socialexplorer.com/tables/HD2020/R12818448
Content: persons more than 18 years drinking alcohol

File Name: ACS 2019 (1-Year Estimates)(SE)
Source: Social Explorer Tables: ACS 2019 (1-Year Estimates)(SE), ACS 2019 (1-Year Estimates), Social Explorer; U.S. Census Bureau
Link: https://www.socialexplorer.com/tables/ACS2019
Content: Total population, male population, Black or African American Alone population, Civilian Population 16 to 19 Years:
, Civilian Population 16 to 19 Years: Not High School Graduate, Not Enrolled /Drop, Civilian Population in Labor Force 16 Years and Over
, Civilian Population in Labor Force 16 Years and Over: Unemployed, Population for Whom Poverty Status Is Determined

2. Relationship between files, if important: all of them are sorted by state. 


METHODOLOGICAL INFORMATION

1. Description of methods used for collection/generation of data: 
Download from ACS 2019(1-year-Estimates) and Health Data 2020.
After obtaining the origianl data, I normalized data about population to get the rate. 

2. Methods for processing the data: 
Clean and merge these two datasets

DATA-SPECIFIC INFORMATION FOR: 

3. Variable List: 
FIPS, FIPS code, FIPS	, ACS 2019 (1-Year-Estimates), https://www.socialexplorer.com/data/ACS2019/
NameofArea, Name of Areas, NameofArea			
State, State Postal Abbreviation, StateName			
Drink, Percent Drinking Adults (Persons 18 Years and Over), Percentage, T11: Tobacco and Alcohol Usage\Drinking Adults (Persons More Than 18 Years), Health Data 2020: Technical Documentation. Health Data: Technical Documentation -> Subject Definitions -> T11: Tobacco and Alcohol Usage, https://www.socialexplorer.com/tables/HD2020/R12818448
TotalPop, Total Population, universe, A00001_001_Total Population, ACS 2019 (1-Year-Estimates)_A00001_Total Population, https://www.socialexplorer.com/data/ACS2019/metadata/?ds=SE&var=A00001_001
Male, Total Population: Male, universe, A02001_002_Male, ACS 2019 (1-Year-Estimates)_A02001_002_Male, https://www.socialexplorer.com/data/ACS2019/metadata/?ds=SE&table=A02001
Black, Total Population: Black or African American Alone, universe, A03001_003_Race, ACS 2019 (1-Year-Estimates)_A17005_001_Civilian Population in Labor Force 16 Years and Over:, https://www.socialexplorer.com/data/ACS2019/metadata/?ds=SE&var=A03001_003
Age16_19	Civilian Population 16 to 19 Years:, universe, A12003_001_Civilian Population 16 to 19 Years:, ACS 2019 (1-Year-Estimates)_A12003_001_Civilian Population 16 to 19 Years, https://www.socialexplorer.com/data/ACS2019/metadata/?ds=SE&var=A12003_002
DropSchool, Civilian Population 16 to 19 Years: Not High School Graduate, Not Enrolled /Drop	universe	A12003_002_Not High School Graduate, Not Enrolled (Dropped Out), ACS 2019 (1-Year-Estimates)_A12003_002_Not High School Graduate, Not Enrolled (Dropped Out), https://www.socialexplorer.com/data/ACS2019/metadata/?ds=SE&var=A12003_002
Labor, Civilian Population in Labor Force 16 Years and Over	universe	A17005_001_Civilian Population in Labor Force 16 Years and Over:, ACS 2019 (1-Year-Estimates)_A17005_001, Unemployed - A17005_003 - Unemployment Rate for Civilian Population in Labor Force 16 Years and Over - Social Explorer Tables: ACS 2019 (1-Year Estimates) (SE) - Survey ACS 2019 (1-Year Estimates) - Social Explorer
Unemployed, Civilian Population in Labor Force 16 Years and Over: Unemployed	universe	A17005_003_Unemployed, ACS 2019 (1-Year-Estimates)_A17005_003	
Poverty, Population for Whom Poverty Status Is Determined	universe	C13004_001_Population for Whom Poverty Status Is Determined:, ACS 2019 (1-Year-Estimates)_C13004_001, https://www.socialexplorer.com/data/ACS2019/metadata/?ds=SE&var=C13004_001
MaleRate, Male population rate, ratio, Male/TotalPop, calculate	
BlackRate, Black population rate, ratio, Black/TotalPop		
DropRate, Drop or not enroll high school population rate, ratio	, DropSchool/Age16_19		
UnemRate, Unemployment rate, ratio, Unemployed/Labor		
PovRate, Poverty rate, ratio, Poverty/TotalPop		
DrinkRate, Rate of drinking adults, ratio, Drink*100		


4. Missing data codes: 
<list code/symbol and definition>n


