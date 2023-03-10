create database tableau;

create table tableau.vaccination(COUNTRY varchar(255),
ISO3 varchar(255),
WHO_REGION varchar(255),
DATA_SOURCE varchar(255),
DATE_UPDATED varchar(255),
TOTAL_VACCINATIONS varchar(255),
PERSONS_VACCINATED_1PLUS_DOSE Decimal,
TOTAL_VACCINATIONS_PER100 int,
PERSONS_VACCINATED_1PLUS_DOSE_PER100 Decimal,
PERSONS_FULLY_VACCINATED int,
PERSONS_FULLY_VACCINATED_PER100 Decimal,
VACCINES_USED varchar(255),
FIRST_VACCINE_DATE Date,
NUMBER_VACCINES_TYPES_USED int,
PERSONS_BOOSTER_ADD_DOSE int,
PERSONS_BOOSTER_ADD_DOSE_PER100 Decimal
);

select * from tableau.vaccination;