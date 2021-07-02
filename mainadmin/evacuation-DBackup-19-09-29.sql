DROP TABLE brgy;

CREATE TABLE `brgy` (
  `r_id` int(100) NOT NULL,
  `p_id` int(100) NOT NULL,
  `c_id` int(100) NOT NULL,
  `b_id` int(100) NOT NULL AUTO_INCREMENT,
  `barangay` varchar(255) NOT NULL,
  `status_id` int(100) NOT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO brgy VALUES("1","1","1","1","Bugnay","1");
INSERT INTO brgy VALUES("1","1","1","2","Malasin","1");
INSERT INTO brgy VALUES("1","1","1","3","Bucarot","1");
INSERT INTO brgy VALUES("4","8","2","4","Concepcion Uno","1");
INSERT INTO brgy VALUES("4","8","2","5","Catmon","1");
INSERT INTO brgy VALUES("3","5","4","6","Ambolong","1");
INSERT INTO brgy VALUES("4","8","3","7","Flores","1");



DROP TABLE city;

CREATE TABLE `city` (
  `r_id` int(100) NOT NULL,
  `p_id` int(100) NOT NULL,
  `c_id` int(100) NOT NULL AUTO_INCREMENT,
  `cities` varchar(255) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO city VALUES("1","1","1","Ilocos Norte");
INSERT INTO city VALUES("4","8","2","Marikina CIty");
INSERT INTO city VALUES("4","8","3","Malabon City");
INSERT INTO city VALUES("3","5","4","Aroroy");
INSERT INTO city VALUES("3","5","5","Claveria");



DROP TABLE constituents;

CREATE TABLE `constituents` (
  `cons_id` int(100) NOT NULL AUTO_INCREMENT,
  `cons_name` varchar(255) NOT NULL,
  `cons_midname` varchar(255) NOT NULL,
  `cons_lname` varchar(255) NOT NULL,
  `cons_age` int(100) NOT NULL,
  `cons_gender` varchar(255) NOT NULL,
  `cons_add` varchar(255) NOT NULL,
  `b_id` int(100) NOT NULL,
  `c_id` int(100) NOT NULL,
  `p_id` int(100) NOT NULL,
  `r_id` int(100) NOT NULL,
  `cons_stat` int(100) NOT NULL,
  `cons_fid` int(100) NOT NULL,
  `volunteer_id` int(100) NOT NULL,
  PRIMARY KEY (`cons_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

INSERT INTO constituents VALUES("1","M2JjOWZmMDM0MGE5NTU2YQ==JE1JFEe1JpEEXQVqwzs/3w==","OTE3NDYwNzE2MjAxZmIzYg==7Nlzhr6sq30Ug7vG4YfHyw==","NmM0NTVhMTlkZmE1ZGZlOQ==tsBszRhKMVD/vUoBsARVww==","28","Female","MzI3YmY4NWMwY2I4MDc0Yw==PZiPSbgD/7/QE+cWEBw/Mw==","7","3","8","4","2","1","11");
INSERT INTO constituents VALUES("2","ZTU1NjZlODgxZWU1M2Q5Mg==g9oYa58KXYTgIh1T+qmTmw==","MmFlZWYzMWUzNDUxZGNlZA==Yb+XXIwUefOxoIMALdck3A==","MTJlYzQ4MzU3OTM5NmU2ZA==fZ+PHlmWHwiiKtVA0CiwUQ==","22","Female","MzI3YmY4NWMwY2I4MDc0Yw==PZiPSbgD/7/QE+cWEBw/Mw==","7","3","8","4","2","1","0");
INSERT INTO constituents VALUES("3","MTI5YjE0MjdiZjg2MTNhMg==GMPQV+EkGvYAIvjHpEgF6Q==","MGU3NjJlYjI5MDQ5MWNhNQ==20DXTZ0I6Edwe7m5bOMO8w==","YzBhODNiY2Q4YzI4ODc4Yw==XcZnYJIBwq99uh6iGnPZug==","34","Female","MzI3YmY4NWMwY2I4MDc0Yw==PZiPSbgD/7/QE+cWEBw/Mw==","7","3","8","4","2","1","0");
INSERT INTO constituents VALUES("4","ODYwNTY2YTViMjFlZTYxNg==hjpDHPFLuzWaEXu89euvPg==","YzdlOWQyMWI4NGVkYTIwMA==pPTtSPgEt37wNCNIPxI2Hw==","NzRhN2MzYzY3OTFmMmVjZg==X0FyTKNzbV3ziIawNCeR2A==","20","Male","NTQ5N2NjODBmZDY0YmYzYQ==7WTvKOEy2OcntHuOs33cEQ==","7","3","8","4","2","4","11");
INSERT INTO constituents VALUES("5","N2ZmYjIyZmI2M2M5ZTA0MQ==JLCU+oTo+Anbw/ZnbkqUlQ==","ZmI1YmRiYzlmN2M0NDZkMQ==S91M/d4Dyy3MuUBv248FCQ==","MDc1Mzc3YzVkMjNmNGQxYw==MepcVmcc3wvyDoyNi3IRzg==","22","Female","NTQ5N2NjODBmZDY0YmYzYQ==7WTvKOEy2OcntHuOs33cEQ==","7","3","8","4","2","4","0");
INSERT INTO constituents VALUES("6","YmMzZjgxYTg4YjgwNzVkMw==h5NQsvrGpHedSpiROHix8Q==","MGNlYjk5NmQwZGU2MDY5Yg==4akBE6dXU4UaBM7poCaf5A==","YmZlOTljNmNiNzc0MzY4ZQ==xWSUis8euMTdqHtTFA5jCw==","18","Male","NTQ5N2NjODBmZDY0YmYzYQ==7WTvKOEy2OcntHuOs33cEQ==","7","3","8","4","2","4","0");
INSERT INTO constituents VALUES("7","MDI3ZDMwZDk1Yzk0NmYwMw==9tzExZjQWSViwUOZSEZwOg==","OTQ0NzkxMTcyMjk5YjA0MA==nx0xb15wShPnCjoKt8andg==","OWUzYmZjODAyMDc2NmE4ZA==rTdVM0nlJWbmVR74Q4/G0w==","22","Male","OWM2MmU1MDE0MmY4MTNmNg==xzG2yH3eIkYrl+oA7ZM9ew==","7","3","8","4","2","0","0");
INSERT INTO constituents VALUES("8","MmRjNGVmZGRmYTQ0OGQzNA==EZugP/iXEy0PYILZfvGJDw==","MTQ5MmFiNDhkNTVlZWQ5Zg==KZbt4GbI9cVycvqhtVKrzQ==","MTVjMDU1NmY2NjY0ZWY3Ng==GMtS6PGqGAsofw7mudcGjw==","38","Male","MDgxOTBmNDkzNzRkNTFiNQ==lpGFn6BhMF8whye5z8IYbA==","7","3","8","4","2","0","0");
INSERT INTO constituents VALUES("9","ZTI3NjRjNWMxYWJlNTgxYQ==Lzyc6SWGutDQ59U8kABTyA==","OTg3YTI3YjZhZjdkYTRkOA==/XnRn/pfCSQ1pZos5XWRmw==","ODVjNmRlZjhhYzc3ODIyZQ==/dvRdV8e9SMoqQ84/m9m0A==","27","Male","YzBjN2E1ZjM4MWNhYzQxNg==hCoa+AtUJYNEOB04yNxA+Q==","7","3","8","4","2","0","0");
INSERT INTO constituents VALUES("10","NzY2NjMzMWZmOThjZDcxNQ==9toz2lLYfS6TVhCQ7bowxw==","ZGIxNDdmMzk5ZWZlNjM3ZA==QD2cL4pIXFQo9m1IY7lAbg==","ZGU3NmUzNDI4ZTU5N2NlYw==zwERENnJQvourj9F79grOg==","34","Female","NDRkYjVlMjRiZDk4NDM3Mg==r8uDaIju4p65r6A7ogK/5EGDuqYV/5zWZAYfFgAgzco=","7","3","8","4","2","0","0");
INSERT INTO constituents VALUES("11","NzI0MDMzOGQ5MTA4N2Q1ZA==lrNVbJQjVlGKZ728x413yg==","ZDQ5MWY3OGRkNWE3ZWVhNA==4lTvcqwzOzFnYDk8/CBj+Q==","NmNkMDQ1MjExODkxM2MxYQ==OXG6enwiIwqc8wAONAVpsw==","28","Male","MThiMTE2OTZmYjI1NWJmNQ==hNmpImgfEL7Ssbrn8v8/FtcHe7WtZk4ov3DSLdVMMCM=","7","3","8","4","2","0","0");
INSERT INTO constituents VALUES("12","YTlhYzA1Mzc5ZTUzNWE0Yw==2Sin/xMTtwYzE9ADhmC/Ww==","ODg5YTM4ZGRhMTcyN2Q5Yw==0RuNC0CbpMG4jFpjzLeuYw==","MzFjNTIwYTM2N2EyYWMzNA==Vmz/p1Gbt5KvxsEGqL2F6A==","45","Female","MWRlM2FhNWZlYTExNWVkYw==sk8QFLTIxP+IKINzwG/vGeOABB6c1MzOJ4c8JPJi/80=","1","1","1","1","2","12","3");
INSERT INTO constituents VALUES("13","YTkxMzE3MWE2YTI3OTk4Yw==vJ45Ej14LU6Id7Tz34Kqgw==","MDczMzQxMGNlYThiNTM2YQ==WjnXp6rg7fkjWoOOmVX/yA==","MzQ0ZmVjZGE0MGE3YjU5NA==IRzd+riVKFHQ6Hi7RPGR0g==","35","Female","OThlY2E2ZjJmNTBmYmRhYQ==SyX1jQ90L8UT0Ae9Gh0SJmCyIjvXsOu7JwNTKIekw18=","1","1","1","1","2","0","0");
INSERT INTO constituents VALUES("14","N2M3MTlhODI0ZTE5NTAxOQ==vune0hZ7+j3V5vELoPXCxA==","YmQzYTc2NmIyMTJjY2E2ZQ==G2DY9ktcSbdn143ysMdF+g==","YjYwYTdjZGZlN2QzYTBhNw==eMrOP9qlAoZ9z8F9LQMvuQ==","38","Female","MzhkOWIwYWIxNzBkNTRhMw==eL+1klknLXwstULyYw2Lrg==","1","1","1","1","2","0","0");
INSERT INTO constituents VALUES("15","ZGNmODJlMjMyNjJhMDRiZQ==Bqsiv57+7NDqDS83U/gKfw==","OGFmYzlkYmQzZTU3ZjRmYg==BUbHzKe4gtircmAUYqyYjw==","NTA3NWM0Nzc5ZDRlYWQxOQ==iF7nsLI9hyIKNuzLXuE4tQ==","27","Male","NzFmNjJkMDIxMDRjODAxOA==CH4No08ssPYm+UUW/MidPQ==","1","1","1","1","2","0","0");
INSERT INTO constituents VALUES("16","MzVlMDE2ZjRmYmZlNTE0OA==Y6nmul6PpkQMEYXT7fwjJQ==","MjM0YjllNDkxMjE4MzZmMw==fHZ0XqJtwtf/PsiX70DCNg==","NGU2M2QwODVkOWY0MmNlNA==LIMGLOnYnuEZ8JP557h31Q==","21","Female","Njk5YzA4NDBlNGQzZDUxOA==Zitd73nmGSVBEf+EW5t77Q==","1","1","1","1","2","0","0");
INSERT INTO constituents VALUES("17","YTZlYmUzYjM5NjMyZTQxYw==ZWvugnOtTO02twKI+jzNNQ==","ZWIzZDg1MzkxZjJhYjBmZg==L2jxFAAMEuJe5FWTb8lCIQ==","MjM5MWUwMjI5MWEwZDRjNQ==U2COacCAnF6MSPv2ZDIOsQ==","21","Male","MWRlM2FhNWZlYTExNWVkYw==sk8QFLTIxP+IKINzwG/vGeOABB6c1MzOJ4c8JPJi/80=","1","1","1","1","2","12","0");
INSERT INTO constituents VALUES("18","YjkzODczNDNmMTE1M2U0ZQ==mFXPSeUKsXcHe/9sh5bz5A==","YTAxZmJhOWVlZTkyYjA2ZQ==EPQgcMCOhAcrihxwwn7r9g==","MDY0MzZhMGQ5MmYwYTgwYQ==tT8rtouOx8ibi1FTx+aVSQ==","21","Male","MWRlM2FhNWZlYTExNWVkYw==sk8QFLTIxP+IKINzwG/vGeOABB6c1MzOJ4c8JPJi/80=","1","1","1","1","2","12","0");
INSERT INTO constituents VALUES("19","OWU4MTAxOTgyNjhkMDVhNw==M42LbIEltezb5vq3It/g7A==","Y2Q3MWU4OTk3ZjJhNmYzOQ==bARe8i0TP+Cw7QLQUVe/aw==","ZTYxMzc1ZmEyMDYxNDU3Mw==7AywpXO+49KvWQqNTlqk8Q==","34","Female","ZDBiYzM0Mzg5ZDc0YmQyZg==+GuBDJBS8Y9lO2rJJIchpw==","1","1","1","1","2","19","3");
INSERT INTO constituents VALUES("20","ODAzZjJlMzZlOTIzOGRmZQ==woqHAlWOoNc7cYDgCeH0iQ==","MjQ1OTQyMThkMGRmMDU0Mg==C1mXP9cRdxEq+J85he2v5g==","YmMxNDZhZGY4Njk4Y2MwZA==TVBmdtnZhoiozKqH9CHr/g==","28","Female","ZDBiYzM0Mzg5ZDc0YmQyZg==+GuBDJBS8Y9lO2rJJIchpw==","1","1","1","1","2","19","0");
INSERT INTO constituents VALUES("21","Y2E3MWYyZDQxZDc0NzI2Yw==/xetHFu8+xINKXU0fWF4KQ==","MTM5YzE2ZmY4N2NjNDFjYg==E7r61t4K2HQB75GWpSagKw==","MmU1MDQ1NTM3N2ZmYWY4Yg==WzTVJj4sSUNXI9Nku/o56Q==","24","Male","ZDBiYzM0Mzg5ZDc0YmQyZg==+GuBDJBS8Y9lO2rJJIchpw==","1","1","1","1","2","19","0");
INSERT INTO constituents VALUES("22","YTI5M2U0MTg3OWI1YTQyZg==ZCVlrXyQr9aMS0/lkf96Iw==","NjEwNGI1ZmNkMzRiMzA3Zg==ij2FVmNevoRMB985/M9MljTKGlR5F8sE/LfJn6Kavto=","ZWU0MTRmNmVlMWMyZGQ4Yg==K0qrJZB3YyC07/vZU3JZM3G8OdCYXJPMQS8NhC4gLLo=","5","Female","OGIzN2Y1MTBlZDA0MTZhNg==W19QLurCDHfVVQHv119/XA==","4","2","8","4","2","22","7");
INSERT INTO constituents VALUES("23","ZTc2NmE4NWE1M2M4MDkxNA==zsc73R2Yjr0femPA0k4JJw==","NjhlNGViMzVhNzhlMmJlMQ==KSXiZAypABBKmEqcIJqBpg==","ZDk0NmZkZDdmYWUzNzFiZQ==ymZZB2wpixX3jYPvBVPv/Q==","4","Male","OGIzN2Y1MTBlZDA0MTZhNg==W19QLurCDHfVVQHv119/XA==","4","2","8","4","2","22","0");
INSERT INTO constituents VALUES("24","NDg0YTMxNzdjZjRjNTk5NQ==58u2TdCpixh5XBt9ttDOxw==","ZWE2OTExN2JlODQwZjRiMg==0qb38YXm7LwkMaVacqrajw==","ZTU2NjU2NTlmOTE0M2ZhNg==3QOxykr9y7YC1fxRTdxyWg==","5","Male","OGIzN2Y1MTBlZDA0MTZhNg==W19QLurCDHfVVQHv119/XA==","4","2","8","4","2","22","0");
INSERT INTO constituents VALUES("25","ZGZkMzQ4NWE1YzNkZGFkNQ==yEpcHtgVolYWmHzX7HN04A==","ZmRkMzAwMWVkYmNlODY5ZA==uVBUG0i5xoIZsz3zu6mS2Q==","ZWYyNmFjYTQxNDNiMjJjYw==VdsuuIPPnb0oEgU/oOKu+A==","47","Female","YjIzMWU5ZTNhZGJmOGI5ZQ==AHgpWSsKY00NakvqnoyFGw==","7","3","8","4","2","25","11");
INSERT INTO constituents VALUES("26","ZjllNDUzYjgyN2ViMTAyMg==UQvunOOsM9EskHiXbjcY0A==","YzYzNmFjOTVkYmQ0Njk1ZA==el1bAW0wk0lA9q7ruhJE8Q==","NWYxZmNlYmFiODRhNjdhMw==he7nu9cySRHtVMhP3iQoUg==","32","Female","YjIzMWU5ZTNhZGJmOGI5ZQ==AHgpWSsKY00NakvqnoyFGw==","7","3","8","4","2","25","0");
INSERT INTO constituents VALUES("27","OTQ4NDE0ZTEyOGU4NDM5ZA==szYMTcQPxJUeO0ZAavp9OQ==","YWRiZWIzZmY1MWM5MmE1Mw==l1If+KakDflhuoexGRQQvA==","MDc2YTkzNGM1ZjIxNjg2Mg==gF+uA6M3Y7Xk39YJRB6qwA==","26","Female","YjIzMWU5ZTNhZGJmOGI5ZQ==AHgpWSsKY00NakvqnoyFGw==","7","3","8","4","2","25","0");
INSERT INTO constituents VALUES("28","M2Q3MjVkODcxMDEyYTc2YQ==9WpewlaTUMpxQB4bq1Rb1Q==","NjBjNmYyNjI3NDI0Mzg2ZA==FHBtiBAwYT7FAOzrxR90EA==","YzQxMzNlNGIwYmIxZjE0Mw==y4FWKMycEDLLd+2llbo7VQ==","31","Male","OTkwODEyN2FjOGJlMjdlOA==f8pIzx0Jo3VPtiJOGSBq2z4jK8OT6qDTnxy4QA7EreQ=","7","3","8","4","2","28","11");
INSERT INTO constituents VALUES("29","NDVlYzVlOTM2MzAyMDc0YQ==De2GwLC+NVWVj6nZMdLScg==","Zjk1ODE4Nzg3NTA3MTAwYQ==uColm3Hl9hAJHebIPcmgnQ==","YWI2ZGExYzBiNzFmYjliOA==vJ76FwaZwxCgCj5nqJBseQ==","23","Male","OTkwODEyN2FjOGJlMjdlOA==f8pIzx0Jo3VPtiJOGSBq2z4jK8OT6qDTnxy4QA7EreQ=","7","3","8","4","2","28","0");
INSERT INTO constituents VALUES("30","ZThhNTk1Yzc3MTgwYmYzMg==TFQSadJiMYPeeffZt+ZDqw==","Nzc2NWU4OWI0YjUzYTM0Yg==qkszwknEyZkVDmzAadALhw==","YmVhODZkNWE5NmJhZjNjYg==aCe76jMRR/ZT0o65eg1esg==","29","Male","OTkwODEyN2FjOGJlMjdlOA==f8pIzx0Jo3VPtiJOGSBq2z4jK8OT6qDTnxy4QA7EreQ=","7","3","8","4","2","28","0");
INSERT INTO constituents VALUES("31","ODYzOWFlOGVjZTJjZTM1NA==3eJySd+WCndB079CTrOQXg==","MjFlMjY0MTQ0OTIzZWFmNw==k+UFZVOuxC33h0ph0D66cA==","ODdmZDU2MmIxMWQyYzExMw==TY4vOZvo7H5D0Red8Fvotg==","7","Male","NTMxNGQ5OWZjY2YxNjQ1OA==uJbvs/wiOjoTWgPpTo3xFsCz291qQ/1ZkEmheq+d4q4=","7","3","8","4","2","0","0");
INSERT INTO constituents VALUES("32","Zjg5MmNhMGYzNDU4Y2RkZg==iTHnzOW/3Ys5FO1EXXTzhQ==","NTA1NjYzNWY5YTBhYjRjZg==BjszFBDmu3++cHyXygWSgQ==","NTFmYjg3YzRjOWVjMmYxOQ==qGGUYZRjdIKh5AJRL3Y5tw==","35","Female","OWNiOWRjNzAzOTdmOWY4Mw==0St9J8OwdCdvyXCUNpQoyw==","7","3","8","4","2","0","0");
INSERT INTO constituents VALUES("33","OTkxMGM1NzEwZjdhOTIxZA==3aFDPhtE3d8572V1b5kZJA==","OWY3ODllOTNiMDJhNzkxYg==GDxONUW/Ajxr0nWcjOAYcw==","YmQ0ODEyNTFmYjE5NjIwMQ==JkogR1dlwNJtQN3oiSrh3w==","67","Female","NTAyZjcyNjc5ZWMwMjE3Yw==ekXYMtq8mvwnngRQPGjJQg==","7","3","8","4","2","33","12");
INSERT INTO constituents VALUES("34","NTFiZDhkZmM3ZWYyNDc1NQ==NDmAvZz3nM5N0F0cPGvUAQ==","ZjZhM2Y3OGEwOTllMzAyZQ==8X5me2W5nxe7ypEU0zk1vA==","MDc2MmI1NWZjNjc3Zjc2Nw==y72CqzfYiABWPmoN5mrqqg==","45","Female","NTAyZjcyNjc5ZWMwMjE3Yw==ekXYMtq8mvwnngRQPGjJQg==","7","3","8","4","2","33","0");
INSERT INTO constituents VALUES("35","NmY2YjNkZTA4YWMzZTBhOQ==d3lTiPT2VFGGsxb6x88qOQ==","OWM1YTk5MDM1MTcyY2Y1Yw==ugTAHVzrEaYC2d+WELcbNQ==","ZmI2ZjY1MjBkOWM0NzYxYQ==1cgFUjjlyZtoxzt6TEYeRQ==","34","Female","NTAyZjcyNjc5ZWMwMjE3Yw==ekXYMtq8mvwnngRQPGjJQg==","7","3","8","4","2","33","0");



DROP TABLE disaster;

CREATE TABLE `disaster` (
  `disas_id` int(10) NOT NULL AUTO_INCREMENT,
  `disaster_level` varchar(255) NOT NULL,
  PRIMARY KEY (`disas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO disaster VALUES("1","Typhoon");
INSERT INTO disaster VALUES("2","Earthquakes");
INSERT INTO disaster VALUES("3","Floods");
INSERT INTO disaster VALUES("4","Landslide");



DROP TABLE evacuations;

CREATE TABLE `evacuations` (
  `r_id` int(100) NOT NULL,
  `p_id` int(100) NOT NULL,
  `c_id` int(100) NOT NULL,
  `b_id` int(100) NOT NULL,
  `eva_id` int(100) NOT NULL AUTO_INCREMENT,
  `evacuation_name` varchar(255) NOT NULL,
  PRIMARY KEY (`eva_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO evacuations VALUES("1","1","1","3","1","Bucarot Gymnasium");
INSERT INTO evacuations VALUES("1","1","1","2","2","Malasin Gymnasium");
INSERT INTO evacuations VALUES("1","1","1","1","3","Bugnay Gymnasium");
INSERT INTO evacuations VALUES("4","8","2","4","4","Goodrich Covered court");
INSERT INTO evacuations VALUES("4","8","2","5","5","Catmon Covered Court");
INSERT INTO evacuations VALUES("3","5","4","6","6","Ambolong Evac Center");
INSERT INTO evacuations VALUES("4","8","3","7","7","Flores Covered Court");
INSERT INTO evacuations VALUES("4","8","3","7","8","second floresa covered court");



DROP TABLE evacuees;

CREATE TABLE `evacuees` (
  `evacuees_id` int(100) NOT NULL AUTO_INCREMENT,
  `r_id` int(100) NOT NULL,
  `p_id` int(100) NOT NULL,
  `c_id` int(100) NOT NULL,
  `b_id` int(100) NOT NULL,
  `eva_id` int(100) NOT NULL,
  `cons_id` int(100) NOT NULL,
  `cons_fid` tinyint(100) NOT NULL,
  `stat_id` int(10) NOT NULL,
  `eva_date` date NOT NULL,
  `disas_id` varchar(11) NOT NULL,
  `typhoon_id` varchar(11) NOT NULL,
  PRIMARY KEY (`evacuees_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

INSERT INTO evacuees VALUES("1","4","8","3","7","7","7","0","0","2019-09-24","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("2","4","8","3","7","7","8","0","0","2019-09-24","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("3","4","8","3","7","7","9","0","0","2019-09-24","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("4","4","8","3","7","7","1","1","0","2019-09-24","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("5","4","8","3","7","7","2","1","0","2019-09-24","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("6","4","8","3","7","7","3","1","0","2019-09-24","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("7","4","8","3","7","7","4","4","0","2019-09-24","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("8","4","8","3","7","7","5","4","0","2019-09-24","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("9","4","8","3","7","7","6","4","0","2019-09-24","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("10","4","8","3","7","7","11","0","0","2019-09-24","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("11","4","8","3","7","7","10","0","0","2019-09-24","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("12","1","1","1","1","1","12","12","0","2019-09-24","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("13","1","1","1","1","1","17","12","0","2019-09-24","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("14","1","1","1","1","1","18","12","0","2019-09-24","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("15","1","1","1","1","1","19","19","0","2019-09-24","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("16","1","1","1","1","1","20","19","0","2019-09-24","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("17","1","1","1","1","1","21","19","0","2019-09-24","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("18","1","1","1","1","3","15","0","0","2019-09-24","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("19","1","1","1","1","3","13","0","0","2019-09-24","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("20","1","1","1","1","3","14","0","0","2019-09-24","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("21","1","1","1","1","3","16","0","0","2019-09-24","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("22","4","8","2","4","4","22","22","0","2019-09-24","Floods","");
INSERT INTO evacuees VALUES("23","4","8","2","4","4","23","22","0","2019-09-24","Floods","");
INSERT INTO evacuees VALUES("24","4","8","2","4","4","24","22","0","2019-09-24","Floods","");
INSERT INTO evacuees VALUES("25","4","8","3","7","7","25","25","0","2019-09-24","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("26","4","8","3","7","7","26","25","0","2019-09-24","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("27","4","8","3","7","7","27","25","0","2019-09-24","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("28","4","8","3","7","7","28","28","0","2019-09-24","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("29","4","8","3","7","7","29","28","0","2019-09-24","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("30","4","8","3","7","7","30","28","0","2019-09-24","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("31","4","8","3","7","7","31","0","0","2019-09-24","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("32","4","8","3","7","7","33","33","0","2019-09-26","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("33","4","8","3","7","7","34","33","0","2019-09-26","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("34","4","8","3","7","7","35","33","0","2019-09-26","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("35","4","8","3","7","8","32","0","0","2019-09-26","Typhoon","Ondoy");



DROP TABLE missing;

CREATE TABLE `missing` (
  `missing_id` int(11) NOT NULL AUTO_INCREMENT,
  `b_id` int(100) NOT NULL,
  `r_id` int(100) NOT NULL,
  `p_id` int(100) NOT NULL,
  `c_id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `midname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `age` int(10) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `contact` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `statusid` int(100) NOT NULL,
  PRIMARY KEY (`missing_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO missing VALUES("1","7","4","8","3","NGMwMjEwYmNjMTFiOTQ3MQ==xXHm1x4nEbGx93DoRC9lWg==","M2Q2MGEwMDBlNzhiNjJkOQ==ZGSB8G61x0ddUZSzeELQVA==","OGU3MDg1YmU2Nzk1NDVkNw==qktVYXxEgyUVL+MNiQJo4A==","68","Male","70509784_2420284161399207_2906076667493482496_n.jpg","MjBiY2I1ZDRmM2VhNDc3NQ==F7kSjdEjwPdKTNclPFSJng==","wearing eye glasses, black & green t-shirt, brown short and black slippers.","1");
INSERT INTO missing VALUES("2","7","4","8","3","ZDQ1OWE2M2Q3NTNmZDFkMQ==uyX4cHK1Zk424NmDj9apmA==","NjAxZDdkODVhYjhmYzM0ZA==yDjrFOcZTvo+C/GSCbBUOw==","ZmM2MGQzZTBjODk1NzY4Nw==/2zW1RT06Z1zeLXgybR58A==","26","Female","70989745_744084819383032_478935131776614400_n.jpg","OTQzZDJlNzBiYTRmMTZiZg==BFkMMbcMPWwg+7wT9QPbWw==","wearing red hat, blue jeans, brown eyes, black jacket, white sando, white shoes.","1");



DROP TABLE province;

CREATE TABLE `province` (
  `r_id` int(100) NOT NULL,
  `p_id` int(100) NOT NULL AUTO_INCREMENT,
  `province_name` varchar(255) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO province VALUES("1","1","Ilocos Norte");
INSERT INTO province VALUES("1","2","Bacarra");
INSERT INTO province VALUES("2","3","Tuguegarao");
INSERT INTO province VALUES("2","4","Basco");
INSERT INTO province VALUES("3","5","Masbate");
INSERT INTO province VALUES("3","6","Camarines Sur");
INSERT INTO province VALUES("3","7","Albay");
INSERT INTO province VALUES("4","8","Metro Manila");



DROP TABLE region;

CREATE TABLE `region` (
  `r_id` int(100) NOT NULL AUTO_INCREMENT,
  `region_name` varchar(255) NOT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO region VALUES("1","Region one");
INSERT INTO region VALUES("2","Region two");
INSERT INTO region VALUES("3","Region V");
INSERT INTO region VALUES("4","NCR");



DROP TABLE rescued;

CREATE TABLE `rescued` (
  `rescued_id` int(11) NOT NULL AUTO_INCREMENT,
  `b_id` int(100) NOT NULL,
  `r_id` int(100) NOT NULL,
  `p_id` int(100) NOT NULL,
  `c_id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `midname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `age` int(10) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `statusid` int(10) NOT NULL,
  PRIMARY KEY (`rescued_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO rescued VALUES("1","7","4","8","3","ZjVkOGI2OTQyYzM2MDVmMw==RrfGh7ITSq1ikn+3fXdobQ==","NTFkMmMxM2ZiMjRkZjVkMA==4vX0iLnQP8zm9j+RnB3sBQ==","YzYxMDJhMjg4MjYwYjRjYg==E1gBOdW4Yo45kSAf+eOWMw==","8","Female","wearing white sando, black short, short hair, brown eyes.","3971902364_4b919cfd85.jpg","1");



DROP TABLE typhoon_name;

CREATE TABLE `typhoon_name` (
  `typhoon_id` int(11) NOT NULL AUTO_INCREMENT,
  `disas_id` varchar(100) NOT NULL,
  `typ_name` varchar(255) NOT NULL,
  PRIMARY KEY (`typhoon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO typhoon_name VALUES("1","Typhoon","Yolanda");
INSERT INTO typhoon_name VALUES("2","Typhoon","Chedeng");
INSERT INTO typhoon_name VALUES("3","Typhoon","Ondoy");



DROP TABLE users;

CREATE TABLE `users` (
  `user_id` int(100) NOT NULL AUTO_INCREMENT,
  `r_id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `c_id` int(10) NOT NULL,
  `b_id` int(100) NOT NULL,
  `eva_id` int(100) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(10) NOT NULL,
  `stat_id` int(10) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO users VALUES("1","0","0","0","0","0","","","","","","admin","21232f297a57a5a743894a0e4a801fc3","1","0");
INSERT INTO users VALUES("2","1","1","1","0","0","Denden","","Mercurio","09559316288","denden@gmail.com","Denden1584977","b70a93cb8dc357f848335c495925995a","2","0");
INSERT INTO users VALUES("3","1","1","1","1","3","jane","","salva","09559316288","Jane@gmail.com","jane4904077","9ccbf3b4a23db71d9735e2d0f5ea0e61","4","0");
INSERT INTO users VALUES("4","1","1","1","1","3","josh","","ban","09559316288","josh@gmail.com","josh4946867","f44b87d6878f825d59ccdc67f75b57b3","4","0");
INSERT INTO users VALUES("5","4","8","2","0","0","Jeff","","namit","09559316288","jeffnamit@gmail.com","Jeff7755636","bdfff69554b62a4b70df0e9c7812d3fa","2","0");
INSERT INTO users VALUES("6","4","8","3","0","0","adrian","","belmon","09559316288","adrian@gmail.com","adrian4767746","1215db8456ad0d658b5216e184d1a41e","2","0");
INSERT INTO users VALUES("7","4","8","2","4","4","jong","","hillario","09455716306","jong@gmai.com","jong6831827","21232f297a57a5a743894a0e4a801fc3","4","0");
INSERT INTO users VALUES("8","4","8","2","5","5","anne","","curtis","09455716306","anne@gmail.com","anne9640528","fa07bca7072d1a1c75708fe624c10c73","4","0");
INSERT INTO users VALUES("9","3","5","4","0","0","Diggie","Alz","Chua","09477779270","delosreyesmarc23@gmail.com","Diggie3207275","f612ca54280a2dde233ac8b0c561b1fc","2","0");
INSERT INTO users VALUES("10","3","5","4","6","6","Joyce","Tumbong","Santos","09477779270","joyce@gmail.com","Joyce5614477","b3a44a1a0b5fbf7c3db79db0ec958c38","4","0");
INSERT INTO users VALUES("11","4","8","3","7","7","xander","","ford","09455716306","xander@gmail.com","xander5807421","1bb1916e9c724a132f2ab107e276066e","4","0");
INSERT INTO users VALUES("12","4","8","3","7","8","Daniel","","Sugera","09455716306","daniel@gmail.com","Daniel5683662","ea17da171f2e85913c80b1e38d42e3fe","4","0");



