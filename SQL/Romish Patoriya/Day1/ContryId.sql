CREATE TABLE Countries 
(
CountryId varchar(3) idintfy primary key,
CountryName varchar(20) CHECK ( CountryName IN ('Italy','India','Chine')),
RegionId varchar(10)
)