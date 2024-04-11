CREATE TABLE `data_platform_point_balance_point_balance_data`
(
  `BusinessPartner`                  int(12) NOT NULL,
  `PointSymbol`                      varchar(5) NOT NULL,
  `CurrentBalance`                   float(13) NOT NULL,
  `LimitBalance`                     float(13) DEFAULT NULL,
  `CreationDate`                     date NOT NULL,
  `CreationTime`                     time NOT NULL,
  `LastChangeDate`                   date NOT NULL,
  `LastChangeTime`                   time NOT NULL,

    PRIMARY KEY (`BusinessPartner`, `PointSymbol`),

    CONSTRAINT `DPFMPointBalancePointBalanceDataBusinessPartner_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMPointBalancePointBalanceDataPointSymbol_fk` FOREIGN KEY (`PointSymbol`) REFERENCES `data_platform_point_symbol_point_symbol_data` (`PointSymbol`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
