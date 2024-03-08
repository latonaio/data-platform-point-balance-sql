CREATE TABLE `data_platform_point_balance_point_balance_data`
(
  `BusinessPartner`                  int(12) NOT NULL,
  `PointCode`                        varchar(5) NOT NULL,
  `CurrentBalance`                   float(13) NOT NULL,
  `LimitBalance`                     float(13) DEFAULT NULL,
  `CreationDate`                     date NOT NULL,
  `LastChangeDate`                   date NOT NULL,

    PRIMARY KEY (`BusinessPartner`, `PointCode`),

    CONSTRAINT `DPFMPointBalancePointBalanceDataBusinessPartner_fk` FOREIGN KEY (`BusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMPointBalancePointBalanceDataPointCode_fk` FOREIGN KEY (`PointCode`) REFERENCES `data_platform_point_code_point_code_data` (`PointCode`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
