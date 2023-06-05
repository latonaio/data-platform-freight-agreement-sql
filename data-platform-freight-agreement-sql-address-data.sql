CREATE TABLE `data_platform_freight_agreement_address_data`
(
    `FreightAgreement`        int(16) NOT NULL,
    `AddressID`               int(12) NOT NULL,
    `PostalCode`              varchar(10) DEFAULT NULL,
    `LocalRegion`             varchar(3) DEFAULT NULL,
    `Country`                 varchar(3) DEFAULT NULL,
    `District`                varchar(6) DEFAULT NULL,
    `StreetName`              varchar(200) DEFAULT NULL,
    `CityName`                varchar(200) DEFAULT NULL,
    `Building`                varchar(100) DEFAULT NULL,
    `Floor`                   int(4) DEFAULT NULL,
    `Room`                    int(8) DEFAULT NULL,
    
    PRIMARY KEY (`FreightAgreement`, `AddressID`),
    
    CONSTRAINT `DataPlatformFreightAgreementAddressData_fk` FOREIGN KEY (`FreightAgreement`) REFERENCES `data_platform_freight_agreement_header_data` (`FreightAgreement`),
    CONSTRAINT `DataPlatformFreightAgreementAddressDataAddressID_fk` FOREIGN KEY (`AddressID`) REFERENCES `data_platform_address_address_data` (`AddressID`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
