CREATE TABLE `data_platform_freight_agreement_header_doc_data`
(
  `FreightAgreement`               int(16) NOT NULL,
  `DocType`                        varchar(20) NOT NULL,
  `DocVersionID`                   int(4) NOT NULL,
  `DocID`                          varchar(100) NOT NULL,
  `FileExtension`                  varchar(20) NOT NULL,
  `FileName`                       varchar(200) DEFAULT NULL,
  `FilePath`                       varchar(1000) DEFAULT NULL,
  `DocIssuerBusinessPartner`       int(12) DEFAULT NULL,
  
    PRIMARY KEY (`FreightAgreement`, `DocType`, `DocVersionID`, `DocID`),
    
    CONSTRAINT `DataPlatformFreightAgreementHeaderDocData_fk` FOREIGN KEY (`FreightAgreement`) REFERENCES `data_platform_freight_agreement_header_data` (`FreightAgreement`),
    CONSTRAINT `DataPlatformFreightAgreementHeaderDocDataDocType_fk` FOREIGN KEY (`DocType`) REFERENCES `data_platform_doc_type_doc_type_data` (`DocType`),
    CONSTRAINT `DataPlatformFreightAgreementHeaderDocDataDocIssuerBusinessPartner_fk` FOREIGN KEY (`DocIssuerBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
