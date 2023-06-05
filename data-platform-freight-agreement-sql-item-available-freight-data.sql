CREATE TABLE `data_platform_freight_agreement_item_available_freight_data`
(
    `FreightAgreement`                                  int(16) NOT NULL,
    `FreightAgreementItem`                              int(6) NOT NULL,
    `FreightAgreementItemAvailableFreight`              int(4) NOT NULL,
    `AvailableFreightType`                              varchar(6) NOT NULL,
    `AvailableFreightSpec`                              varchar(6) NOT NULL,
    `AvailableFreightCalendar`                          varchar(6) NOT NULL,
    `CreationDate`                                      date NOT NULL,
    `LastChangeDate`                                    date NOT NULL,
    `IsCancelled`                                       tinyint(1) DEFAULT NULL,
    `IsMarkedForDeletion`                               tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`FreightAgreement`, `FreightAgreementItem`, `FreightAgreementItemAvailableFreight`),
    
    CONSTRAINT `DataPlatformFreightAgreementItemAvailableFreightData_fk` FOREIGN KEY (`FreightAgreement`, `FreightAgreementItem`) REFERENCES `data_platform_freight_agreement_item_data` (`FreightAgreement`, `FreightAgreementItem`)
  
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
