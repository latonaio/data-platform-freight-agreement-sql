CREATE TABLE `data_platform_freight_agreement_item_doc_data`
(
  `FreightAgreement`               int(16) NOT NULL,
  `FreightAgreementItem`           int(6) NOT NULL,
  `DocType`                        varchar(100) NOT NULL,
  `DocVersionID`                   int(4) NOT NULL,
  `DocID`                          varchar(100) NOT NULL,
  `FileExtension`                  varchar(20) NOT NULL,
  `FileName`                       varchar(200) DEFAULT NULL,
  `FilePath`                       varchar(1000) DEFAULT NULL,
  `DocIssuerBusinessPartner`       int(12) DEFAULT NULL,
  
    PRIMARY KEY (`FreightAgreement`, `FreightAgreementItem`, `DocType`, `DocVersionID`, `DocID`),
    
    CONSTRAINT `DataPlatformFreightAgreementItemDocData_fk` FOREIGN KEY (`FreightAgreement`, `FreightAgreementItem`) REFERENCES `data_platform_freight_agreement_item_data` (`FreightAgreement`, `FreightAgreementItem`),
    CONSTRAINT `DataPlatformFreightAgreementItemDocDataDocType_fk` FOREIGN KEY (`DocType`) REFERENCES `data_platform_doc_type_doc_type_data` (`DocType`),
    CONSTRAINT `DataPlatformFreightAgreementItemDocDataDocIssuerBusinessPartner_fk` FOREIGN KEY (`DocIssuerBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
