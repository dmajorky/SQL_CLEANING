--Cleaning Data In SQL Queries

SELECT *
FROM NashvilleHousing

--Standardize Data Format
SELECT SaleDate, CONVERT(Date,Saledate)
FROM NashvilleHousing

Update NashvilleHousing
SET SaleDate = CONVERT(Date,Saledate)

ALTER TABLE NashvilleHousing
Add SaleDateConverted = CONVERT(Date,Saledate)

--Populate Property Address data
SELECT *
FROM NashvilleHousing
ORDER BY ParcelID 
