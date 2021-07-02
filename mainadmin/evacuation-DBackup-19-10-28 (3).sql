DROP TABLE brgy;

CREATE TABLE `brgy` (
  `r_id` int(100) NOT NULL,
  `p_id` int(100) NOT NULL,
  `c_id` int(100) NOT NULL,
  `b_id` int(100) NOT NULL AUTO_INCREMENT,
  `barangay` varchar(255) NOT NULL,
  `status_id` int(100) NOT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

INSERT INTO brgy VALUES("1","1","1","1","barangka","1");
INSERT INTO brgy VALUES("1","1","1","2","Kalumpang","1");
INSERT INTO brgy VALUES("1","1","1","3","Concepcion I","1");
INSERT INTO brgy VALUES("1","1","1","4","Concepcion II","1");
INSERT INTO brgy VALUES("1","1","1","5","Fortune","1");
INSERT INTO brgy VALUES("1","1","1","6","Industrial Valley Complex","1");
INSERT INTO brgy VALUES("1","1","1","7","Jesus Dela PeÃ±a","1");
INSERT INTO brgy VALUES("1","1","1","8","Malanday","1");
INSERT INTO brgy VALUES("1","1","1","9","Marikina Heights","1");
INSERT INTO brgy VALUES("1","1","1","10","Nangka","1");
INSERT INTO brgy VALUES("1","1","1","11","Parang","1");
INSERT INTO brgy VALUES("1","1","1","12","San Roque","1");
INSERT INTO brgy VALUES("1","1","1","13","Santa Elena","1");
INSERT INTO brgy VALUES("1","1","1","14","Santo NiÃ±o","1");
INSERT INTO brgy VALUES("1","1","1","15","TaÃ±ong","1");
INSERT INTO brgy VALUES("1","1","1","16","Tumana","1");
INSERT INTO brgy VALUES("2","2","2","17","Tinago","1");
INSERT INTO brgy VALUES("3","3","3","18","Adams","1");
INSERT INTO brgy VALUES("3","3","3","19","Bugnay","1");
INSERT INTO brgy VALUES("4","4","4","20","San Joaquin","1");
INSERT INTO brgy VALUES("5","6","5","21","Bagumbayan","1");



DROP TABLE city;

CREATE TABLE `city` (
  `r_id` int(100) NOT NULL,
  `p_id` int(100) NOT NULL,
  `c_id` int(100) NOT NULL AUTO_INCREMENT,
  `cities` varchar(255) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO city VALUES("1","1","1","marikina");
INSERT INTO city VALUES("2","2","2","Ligao City");
INSERT INTO city VALUES("3","3","3","Batac");
INSERT INTO city VALUES("4","4","4","Basco");
INSERT INTO city VALUES("5","6","5","Balanga");



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
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=latin1;

INSERT INTO constituents VALUES("1","MjRmNWE4YTcwNjdkMjliOA==SWMXipp4d1HdkFlxNd/V8w==","MGFlZTViZWMzYjUwMjllMA==ol21jQTpSUi+Cl+5aphdfA==","NzAxMDYwODgyZDk0NWM5Mg==kuoDJTi9knNyYVO4uk07bg==","49","Male","Y2JjZmJlOTU5YmNhM2E1Zg==nadwj9VGsIqSDfbQwQTTs4Or9564n9fYOSkj739FPOA=","1","1","1","1","0","1","3");
INSERT INTO constituents VALUES("2","YmYwM2UzNzQxYWUwYTU4Nw==FL2InLIVfoiWzjO/Qu+gMQ==","OTIwODIxZDQ4Yjk3MWNmMg==lahy6+0CHOUEqmJ+KoHWEg==","ZDVlNmE4ODJkMTg5MGRhMQ==fMVHVaJPhIs+gzt1zSx2pw==","50","Female","Y2JjZmJlOTU5YmNhM2E1Zg==nadwj9VGsIqSDfbQwQTTs4Or9564n9fYOSkj739FPOA=","1","1","1","1","0","1","0");
INSERT INTO constituents VALUES("3","YjIwODQxYjMyOWM5ZTYzOA==Dr6jYJJqHEYNMJkUpaNOAA==","ZjdhNjk1ZjA0OWY1Yjc2ZA==/8OqFBYasd0lfqu9xShHEQ==","YmY0NTZhMjNkYjQ3OTc1Ng==A57KZnO7s2+lUeLibfutGQ==","23","Male","Y2JjZmJlOTU5YmNhM2E1Zg==nadwj9VGsIqSDfbQwQTTs4Or9564n9fYOSkj739FPOA=","1","1","1","1","0","1","0");
INSERT INTO constituents VALUES("4","NWNjYWM2ZmQyOGU0M2NiOQ==V6lPPiiojvB+yeYxim7ZIA==","NTlmMDUyMDlkYzY2ZDM1MA==9JeVq8cVbueeUIZK5AeGrg==","MWI4NTRkOTAwMzNiNThlZA==RF1becu4vHWPBX9HREeI8Q==","9","Female","Y2JjZmJlOTU5YmNhM2E1Zg==nadwj9VGsIqSDfbQwQTTs4Or9564n9fYOSkj739FPOA=","1","1","1","1","0","1","0");
INSERT INTO constituents VALUES("5","MjMzN2NkOWRlZDE5M2JlYw==pWgpCUMbFhmSV+DZqX52jg==","OTM2MmM1NmZhOTM3MDc0Mg==uWDYF7iJ+41omoGDfFhmuQ==","NDViNGYwNDEyZWE5MGU2YQ==hxd3yzAXybapDQMEHKI00A==","45","Female","ZWU0ZDBiMWExNzllZGIzYQ==CEggGV90MyyADrkz6hAwgw==","1","1","1","1","0","5","3");
INSERT INTO constituents VALUES("6","N2U4Y2U0NzgwZWQ3NDFjZg==BcbuX/ff2njO/2BNiW1Qlw==","N2M2NDE5NDdiYWM4NDc1Yg==qatR8GUeTLArfaCbiccA3A==","N2U0OTE5MDNiMjExNTdiMA==zii5z5PqE4yfgXE4mxqNoA==","12","Male","ZWU0ZDBiMWExNzllZGIzYQ==CEggGV90MyyADrkz6hAwgw==","1","1","1","1","0","5","0");
INSERT INTO constituents VALUES("7","NGNmY2Q4ZWZmZTY0ZTVhZQ==2555Uurkfvc5+qvea6Jzvw==","MGU1MDc1NGY3MGJhZmNkZQ==9SA036HBrtN3FeXSSiD3qw==","YjMwOWRhY2QwNTViZTRlOA==mSX42/eKaRR8I/jY9Z98HQ==","29","Male","NThiOGZiODEwMzRlMDUwNA==F+OwfB257XNyt/ACMXoN2g==","1","1","1","1","0","0","0");
INSERT INTO constituents VALUES("8","ZmU4MDFiZGVkNWVhZjcwZg==kv54HvcE4xETJOs/+kxh8w==","ZDQyOWM0NWE5NjdhN2QzMw==vkIaC4zD4LWG3sgPajivcQ==","ZTk5MWViYjI0ZTI3NjNkZA==Dr3bAw7IxB2Blg2S8aK3Bg==","35","Female","N2NlZmUwNDE5MTE4MDI4Ng==qjT7m3OMUpYw7JZwi2D1nPrmqOiZ8GYTZEj0zCbxXxM=","1","1","1","1","0","0","0");
INSERT INTO constituents VALUES("9","MTc0YzJkNzM2YTBjYjk2MQ==f4mquvql+KvUBQO9vPqXGQ==","N2YzODg3ZTAxODEwYzJlOA==N9ZgqfGzR0V6t4yDT0saeg==","ZjcwYzAxYzBhMjQxZGQ1YQ==h6FPBbYgozrcViSDgMMF+g==","43","Male","ZTE4Yzg2NjQwZmY2ODcxOA==h3vbJVojxsC37jVz00Gqs8J5NEWuGHOjEjnbz+305Yo=","1","1","1","1","0","9","5");
INSERT INTO constituents VALUES("10","YzdiZjIxMjU5NzUwNWUyMA==bq9C7cfPnuZ6y2HjTyWFPA==","NTYwZmY1ZmZmMzdiNWJkYQ==LXmEjRt7DHK+rIlToSNStg==","ZWFlZWM4ZTFiODlmN2I5MQ==KaxM6FHWhPWpWierZaRU7w==","12","Female","NDk3ZTUyYzJkYzA1Mjk3MA==9aKNYOJHov5p76RHWo3Dah6Jrm5tkgC5lq/2KfmyySE=","1","1","1","1","0","10","3");
INSERT INTO constituents VALUES("11","NDMxYjRlY2VhMzMzY2Y0ZA==9HDsB/ot3giqLdBO2Pu2kA==","ZDg5YjJmNDRmZmM2NTY2Yw==/vi85sGGfe1T53+RyZmlSA==","MzljY2ZiNGVkYTZjYTBlOQ==sBOWQWdx+aXI+qXaaybCmg==","14","Female","ZTE4Yzg2NjQwZmY2ODcxOA==h3vbJVojxsC37jVz00Gqs8J5NEWuGHOjEjnbz+305Yo=","1","1","1","1","0","9","0");
INSERT INTO constituents VALUES("12","MTkzOWJhY2EwMDAyMTQ2Mg==wqM5lzpuOEpBPqDI/LkGzg==","NzJlNjFhYWE0MTg1M2U4Mg==WS55bn4Pe1UgcJKAV/GejA==","M2ZhZDdhNmQzZmM5M2I2OQ==YX4CicTpY1Twq84l69/4yg==","8","Male","ZTE4Yzg2NjQwZmY2ODcxOA==h3vbJVojxsC37jVz00Gqs8J5NEWuGHOjEjnbz+305Yo=","1","1","1","1","0","9","0");
INSERT INTO constituents VALUES("13","ZTExMzA0ZWUxY2JmMmU3Zg==XOt0+kBkESatn5Z7bh2KPg==","ZmZmMWFlZGE4NjhkOTcyMQ==Agfb5wHCYB/YtNGUQI3JrA==","MzhiOTQyNzc0NjRiYzI3NQ==xa/66m8/ASJKnSf5dBUMLg==","35","Female","ZTE4Yzg2NjQwZmY2ODcxOA==h3vbJVojxsC37jVz00Gqs8J5NEWuGHOjEjnbz+305Yo=","1","1","1","1","0","9","0");
INSERT INTO constituents VALUES("14","NzQ1ZDI1NmI4ZWVkNDE2ZQ==vPPbXlxT65LajdLni2hC7w==","NGU1MzBkNmIyN2MxZjliMQ==lrH4ZCpH7NpPc9PDIc5/5w==","YWZlOGM2NjNiOGM1YjNiYQ==FEznVdqsSlwUgOv54GiYBw==","27","Male","OTJjNTJjYmQxNzJmZDE4ZQ==2dobwX9VDHv3SaYdEeZsrar4+ujMuioX9RdVCCsSRMc=","1","1","1","1","0","14","5");
INSERT INTO constituents VALUES("15","MGYzNWMyZWE3MmY4NTIxNw==Y31CWIK1Duwo1tU3tPBljw==","MGNjNjVlMjIwNDE3MmJmNw==1jSoalr4Bfb6wTM2WFsZhg==","NDdlMjQwN2IxNjhiZmRiMA==c69GJwwKwVAu0JTv5jMvXw==","24","Female","OTJjNTJjYmQxNzJmZDE4ZQ==2dobwX9VDHv3SaYdEeZsrar4+ujMuioX9RdVCCsSRMc=","1","1","1","1","0","14","0");
INSERT INTO constituents VALUES("16","NjE1MDQ2YWY3OWZmYThhNA==7bclH6wyMz39+aKsaORFXg==","YzIyNDVmYmQxZmU3Mzg4ZQ==CqX0TiMD9GRGO+hoj4o0Rw==","MTFiNmQ5YTJiOTg3YjhlNA==cSl1eKr3V+/KoZ7rk2+gXQ==","3","Female","OTJjNTJjYmQxNzJmZDE4ZQ==2dobwX9VDHv3SaYdEeZsrar4+ujMuioX9RdVCCsSRMc=","1","1","1","1","0","14","0");
INSERT INTO constituents VALUES("17","Zjc3NDUwNDQwZmE0MTZjZg==vhllgIgYK7AMMq03D/gSJA==","MWY0MWZhYjZjNWRhOGYzMA==S8qjv/H02LuFx1IZmNU+Zw==","MzczM2VmNGI2MDg0MmRhMw==Ijza8WHghQ266KH30UkaJQ==","35","Male","NDk3ZTUyYzJkYzA1Mjk3MA==9aKNYOJHov5p76RHWo3Dah6Jrm5tkgC5lq/2KfmyySE=","1","1","1","1","0","10","0");
INSERT INTO constituents VALUES("18","Y2U3YTgxYzE0NTc3MGVjMw==NqvEujDRvwFCw8IJ+Ay1mA==","ODM0ODZlMWEzZmEwYjhlMA==Jh6wM5OBCQRrXvcpfvXtAg==","NjQzZjM5YmIxMWY3NjNiYg==3tcdl/rl12w0ibK2WB9OoA==","28","Female","NDk3ZTUyYzJkYzA1Mjk3MA==9aKNYOJHov5p76RHWo3Dah6Jrm5tkgC5lq/2KfmyySE=","1","1","1","1","0","10","0");
INSERT INTO constituents VALUES("19","NWRmMDM4ZGVkZDU4ZjY4MQ==/Y5j+2R/MSgKLzNFQapFtw==","MjgyMGY1MDgwZTI3NTFkZg==wHJ1gRLyodHVMwfQEudSyQ==","YzdlYjQ2YjA5ZWIyMGI0ZQ==vUpMuUzEYiDQiSyt0soi3w==","46","Female","YTEwYmVjYmQ2Y2ZmNDIwNA==m4wPVkrb9biOCECYMtcIf3sGNGS1c/CMzHwC1BTOCxY=","1","1","1","1","0","19","3");
INSERT INTO constituents VALUES("20","YmQ1N2VjZGEwNDZkZGU5Mg==DjiXVeOWMN2Pb4LZzmDsKQ==","NTlmMTZiY2U0MTI4MTNlNQ==PaOx29gpSvO61+SrZwlkGg==","YjNjZDE5ODBjYjFhYTM2MQ==fpzkMpSSeom+1OgPIWWXOQ==","30","Female","ZmM2NjkxMTM2OGZhNGI3Yw==IqhdoziIkejxwjwRVzApSR/+BMJ3nLz3cOmHoti8LZo=","1","1","1","1","0","20","5");
INSERT INTO constituents VALUES("21","NmJhOGJmN2UzYjI2MzljMA==pN6F1Uk5XENOejuzY/bdvA==","OTE4ZjE1MDZlYTk5NzM1Yg==XJPytZ32MFwGj5X772CDmQ==","MDQ3MjExMDI1MmJmZGZkYQ==lk4N17NI2U3y8CZCIpv9mA==","32","Male","YTEwYmVjYmQ2Y2ZmNDIwNA==m4wPVkrb9biOCECYMtcIf3sGNGS1c/CMzHwC1BTOCxY=","1","1","1","1","0","19","0");
INSERT INTO constituents VALUES("22","ZmIwNDMyYzIwMzI3ODg3Yg==7JJRdEwisWaPctC1nNcpIA==","MTEwNjdhZTdjNGFkOWQ1Yw==Xinyts0CEStvltwLHAyj0g==","NzQ0NjQ3ZGY3NWJkNzgxYw==HQO3qOaP2Vb87DzXeAKUCA==","4","Female","ZmM2NjkxMTM2OGZhNGI3Yw==IqhdoziIkejxwjwRVzApSR/+BMJ3nLz3cOmHoti8LZo=","1","1","1","1","0","20","0");
INSERT INTO constituents VALUES("23","NDEzYjI4MWQyOThiZmI2Yg==zA0zPQHhPXSHgqfRJCSSFQ==","NzBjY2U3YjE1MTRkYjhjMw==B3A6xNvNOKUtGZ7ZY7aaMg==","ZjdhNTk0ODE3MWY0MTZjMQ==p720ciFILQXrIhnMMHniOA==","44","Male","ZmM2NjkxMTM2OGZhNGI3Yw==IqhdoziIkejxwjwRVzApSR/+BMJ3nLz3cOmHoti8LZo=","1","1","1","1","0","20","0");
INSERT INTO constituents VALUES("24","ZTFhMDI4YWYzODA4ZTc0OQ==M8e9tlD23tcSjYd1daun1Q==","YTZlMzk1M2FkMWFmOTllMw==8Q4fQnHebZ5HFCocHBhAvw==","Y2I1ZTU2Yjc3MmIxMmQ1YQ==4mzALGSw7XTqLbmyrwBLzw==","67","Female","NDZkNzI1N2I0MDA4YTE2ZA==tpe9QTfSolBQW/H8E+wgvugvGZYpArpFRhLfMVZVoJ4=","1","1","1","1","0","24","5");
INSERT INTO constituents VALUES("25","MGNlNjRiMjliMWU1MjIxNg==ifl53vWbmK5neNzw1IqnNQ==","YTFjMzNhZmQ0OTE0MWYyMQ==Nym53tMZE51ygaKsBfBYTQ==","MWVkNjQwMTgxYTJlYzg4ZA==9QrTmCZ8pKtBG146234PLQ==","25","Female","NDZkNzI1N2I0MDA4YTE2ZA==tpe9QTfSolBQW/H8E+wgvugvGZYpArpFRhLfMVZVoJ4=","1","1","1","1","0","24","0");
INSERT INTO constituents VALUES("26","MmExN2UyNTUzYWI4MGJjNQ==dHru1bamLZwKAHpdeOWxcg==","OWNkM2ViMTVkOTNiZGZlYg==2hdXqy/r6j9KZfbviJaRQw==","NGUxMDc2MzY3MTdlYmJlMw==IhNdi6k2NodIPZU0xineBg==","28","Male","NDZkNzI1N2I0MDA4YTE2ZA==tpe9QTfSolBQW/H8E+wgvugvGZYpArpFRhLfMVZVoJ4=","1","1","1","1","0","24","0");
INSERT INTO constituents VALUES("27","ZDNhYmMzNmUxMDczZjE1NA==odI3mZROIdz3Ja4wuymirg==","ZGE5N2ZhMTgxMDgzY2ZlYg==0ilsirRLtVQtZMVFu8ZXuw==","MTM1ODgwMzNmY2RkZDA0ZA==Mah/7aSZV4RbxzRlt+520A==","70","Male","NDZkNzI1N2I0MDA4YTE2ZA==tpe9QTfSolBQW/H8E+wgvugvGZYpArpFRhLfMVZVoJ4=","1","1","1","1","0","24","0");
INSERT INTO constituents VALUES("28","YjEyYmMxMDE1ODI1MDU5OA==njBnqlltnT9wIOJ9+9RVrQ==","OGU3NGRmNDY4ZGU4Y2QyYw==pxu/fWU74kURJwPPwk//mQ==","YmEwOThmMjllYzc3ZTUzYg==EQhtVjTYowgkpX1a/5Qt2g==","29","Female","YmVlMjE4ZDk0ZmRlZTc4Zg==u2v4TbI2eGGAZxSpGbP30CycQgcH9XI0NJT4Fl7pkkQ=","1","1","1","1","0","28","5");
INSERT INTO constituents VALUES("29","ZTI1MmJiMTQwM2I4MWM0YQ==EgYSypq/WS5UuxW0NJV06w==","NGEyMTI2YjBiZmFiZDk4Ng==7Av6v0zW8mju87Ox/52AQw==","NmFjMDdkM2MzYmNlOGYzMA==r3EAp7LxJF/DjuxEugSCEQ==","32","Male","YmVlMjE4ZDk0ZmRlZTc4Zg==u2v4TbI2eGGAZxSpGbP30CycQgcH9XI0NJT4Fl7pkkQ=","1","1","1","1","0","28","0");
INSERT INTO constituents VALUES("30","YmYxODhmODU5YTQyYjNmZA==Ww292s3n2/6uTP+z9qnLyA==","YmJiZjJjZTlmOGNlNDIxNA==1plNM8eXUvaSZGBXrJAk3Q==","ODYyZjE1YzA1ZjRkMGQ3YQ==2+RIWYb4NL/QDTucXnD2iw==","11","Male","YmVlMjE4ZDk0ZmRlZTc4Zg==u2v4TbI2eGGAZxSpGbP30CycQgcH9XI0NJT4Fl7pkkQ=","1","1","1","1","0","28","0");
INSERT INTO constituents VALUES("31","NjhlZmM3YzBhNTcxZGQ0Zg==l5wnQTG8ikhkt6vEpNmdpw==","ZmFmNDA3ZDdiYmE2MzEzMg==0av5TgGsnsjAlaws4pbSGQ==","MTg2MzhiMzU3MTkxYWMyMw==NJe1Pvz7+avQieDp8shMig==","6","Female","YmVlMjE4ZDk0ZmRlZTc4Zg==u2v4TbI2eGGAZxSpGbP30CycQgcH9XI0NJT4Fl7pkkQ=","1","1","1","1","0","28","0");
INSERT INTO constituents VALUES("32","ODAxOGYyYmFlNjQwOGE5MQ==Ckqqu+NAjHPXvrqQn3N1BQ==","Yjg3ZTVlYWRkZDY5MzZkYw==/7n1Ca4fl2lWSViv9cGCXw==","NGY0MjcxNmQ3MzIwNmEwMg==Ma/YMITPdBVo/biGG4dZgw==","44","Male","MTZjOWRlYTgwODBlODFiOA==VMGAhACCZ7SQ5Fyl8D+mmN93AbZ32+4s/zKQaDYmai0=","1","1","1","1","0","32","5");
INSERT INTO constituents VALUES("33","MDMxNjM3YmZiYzg2ZDBlNQ==OM9iWSgxLxpeDEHMLMygGA==","ZWY3NjdhNGNmODRkMzU4OA==P/Z6rdv3ZixW3sj/77/cFA==","ZTc1YjM1YzRjNzg3NGRlMg==KLRyGRXxFuYHtY4iOfqb8Q==","9","Female","MTZjOWRlYTgwODBlODFiOA==VMGAhACCZ7SQ5Fyl8D+mmN93AbZ32+4s/zKQaDYmai0=","1","1","1","1","0","32","0");
INSERT INTO constituents VALUES("34","YmUzODJlMzkyZWQzODkyZg==nqNMRFALT75c2zO/BVrw7A==","OWEzYzE3Y2ZiMWI5ZDlkYw==l5ITQnzfI+aGBk/u/kauGg==","ZWU1MWU3NmJmYmFhMjEyZA==ag41U6J6tETOItFRfGQHUw==","11","Female","MTZjOWRlYTgwODBlODFiOA==VMGAhACCZ7SQ5Fyl8D+mmN93AbZ32+4s/zKQaDYmai0=","1","1","1","1","0","32","0");
INSERT INTO constituents VALUES("35","NzQzMmM4MWMzZGNkMTJmMQ==4MTcbU1jPyzRwqqfjcOvXQ==","Yzg3ZWNiNzk5NWVmNDdhMw==3zR2MyCUjhdRA8tu/sfb5A==","MDIzZTY1MmMwNDA2NGMzOA==DfThxK5eVKfGqI7+8WRbRw==","69","Female","MTZjOWRlYTgwODBlODFiOA==VMGAhACCZ7SQ5Fyl8D+mmN93AbZ32+4s/zKQaDYmai0=","1","1","1","1","0","32","0");
INSERT INTO constituents VALUES("36","Nzc0NGQxNTViNTZhNjE2ZA==NTNWeXJWJR5Mjdjjw6TQ+w==","ODk1M2ZjMmE2ZjJiODY0NQ==bvivlIcl/CnI6RJN8BFZ8Q==","YjlhOWY3NmZmNjM5NmJiNQ==oSQJWC1R6Lo9kZFNIbGD5Q==","31","Male","NjBkODk3NGI4MzU2YjIxMw==ji/o1wxantmseySvItO9ijjXPiNXxHYsgPmC/tMF+bM=","1","1","1","1","0","36","5");
INSERT INTO constituents VALUES("37","NjZmOTlmMTE0MDMzOTBkNg==IeE3578hzsTlYfhkx+uQnw==","NzUwN2ZmOThiMzIyY2M2Nw==x9PGjb/0584/KIiMvIrfBw==","MjIxYzkzMDdkZDRjM2MzMQ==0Mr4fQity9J6eX180GdO/g==","25","Female","NjBkODk3NGI4MzU2YjIxMw==ji/o1wxantmseySvItO9ijjXPiNXxHYsgPmC/tMF+bM=","1","1","1","1","0","36","0");
INSERT INTO constituents VALUES("38","MmM1NDE4MTljY2ZjZDcxOQ==JxDmlTmuKjlHPszRPnH2hA==","OWRlNjgxNGVhMWViN2Q3Mw==J1AcY9J3rY6QjuEw4F+51g==","YjNiY2QwZGVmODk0OTU4MQ==I2AVr4i+RfLo0HLvKi2R7w==","2","Male","NjBkODk3NGI4MzU2YjIxMw==ji/o1wxantmseySvItO9ijjXPiNXxHYsgPmC/tMF+bM=","1","1","1","1","0","36","0");
INSERT INTO constituents VALUES("39","ODZjYWRjYjgxMjI5OGNiYw==YtzmPbVxz9JJdGz6heT41g==","MjJlZGMxZDczNGNkOTdhMg==5uteX6wQZZmyXWUlgRBctg==","NDMzMGJmOThiOTBiMzYwMA==8+vPjnhtrfjuxPnwwfUPIQ==","33","Female","YzUwNjIwZWViODkyMDYyMA==tjFRZXsitdkqZk5wDgOLdNpEBIj4YOSnoxnYX7MP6qI=","2","1","1","1","0","39","6");
INSERT INTO constituents VALUES("40","ZmYxZDRjMDdmMGIxNDI1Mg==akzde7RgGIrqdotrykOvWg==","YzYzMWNmMmM1OGJmNGU3MA==hXk/XK70HFMNQmOdElg7Mg==","NmExZjUwZmFkMjI3NTEyNw==EfVtJT/DCCcYjin0w8myqQ==","9","Female","YzUwNjIwZWViODkyMDYyMA==tjFRZXsitdkqZk5wDgOLdNpEBIj4YOSnoxnYX7MP6qI=","2","1","1","1","0","39","0");
INSERT INTO constituents VALUES("41","ZTU2NzBhYWM3MDFlNmE4Yg==vKU49Brm2Li5WNHlBu0leQ==","NmUxYTU2ZGM1ZDZjZmYyMg==zQOcHz6YF/BTutIH/UAD3A==","NGEwZTFkNmE4NjgzOGNkNQ==Vlc9guaIiE1OVqb76xugyw==","44","Male","YzUwNjIwZWViODkyMDYyMA==tjFRZXsitdkqZk5wDgOLdNpEBIj4YOSnoxnYX7MP6qI=","2","1","1","1","0","39","0");
INSERT INTO constituents VALUES("42","NjZlYjc1ZDBhNzczMTVmNg==rF6LifqKlqeTDtVcApzxHg==","OTZhNDRmMmFiOTcwYTIyMw==aB6nz17rC439oQw76uo6/g==","NjFmNjdhYjY5MjE2NDRiNQ==smQlqDFkej/HUZ9vPgwufA==","12","Male","YzUwNjIwZWViODkyMDYyMA==tjFRZXsitdkqZk5wDgOLdNpEBIj4YOSnoxnYX7MP6qI=","2","1","1","1","0","39","0");
INSERT INTO constituents VALUES("43","YTlhZjcwNzlhNDcyZjU1YQ==1W1CvqPnK0X+P4/Y6nALFw==","ZGE1MmRhM2M3ZTdmNzhlMA==DTAS6xsEvTQpDLCLS9jVVQ==","ODM5NDY1OGJkNDkxZjUzYw==Wtcc1eZbHpiOFItIBlTJKw==","64","Male","MWE2ODFmMjI5ZjZiYWQyOA==LgQU43XfYFaxqk/8lJwtJ26wPmOx6aLsDl0Sz9s94jc=","2","1","1","1","0","43","6");
INSERT INTO constituents VALUES("44","YTMwNmI3NmE1N2RkZGI0Nw==9CvCskGKG44Fi8YIN23WPg==","NzQyYWNjNmE1MDdiOTQ4Yw==jbuaDBELD4SEgRKmEVbLgw==","NzNjZDA0ODNiZjUwOGZhMw==FYgnI56M54xemoVAWds6KA==","52","Female","MWE2ODFmMjI5ZjZiYWQyOA==LgQU43XfYFaxqk/8lJwtJ26wPmOx6aLsDl0Sz9s94jc=","2","1","1","1","0","43","0");
INSERT INTO constituents VALUES("45","MzI0YjYxMmIxYmM2MWQyNg==1rwjpiwgmcFtuRPUlAJcVQ==","ZjA1M2IyYjlmNzY0ZDNiYw==FufF/IOxI18BGfmAdS4LGg==","NGE0NDNlZDkyYmU2YWI0YQ==Lb3kyzrdd/HUsAjYTivL4w==","21","Male","MWE2ODFmMjI5ZjZiYWQyOA==LgQU43XfYFaxqk/8lJwtJ26wPmOx6aLsDl0Sz9s94jc=","2","1","1","1","0","43","0");
INSERT INTO constituents VALUES("46","NDE3MzkwYjUwNjJjMTgxMg==rqIC3t7BTR9VYmJz5hheiA==","YTAxNzc3ZDQ3YWE3NmVkNA==esGHKcsrDbZnwlGHUGpRXw==","ZTFlM2YxODk2NWYyNTg3ZQ==1i3fUjBbBJEm+6q7hUMwPw==","17","Female","MWE2ODFmMjI5ZjZiYWQyOA==LgQU43XfYFaxqk/8lJwtJ26wPmOx6aLsDl0Sz9s94jc=","2","1","1","1","0","43","0");
INSERT INTO constituents VALUES("47","YTY3MmE4NGM0Y2Q2N2EwMg==ES0U7b3QRVgGvPhVD8+gPg==","MDE0NGRiM2NiM2ZmYjI4Mg==zj2PMnYZLsgkqGruMzxpNg==","NTA3ZGRhNmYzOWUyN2I1ZA==pfaVNL2eQ1M3tJVZzsb97g==","32","Female","YWIwMzFhNjdhYjNkYzBkMQ==/ZWqwB0eF4gwzgJnYauu/zahlvyKEVHP8gWSzuZrUOY=","2","1","1","1","0","47","6");
INSERT INTO constituents VALUES("48","ODQzMjlkNzk4YzllYTI2OA==EJknkTreS/X+lb810I3A0Q==","MTU3N2RjZWZjODczN2YzOA==rX6AWLiAGaV/bnW1ENkurw==","MWI1YzFhZWFjYTBiNDU5Yg==e1FqU78GRj/Txvixa2rdcQ==","8","Female","YWIwMzFhNjdhYjNkYzBkMQ==/ZWqwB0eF4gwzgJnYauu/zahlvyKEVHP8gWSzuZrUOY=","2","1","1","1","0","47","0");
INSERT INTO constituents VALUES("49","NTQ0NGEwMjllMjQ0OGU2Zg==81CzuXr4OgROMxDBr51W5Q==","ZTQyOWZlODNiOTUzYmZmMA==P09BNj6jjElTR+LDe50b/Q==","YTlhNzQ1NjdlMTFlZTgxNg==ySR94G8uYnc3qH3hkRrnkg==","34","Male","YWIwMzFhNjdhYjNkYzBkMQ==/ZWqwB0eF4gwzgJnYauu/zahlvyKEVHP8gWSzuZrUOY=","2","1","1","1","0","47","0");
INSERT INTO constituents VALUES("50","OTcyZTgwODZlMjUzNzRjNg==nwJCOvyZC2s9RXJ7K4D1jQ==","NDhhNTU0NGRhYTc0MzZjMQ==U+U8B8F9Im8rbTWM2xc35Q==","YTc4NjE2YzE1ZTE4ZjQ0MA==jJ28T/niEDIVHLWVcCW/5A==","24","Female","OTA3NzcxMzdhNTIyMThjNA==HjroK0oEmxRrIRKPCZPmh0HQAmqUUOtC61nTmcXGko4=","2","1","1","1","0","50","6");
INSERT INTO constituents VALUES("51","ODdiYjAwNDhkNDMyMzA4MA==CBh2mt/sRTGWL8SFKruVuA==","ZDQxNzI2MzI3MWUyZWY3Zg==fzRs4gPWzLGXX2El1F53xA==","OTliYjYwMmJlY2FjNmFlZQ==HGAeHku3hVBAMe9GxHBLHg==","2","Female","OTA3NzcxMzdhNTIyMThjNA==HjroK0oEmxRrIRKPCZPmh0HQAmqUUOtC61nTmcXGko4=","2","1","1","1","0","50","0");
INSERT INTO constituents VALUES("52","MTc2YWU1ZDFkZDI4MDdiNg==5hL7/MyBOfmX8dDu6YSHhQ==","YWVmOTMyZjU5YzE1YTliZA==YDhtSFsREZauLorbKUrPQQ==","ZmNmNmI5NGIxYjI1NzBhNQ==rOChmpVFtsJW6z78JuWCrQ==","5","Female","OTA3NzcxMzdhNTIyMThjNA==HjroK0oEmxRrIRKPCZPmh0HQAmqUUOtC61nTmcXGko4=","2","1","1","1","0","50","0");
INSERT INTO constituents VALUES("53","ODg0YTBhMmE1NTU5MWQ5MA==QgCAGvq9H3Xi4sW2Qs/j2Q==","ZWJlNTY5Mzg3NTQ2MTUzNg==9lkADPku5NF2mK6myX5NZA==","ZjE4OGE3ZTM4Nzg2YmYxYg==Wri3lT9dqER5QruBYohVlA==","25","Male","OTA3NzcxMzdhNTIyMThjNA==HjroK0oEmxRrIRKPCZPmh0HQAmqUUOtC61nTmcXGko4=","2","1","1","1","0","50","0");
INSERT INTO constituents VALUES("54","NzgxOWI2M2M5NzVhYzQxZQ==F7003vOAKnw60PV7R0tTwA==","OWUwYTY3OWRjNmQ1ZTYyNg==5rmRvsDuOCqQm3Uzvp4H6A==","OWEyNTVlZDNhYWQzYTljNg==9JY1hB8UCXHm7HObjWdWuQ==","19","Female","ZjYyMWIwM2YzMGM1ZDg2Yg==k88TZlzi66+Ccg/x72WgkIJIcxOg+w7QwqM23ECwqXQ=","2","1","1","1","0","54","6");
INSERT INTO constituents VALUES("55","YTRjNGRmZGI2MDI5MTE5YQ==eEGFCqEfACjnGm6FPCPORg==","NTY2MzRkZjAzNjc4ZGFhMA==i9+EGpHFxjxCfxzHQCwf8Q==","OTRiMDlhODE3MTYzYmRjZQ==xlmKVx0JVuuuC6s+WbtZhQ==","3","Female","ZjYyMWIwM2YzMGM1ZDg2Yg==k88TZlzi66+Ccg/x72WgkIJIcxOg+w7QwqM23ECwqXQ=","2","1","1","1","0","54","0");
INSERT INTO constituents VALUES("56","ZjU1NTBkYTJlNTczZDViMg==Y5bpUMIIl+a4szO6h+q4hw==","YTBiYzU0ODZjMjg2YzBhZQ==wME6RrDwSMTygeKWShOS6g==","ZTljM2Q0OTMzZGRjYTlhMA==yhMCJUiVtdPD/zxUzJmMSQ==","29","Male","OTMxN2JhY2E5N2EzNTQ5Yg==pRRvNrLOC0SkZLTaN3/KhJCQ0D6Y0RDtgBnjRnQEchI=","2","1","1","1","0","56","6");
INSERT INTO constituents VALUES("57","MDMwMjg4NDFjYTYyM2MzMA==UG6XBqv57OAOJyDXWSbeew==","ZGJmNmRmNGRiYTI5NzdmNA==R/hbcvig0qq2IFlIifqxmw==","ODQ2ODI4YzRhNjAzNTRhMg==bAxa2aPaLTIRsaBzCMNMjw==","10","Female","OTMxN2JhY2E5N2EzNTQ5Yg==pRRvNrLOC0SkZLTaN3/KhJCQ0D6Y0RDtgBnjRnQEchI=","2","1","1","1","0","56","0");
INSERT INTO constituents VALUES("58","NDdlY2ZjYmU1ODBmYzU3OA==fQHJruOM8y7h+HOJUkTYcw==","M2Y1ZjliYjM1NTE1NzZhZQ==oW9iC54/ZUWmsU6MN9vZQQ==","MjcwZGNlYmFjYjBhZWQ5ZA==Od8XpSwfjMXHOYzmdV7MWg==","6","Female","OTMxN2JhY2E5N2EzNTQ5Yg==pRRvNrLOC0SkZLTaN3/KhJCQ0D6Y0RDtgBnjRnQEchI=","2","1","1","1","0","56","0");
INSERT INTO constituents VALUES("59","OWY5NjRmMmE4NDVlYjI3NQ==9x5ypiMoC1FQ45GFSxp4pw==","NmM4NGY2NDQwMGUxMzI1NQ==UW3cJwG869TToPCTpHv66Q==","YTRiYmFlMmQwYTllNTU2Mw==Y5mBZ+UA8a8AiQTIF6SY9A==","30","Female","OTMxN2JhY2E5N2EzNTQ5Yg==pRRvNrLOC0SkZLTaN3/KhJCQ0D6Y0RDtgBnjRnQEchI=","2","1","1","1","0","56","0");
INSERT INTO constituents VALUES("60","MDcyZjQ3MGFkMjU2Mzk3MA==eZKQleoUJrYnrC2sAmmchg==","ZTgwYjA5YzZmYjgxNTgxZQ==4hiGsgwNSjuHfEhC6CIkaA==","NzJiMDk2YTcyMWJkZmM2NQ==WGRcFks/x/n+Z03OZdOiaw==","35","Male","MjE4NGMwZmZmZjE1Y2IyZg==is0bLAwny8iZzQGz3+71sOF0VTJ8ug8t0NPJ0MgSiiU=","2","1","1","1","0","60","6");
INSERT INTO constituents VALUES("61","MzM4OWI5MTBhZDRjMTQ4OQ==l58poTw9m6FZG2nH84w50Q==","MGE4ZjdhMzY2MTE4ZjE5OA==Kh05IYVm+kg1b+6yQZdjaw==","NzA3OWUxOGNhZGEwZTU4Ng==3q9NHRaqsAkoJAA20Y0D7w==","26","Female","MjE4NGMwZmZmZjE1Y2IyZg==is0bLAwny8iZzQGz3+71sOF0VTJ8ug8t0NPJ0MgSiiU=","2","1","1","1","0","60","0");
INSERT INTO constituents VALUES("62","ZWI0ZGQwNDc4ZThiZjVmYQ==oaJdropy27XXx5OSF7I8xA==","OTY3YTExMzg5ODdjOWY4Mw==hiw2xV/wl4QE5bRYQVhuQA==","MDY4NTFkODM1MTc4ODMwNw==jR6Hn/2eGvrCp6tPiSOz1w==","11","Female","MjE4NGMwZmZmZjE1Y2IyZg==is0bLAwny8iZzQGz3+71sOF0VTJ8ug8t0NPJ0MgSiiU=","2","1","1","1","0","60","0");
INSERT INTO constituents VALUES("63","ZmViMDY3NTBjZDNhNDQ0ZA==LqcwxKRqX93lXM9GjUJdbQ==","ZTFmYjdkZWZhNDliMzllYg==3ABKKvTWe7QKVsTkrV9P3w==","ZWMwZWMxNWQ1OTAzYjQzZA==iwhftiEmccY/B0oJaiuoWw==","41","Male","YzcyOGUzNTgzZmVhYThlNg==dOA1e9gFW70DzLL7iRLlQQNA/GSESY2nXjQzkCs7dO8=","2","1","1","1","0","63","6");
INSERT INTO constituents VALUES("64","MzY3YzBiODJkNGRlZDgyNA==wVXAoqX5q9fauxCNCMR11w==","M2NjYjU5ZWE1NjVlMmQ4Ng==URggIwrDH/2XoTEL1M5Y7A==","Y2E3NDM2NDZlMmU5YWZhNw==j9mBhPQ5ynNBQy3E+joHbg==","35","Female","YzcyOGUzNTgzZmVhYThlNg==dOA1e9gFW70DzLL7iRLlQQNA/GSESY2nXjQzkCs7dO8=","2","1","1","1","0","63","0");
INSERT INTO constituents VALUES("65","MzIzNzY5ZDk4N2E3ZjNkNQ==5PgLLkElCRWMO4Xc6L2IVg==","NTZmMWI5Nzg3NzM5OGYzMA==sY3n/UqfUkzMpSPmlZG5BA==","YWRhYmU2YjVhNzU3YjU5ZQ==03Pe9Qe4uZG3DKIahNRM3A==","12","Male","YzcyOGUzNTgzZmVhYThlNg==dOA1e9gFW70DzLL7iRLlQQNA/GSESY2nXjQzkCs7dO8=","2","1","1","1","0","63","0");
INSERT INTO constituents VALUES("66","NGI2OTY5YTc2YTgwNDIwZQ==fqdgWeRgsWcuLQN2triATw==","Y2M2YmU2MjJmMjg0OWI2ZA==kbYA120LXGHQWUOh8BL01w==","YjFiOTViYzNhYTJjMzI5NA==oLFI4A1qkwpLRPhaxHbUOQ==","36","Male","MjAzMWY4ZGUzZDA4Y2Q3Mw==qd2QAqhoci1rxamnGfa4UcykNrEvhrZ2PPOArrOeRNs=","3","1","1","1","0","66","7");
INSERT INTO constituents VALUES("67","YTA2M2Y5ODY3OGU3NWVmZg==sYR2jFRca6Q7y86bIgD3Qw==","Y2Q2NDIzMzRiMzk1MWU1ZQ==6J9snl4O6UHhZ+dAzLqA5w==","ZWZiNjI5ZDJiZTVlMjY1OA==MRoiyQH364tCr9Dr/GK9Ug==","35","Female","MjAzMWY4ZGUzZDA4Y2Q3Mw==qd2QAqhoci1rxamnGfa4UcykNrEvhrZ2PPOArrOeRNs=","3","1","1","1","0","66","0");
INSERT INTO constituents VALUES("68","MmUzZjc0YmM2NDVlYmIwYw==/4IMG2vJhECGU2ObpWpSiA==","YmQ1ODdlZDQ5MjhiZTE0Yw==ttB5aizmJJSEvtfJBV0SRQ==","NTZmZDUxYjZlYTcwYjU2Yw==EV43QP/LejOMEcIvn1JZdw==","13","Male","MjAzMWY4ZGUzZDA4Y2Q3Mw==qd2QAqhoci1rxamnGfa4UcykNrEvhrZ2PPOArrOeRNs=","3","1","1","1","0","66","0");
INSERT INTO constituents VALUES("69","YjRjYWQ1NDJhOGZmNzI1Yg==doysdV9gNRhPGD+an8ePHw==","NjBjNTNiNzhlMzJhMzk5NA==ex2+DQBMp/TTBGJtKmQ2nA==","ODQyMjc0OWY5YjAzMTgxZg==bmU8gIatMp9CZrQLp8NDIg==","25","Female","NzU0ODBmOTNmOTYzY2QyZg==diFyBwyuhtaq0CjKtFxnhVIM8yhQX0IkngJLB86c+vE=","3","1","1","1","0","69","7");
INSERT INTO constituents VALUES("70","MDZlOWE2MzdiYjQ2NTVhMg==t6XkekZWLHRrgF/DewQL9Q==","ZTRiYmRkNjZlMzUwYjdhMg==HaQzhn9MEI34myZKIa8DEA==","YjZlMjhkZWQ5NzIzMGFjZA==gpk0WCNihXGC7ZG6d0b0OQ==","4","Female","NzU0ODBmOTNmOTYzY2QyZg==diFyBwyuhtaq0CjKtFxnhVIM8yhQX0IkngJLB86c+vE=","3","1","1","1","0","69","0");
INSERT INTO constituents VALUES("71","NDcxMjk3N2I1MGE1MTA3OA==vVOc418iKPkHWqplKvovpQ==","NTc0YmZiZDA2N2EyYTc5NA==/dxrelNQ3SWJAznz93ruCg==","YjZlZDI3MjQ3YmNkNTJjYQ==HlnIMMgYBeH78Kr897R7rg==","23","Female","MzE5NGNkNjdiZTYyMzk2Yw==dTotOe9v6ykKmUwCT2GYOt6zssrFE/Yhw81Z4E/UX3s=","3","1","1","1","0","71","7");
INSERT INTO constituents VALUES("72","OWI4ODRmN2I3MDJlZTBmMg==TiZZBkeYW16K7D5U5I1fNg==","MTNlZmZlNDhmYTUxMTYzZA==+sWjJIDS62Tq1yBAA2ISvg==","MGI0MTMwZjljODFjZmM4ZA==TPu6ihnUcqAvS6ww1Ag/4w==","1","Male","MzE5NGNkNjdiZTYyMzk2Yw==dTotOe9v6ykKmUwCT2GYOt6zssrFE/Yhw81Z4E/UX3s=","3","1","1","1","0","71","0");
INSERT INTO constituents VALUES("73","OWZmY2JmMGVlYzA4YWU1ZA==5QXVRuwiBMotIdLKW1XF+Q==","ODFkYTNmOGEwZDNjNjQ2MQ==/T8KSxa+1fai2efgImHxwA==","NzNmOTViOTAzN2MzNjczMw==MpQU/Y58BYCGp2NdrfOnmg==","5","Male","MzE5NGNkNjdiZTYyMzk2Yw==dTotOe9v6ykKmUwCT2GYOt6zssrFE/Yhw81Z4E/UX3s=","3","1","1","1","0","71","0");
INSERT INTO constituents VALUES("74","Nzk4MTJlMTEyYzM4NTU1MQ==4UhFhrX6pr14iiGv238OLQ==","ZWVhMmRiOTBhNWRhNDU3NA==PScHxrRt8sRLovfNI23E/Q==","YThhYTZmNmE3YzFiNWEyMg==S0E1w3sHvDfGAf3Ao89Pxg==","25","Female","ODRmNjJjYjQzN2UyNTcwYg==bFIU8i0YAfw4GUyOvp6jsr2tQQ74hFb0QwfOLoXMFtE=","4","1","1","1","0","74","9");
INSERT INTO constituents VALUES("75","NDE5MTM4NzkwOTg4YjM1Yw==87SOv4dJ5rzjVJGzK39/sQ==","NjAxZTM1OGZkY2FjNmUxNQ==prUTkNo+C5OQfej5TChduA==","ZTM3ZjY1Mjc5MmYwMjcwMQ==jVOdo5vRq+peHE4Q2nwoFw==","7","Female","ODRmNjJjYjQzN2UyNTcwYg==bFIU8i0YAfw4GUyOvp6jsr2tQQ74hFb0QwfOLoXMFtE=","4","1","1","1","0","74","0");
INSERT INTO constituents VALUES("76","NjliNzFlZTc4OGFhYzY3YQ==lkcN1UHjIKxFR9Gq6FCYkg==","YzcyZjFiZGZmNDFjNDA4Mw==WHaQhw+b0MNBSqwuAVfRLA==","MDI5MTIzZTE4YWU2MzU4NQ==s5g/X0NK7/T24YL9cKU4Fg==","33","Female","NzAyNjczNGYyNGNlMmQxNg==ypZfbH1TiM40vsCdvedfUKBOLcKoi6dW6clbOGYPC/U=","4","1","1","1","0","76","9");
INSERT INTO constituents VALUES("77","ODhiZGZiYWU3ZTU1MzgyNQ==X/+naaY3WUt2suhhBZ9agA==","MzYwNTgwNjlkMWRkNmM4MQ==nFIChmaAslebxRkR266irA==","NTU0NWU0NmJiNTQyMjdiZA==TKpjFGdiRS11osJm/bjNQg==","12","Female","NzAyNjczNGYyNGNlMmQxNg==ypZfbH1TiM40vsCdvedfUKBOLcKoi6dW6clbOGYPC/U=","4","1","1","1","0","76","0");
INSERT INTO constituents VALUES("78","ZGU4NzQxMzA4ZDI2NDJkMA==3WhEL1yrWo9EaAe31Z5MXw==","MmFjN2ZkNjRiZjdmZDQwMA==CohDZwdxFnrYbitErjjA6Q==","ZmEyMmUxZDk2NjQyZjVmMw==JOULJfhT3iQe1BCEpJbEjQ==","9","Male","NzAyNjczNGYyNGNlMmQxNg==ypZfbH1TiM40vsCdvedfUKBOLcKoi6dW6clbOGYPC/U=","4","1","1","1","0","76","0");
INSERT INTO constituents VALUES("79","ODZjY2IzNTQwZjcxYWRkNg==YEM4pWU+Ujastm4Rig+qmQ==","ODk1NTA4OTBkMDYxOTRiYw==t2j2j/ZYZfvc0sgnc098tA==","ZGIyOThmMzU4YjgzZGNiYg==gGvo3zNQZhFF/wiryzwjsw==","41","Male","NzAyNjczNGYyNGNlMmQxNg==ypZfbH1TiM40vsCdvedfUKBOLcKoi6dW6clbOGYPC/U=","4","1","1","1","0","76","0");
INSERT INTO constituents VALUES("80","YjZkNzU4OTY3N2JmYTdiYw==Zhjvshyn4D/O/cXEx2QxeQ==","NGFlMTFmNjVmNmJmZTQzYg==ZF+uGvMXb7Vw82ClychTVg==","ODFmODE0MTExOTg2ZmQxYQ==C2CZugiMVAubdj2dWOUwEg==","24","Male","NzExMjQ0NTZjMDMzMjFiMw==Kqjb2v6lgHuf3wSj/RwchYgOe3H8FE/F0vMu38Y7S/Y=","4","1","1","1","0","80","9");
INSERT INTO constituents VALUES("81","NTUzMzNkYTc0MjBiYTBmZQ==rIX6Fcio1rlHyUZcFUUt2w==","NjYzM2FhNjliMmVjMWM3NA==fUUN2s1nLFyk/C0LBOkP6w==","NjZmMTVmNjQ0YjAzZGYyNA==uHSeHUgoeN6kwOIuxqUn4A==","1","Male","NzExMjQ0NTZjMDMzMjFiMw==Kqjb2v6lgHuf3wSj/RwchYgOe3H8FE/F0vMu38Y7S/Y=","4","1","1","1","0","80","0");
INSERT INTO constituents VALUES("82","MmM3MTA4OTZjNjAzNTIxNw==5W/kklA7DEQ5nQGALizn0A==","MzM4OGJiZmNjZGY1N2RjMA==mP0vWt4xRQDb+rsB/QIR6A==","MTE3NWZmZmNiNzg5Y2YzNg==YSb8P38eKsGe1LH5+b7WiQ==","21","Female","NzExMjQ0NTZjMDMzMjFiMw==Kqjb2v6lgHuf3wSj/RwchYgOe3H8FE/F0vMu38Y7S/Y=","4","1","1","1","0","80","0");
INSERT INTO constituents VALUES("83","OGFlMmYyNTBiZDFlOTE1ZQ==ghRPyaWYalFzyft2wfNjxw==","ZWM4MTdiODI1ZTFjNmQwYg==MFQO8gdW/URZYGcaY2tErQ==","MzFmM2E5YTc1YjZjMjhlYw==Re1H1SNOKbJjBhKgmZBCIg==","35","Female","YmM0M2U0Mjc2NDNlNWQyYQ==UiCkbz5Y3OeCCA7HRKfS5m1/eKJ1PyoacKGXKDtPsAU=","4","1","1","1","0","83","9");
INSERT INTO constituents VALUES("84","Zjk5YzgwYzhkNjIzMTBlMQ==n2Ih89XB3g2YDzMfVOXhXA==","YjBjZDM5OWJhN2ZmMzZiNw==FxaA1tx7MknGjUkHJwR2pQ==","NTA5MGE5NjhkYzI4YjhhMQ==ztkzE9eRK/6YrDe1Kk6yTw==","9","Male","YmM0M2U0Mjc2NDNlNWQyYQ==UiCkbz5Y3OeCCA7HRKfS5m1/eKJ1PyoacKGXKDtPsAU=","4","1","1","1","0","83","0");
INSERT INTO constituents VALUES("85","YjNhYjIzZGEzOTVlMTVmMg==cs4RLsWPow5jfWfWMzRl/w==","ZDczNTgxMzQwOGEzMjhmNQ==66kDxh/yEqIkdXJeoQAIHQ==","YzQ1OTM4NDY3NDBlNWVhYQ==Na8GSBYYkqfB6AhBk1MjXQ==","7","Male","YmM0M2U0Mjc2NDNlNWQyYQ==UiCkbz5Y3OeCCA7HRKfS5m1/eKJ1PyoacKGXKDtPsAU=","4","1","1","1","0","83","0");
INSERT INTO constituents VALUES("86","YmM2MmVhZDk5MTJlMTdlOQ==bnzkzZduGrxa3njWozx8JQ==","YjJmN2JiZmQzYWNlNTNmNg==v3atFsJeMsrYiPOLHvz/iQ==","YzRhYzFkMzVlMzAzNWExNQ==BEjf4KaM8B9eIotYwqO8Eg==","38","Female","YWM5Y2U5NzhjZGM0YTJhOA==cUCKsx+qSdXdY0Dqj4++FXPuncoSEbJ43cAElC+oz3s=","5","1","1","1","0","86","10");
INSERT INTO constituents VALUES("87","MTgwODFhZWEyNmJjYzc5ZQ==Nc6o4rsgtAkAqfSblXsaVQ==","NDE3OThiMDhmYzE2ZWVhNw==zSDDhg74BZ+SSlMJF4oT9A==","ZDgwYjE5ZWNiNGVhYTgzMw==/xEfRzA0pa38VRkpm/REMA==","11","Male","YWM5Y2U5NzhjZGM0YTJhOA==cUCKsx+qSdXdY0Dqj4++FXPuncoSEbJ43cAElC+oz3s=","5","1","1","1","0","86","0");
INSERT INTO constituents VALUES("88","MDNkNmE5OGM1NTZhNTI4ZA==CD2BABkXEYHPfMJMP7brFg==","ZTUyNmE0OTk1NzIzNWMxZA==sbwi5TnED1Ab3xsGa7FSTA==","MjQxMDUwYWNlZmNlZTE5OQ==5oPh13UT5aTYwHDmLfpokQ==","39","Male","YWM5Y2U5NzhjZGM0YTJhOA==cUCKsx+qSdXdY0Dqj4++FXPuncoSEbJ43cAElC+oz3s=","5","1","1","1","0","86","0");
INSERT INTO constituents VALUES("89","MjFkOTQzYzM4NjIxNmI4OA==GMUxOlm8810ohtDW24AliA==","YjlmZTNlYjU1NzUzNWI2OQ==D6C8FCEaQtLbw+LwxJFw6w==","NmViYzZmODI2ZWJkNjI5NQ==dvoWZsuJe2Ium46VGo240A==","33","Male","NmJkMThiODRhZTg4NmU3ZQ==dXiKcCSchbdMSR183+cVc3ysU2JPvUs5KF7EnDGluAQ=","5","1","1","1","0","89","10");
INSERT INTO constituents VALUES("90","MzVjNGNiOGVhNjMxZDhlMA==0z4iN9uF1mY8dkIWJJ/evg==","NTc1OTllN2E2NDM3OTI2MQ==5xsfNFcjQ6cFA+W08fw6XA==","Y2FiZjZhODU2MTcxODIwZA==+ST2tJQ/VqhSgnDFoUOI9w==","21","Female","NmJkMThiODRhZTg4NmU3ZQ==dXiKcCSchbdMSR183+cVc3ysU2JPvUs5KF7EnDGluAQ=","5","1","1","1","0","89","0");
INSERT INTO constituents VALUES("91","MGUxYTNmMDhkNzBjNGIxYw==0q8YAF4hcjXZ17dnJo98pw==","OTZlZjY4YzljYmZkYWUzZA==76E7TgLqbJE3Uv/gn1iC6A==","NmYyYTZjMjZiOGM3MDQzZA==reMjiDbv5ywQuXhytDH1/g==","2","Male","NmJkMThiODRhZTg4NmU3ZQ==dXiKcCSchbdMSR183+cVc3ysU2JPvUs5KF7EnDGluAQ=","5","1","1","1","0","89","0");
INSERT INTO constituents VALUES("92","NWE5NDgyNDM1MTY2OWRkNg==nnDfsBBtgVO2sqxzq1xoeg==","NzVjM2NjOGI3NzQ3Y2Q3Mw==7CJ6Iwvj1mgYa/pGBbuWkg==","MDdmMmRiY2U5OTRkMzM2MA==OIoJcI/XLEZv76/oD0nIQA==","31","Male","ZDg5ZDQ0MDIyMWQxYmUyNQ==bf53OtOH12xhRPctNqOisWS96H6WUfsABJcSIBdcZXc=","5","1","1","1","0","92","10");
INSERT INTO constituents VALUES("93","OGU5ZmJjZTg5M2VhYzA2Yg==cY7vTGEAD/jbAiOUl3IajQ==","OTBlNzUzYTAyNzY3NzBhYg==6kCx5BMDdqiDkrGgk1PoTw==","OGUzYmE0NWJjY2U3NjNkNg==P1IpC9alpqzkxrcETRdAfg==","22","Female","ZDg5ZDQ0MDIyMWQxYmUyNQ==bf53OtOH12xhRPctNqOisWS96H6WUfsABJcSIBdcZXc=","5","1","1","1","0","92","0");
INSERT INTO constituents VALUES("94","NDJkYTcyOTk5YjI4ZWMwOQ==ZI7lHDFI7NDhNdztb3Z49Q==","MDI2MjhjNDM4M2JkNzNhOA==qUa+O7kHcAIrpCCrOHFHkQ==","YjhhZDkwZjY0MzI2MGU3NA==0lGxlMoYwIwGCEifNhFvYA==","3","Female","ZDg5ZDQ0MDIyMWQxYmUyNQ==bf53OtOH12xhRPctNqOisWS96H6WUfsABJcSIBdcZXc=","5","1","1","1","0","92","0");
INSERT INTO constituents VALUES("95","ZTg5MzI4NzUwZDI2NGQ1ZA==bCU/5AJh02YRsts7eMcDIQ==","MjllNTYxY2NlNzZlMzg2OQ==tmFyhVuVb8lDiuk6hwNM4w==","OTAzOGJmYjgyZmZiNjc5Zg==8ECvAhdztVuy6Y6tZqKEgg==","32","Female","M2M0NTdmMzA5NjRmMzczOA==8CV4cL/5gz7AMc+pACL4uNVv1BbieQSmiCqVfxBkIt4=","5","1","1","1","0","95","10");
INSERT INTO constituents VALUES("96","ZmU4ZTAxNjQ3OWNmYjAwNA==Z64eQtjDOhgwYMfL1EqFPA==","NTNhMTQwZTQxNWFmZjFmZA==3VOK7SdwVApRiQB2FiG9Gw==","NWQ0MjkyNzg4OWYxODMyYQ==qx0pAG0QuodGthus0hddJg==","46","Male","M2M0NTdmMzA5NjRmMzczOA==8CV4cL/5gz7AMc+pACL4uNVv1BbieQSmiCqVfxBkIt4=","5","1","1","1","0","95","0");
INSERT INTO constituents VALUES("97","YzMxZDRmMzQ4OTE1NjMwYg==ZavV+Kw55d56JOal7j9llQ==","NTI0MWY4OWI1NjkyZGQzYw==xVdJ24JxdqePzcMFOldwlA==","YTgxZTA2NGQ0OGI3ODg5YQ==kVexK+KPv012aeR4VA0XnA==","12","Female","M2M0NTdmMzA5NjRmMzczOA==8CV4cL/5gz7AMc+pACL4uNVv1BbieQSmiCqVfxBkIt4=","5","1","1","1","0","95","0");
INSERT INTO constituents VALUES("98","YTFjMTExZDY3NjRlZGNiZg==GLIHw3b+AOZUQy4c0Qgx1A==","YjkyMzQ2NTNhY2Y4MDhmMg==fe6QBcb/oRknK9QSFJnkSw==","MWQ1YjA4ODM1MWQzNzU1Yg==ESOgiHxJJ5c+3riaKIQC9w==","40","Male","NDkyYzkwZTVmYmZhOTg5NQ==az/V9Mz5euOue4JClJU7OQ==","6","1","1","1","0","98","11");
INSERT INTO constituents VALUES("99","ZmFiYjI1ZTgyNzU1ZTA0OA==bWYfWqZ9FEhM9K69TavYcQ==","OTdiMjYwMTA0YzJiY2QzNQ==ZUGr6O7U1S+aVacPZtSOuw==","N2ZmNDliZjI2MGQ2ODQ2NA==7MiEw2xmlwt+9GwW3oQlrA==","38","Female","NDkyYzkwZTVmYmZhOTg5NQ==az/V9Mz5euOue4JClJU7OQ==","6","1","1","1","0","98","0");
INSERT INTO constituents VALUES("100","MTg1ZGEyMTk1ZGYxNDAwNA==aUzfwIp+nEqWeJwgvMjGTg==","MzU4NGJkNzdjMWVhYjdjOQ==hdluWQsmhudSqg7D2GOoSQ==","MmM3Mzg1ZDQ0ZmNiMjE0MQ==F5AKG3w46zRpXmbhz6xXnA==","13","Female","NDkyYzkwZTVmYmZhOTg5NQ==az/V9Mz5euOue4JClJU7OQ==","6","1","1","1","0","98","0");
INSERT INTO constituents VALUES("101","NmUxMGM1MjBkMzFlNzkyMw==7KaGMD1dJBtt3eUy/s8Pdg==","NTUyZWUyODBjYTdhMjllOA==5woteHZelcNLOnxeYVvoxg==","NTVhMzg4N2E2ODA1OTJkOA==ER3Kc6qiLD49hm9kQi8PcQ==","36","Male","MmZhM2MxYzI1ZWFhM2NmZA==Bx7ALvEWVgA+wVHL/hy3ng==","6","1","1","1","0","101","11");
INSERT INTO constituents VALUES("102","ZGQyOWNkYzlmYTU5NDcyMQ==6y5mbRqYGyIOCwlSSRkJww==","OTIxMjk1Yzc1Mjg1MWMwMA==GGtlUfHKuwLAfPvtmdiawA==","MTIxOTJkN2U2ODE4YzljOQ==SBEBpG+dj8UWWRR0LNcKxA==","23","Female","MmZhM2MxYzI1ZWFhM2NmZA==Bx7ALvEWVgA+wVHL/hy3ng==","6","1","1","1","0","101","0");
INSERT INTO constituents VALUES("103","ZTMzODRmYmI2MDRlNjU2Yw==1cPnnWiWEDhflZ/OyW7Hng==","OTJmOTdlM2QyNGYxM2Q3Yw==tvZJOXujlXACYtYmOcVdBA==","YjA2NzllMjJlZDk3ZmRiOA==dh+gYQOIs9OR1MoIZMWaiA==","30","Male","NmI3YmQ4ZDhmYjIzNzNjNA==lf8V4EIA1uNaAw58chS9IA==","6","1","1","1","0","103","11");
INSERT INTO constituents VALUES("104","MWU3ZDdjZjE1NGQxZjM1Mw==8HwLJ33SzA4VrjaoInNTMQ==","MmUzZTNmYmEyOWFhNzI1MA==fJeidfdJgL064XGAhIIeSA==","N2IwMTg1NmZhZjllZGJjNA==Kwe3kaOY6XM3zagCN385JA==","32","Female","NmI3YmQ4ZDhmYjIzNzNjNA==lf8V4EIA1uNaAw58chS9IA==","6","1","1","1","0","103","0");
INSERT INTO constituents VALUES("105","ZGVkODE1OTcyNjQ2Njg0Yg==va73w5xPaXes+4J3QPag6g==","ZWY4Zjc3NTU4NTY2ZTlkYg==UvbstNCZY5w2QubpvyKBdg==","YzMzMjUyMmRiM2FjYTJmMQ==7hh/459GjNk8xprcLgmSwA==","11","Male","NmI3YmQ4ZDhmYjIzNzNjNA==lf8V4EIA1uNaAw58chS9IA==","6","1","1","1","0","103","0");
INSERT INTO constituents VALUES("106","OThiNjFjNDY0NGQyZWEwZA==4PYH3cfq1Rjf1H4HrL4WjQ==","YWE0MjBlNjU2MjEyZTI1OQ==EGcCrhq2BgrM7/eIrMDsIA==","YzI0YTQwYjFhOWJhNTk0ZQ==gcRxZi6lcCgePRNoMrnbIA==","6","Female","NmI3YmQ4ZDhmYjIzNzNjNA==lf8V4EIA1uNaAw58chS9IA==","6","1","1","1","0","103","0");
INSERT INTO constituents VALUES("107","OWE3MTc5ZjU2YzM3OWFmOQ==TE2bCpDuWOntkz2vkHHI0w==","Mzc5NzIyMDI5NzgwMjA5Ng==VHHYb9iK7oSlFKX9iyjNXw==","ODdkNjM0NDY0YmEzMDMwNQ==OHUm37hwFkQ0K0dtHoa/0g==","35","Male","NzFlNzJjYzE0OTAwYTEyOQ==0PRag7vWovS70qywP0ePYQjmT3SrqGDRCbpzibx9bEQ=","7","1","1","1","0","107","12");
INSERT INTO constituents VALUES("108","NzYyOGJkZTUxMTEyNmYyMQ==nDoRimLwYGCCtcNFn/S89Q==","YzNjMWNkMGI0MDJjOGEwYg==084k8KrpGrVGKbJ+ZlBrsQ==","ZGM2YWMwZjJhODNlYzNlMg==cAem2I4amaeODYRMsCnIvg==","34","Female","NzFlNzJjYzE0OTAwYTEyOQ==0PRag7vWovS70qywP0ePYQjmT3SrqGDRCbpzibx9bEQ=","7","1","1","1","0","107","0");
INSERT INTO constituents VALUES("109","YThjYjViM2I3ZjkzNmFjMQ==TXfutl8NWOYJID3p2WFfdQ==","NzQ1MjY2N2Y5MTEzZGE4Yg==mRaB/+VFWxw+FYepifa6Lw==","YmE3MGE5NmFlM2VhODkxNQ==bQXbvZVsBK9RU3E8VAPzSw==","10","Male","NzFlNzJjYzE0OTAwYTEyOQ==0PRag7vWovS70qywP0ePYQjmT3SrqGDRCbpzibx9bEQ=","7","1","1","1","0","107","0");
INSERT INTO constituents VALUES("110","ZTM4YzZkMTVhNmVkMzE2Nw==0ltbm9FTYjVZ7kdD+raFYw==","MDIyMDdmZmUwOWUxZWUwZQ==v7JOkaKMy3i5J61DrFytHA==","MzgzYzc5OTFlYzE5NmVmZg==VNwVyKv9F0ou7i+iZuHm3g==","8","Male","NzFlNzJjYzE0OTAwYTEyOQ==0PRag7vWovS70qywP0ePYQjmT3SrqGDRCbpzibx9bEQ=","7","1","1","1","0","107","0");
INSERT INTO constituents VALUES("111","MjY1NjhkYjZkZGIwODMwMw==3sqsQ2riTSyedbYUTZoRrQ==","MGYwYjFhZmQzNGY3NDQwMg==DcPb9Zs4Ng/mA47YzxPwRQ==","NTU2ZWNiMzhjYmRkYmVmNQ==G8RCrNiYp6I44/2U3qfQXA==","21","Female","M2UxMTMzMmY2YTUyYTg5OA==/O0KFCOaBzpe2eUgr3bgFg==","8","1","1","1","0","111","13");
INSERT INTO constituents VALUES("112","YzMyZDgwZmQ2MzA0Y2RlYQ==eYWjVWDNmq8w10CEfvF7Aw==","Y2ZiYTg5MTkzZDU0NWEzNw==SOI5Vb8bTYK+CKAAnsEEJQ==","NjEwOGI4MjY3ZGZjOGNiYg==HdF9OvgRmlP7wPH0BYZRqA==","41","Male","M2UxMTMzMmY2YTUyYTg5OA==/O0KFCOaBzpe2eUgr3bgFg==","8","1","1","1","0","111","0");
INSERT INTO constituents VALUES("113","OGU5NjQ1YzcyYzI2YjhhNQ==jFagdH9hoNJavGyakdaRXA==","YjJkNWZkZjcyYzViNDNhZg==TN6vEd8CPa8J6RbvdEg2NA==","ZDYwZDgxMGUxMDI4ZmMzZg==JGA0+USaLauIUYGjRl7p2g==","4","Female","M2UxMTMzMmY2YTUyYTg5OA==/O0KFCOaBzpe2eUgr3bgFg==","8","1","1","1","0","111","0");
INSERT INTO constituents VALUES("114","NTE1MzU3ZWNkNGI4ODVmNA==5O8JBULLFhml4w2LicoM8g==","NzI0YzljNmE1NGRiMGMzOA==QsJZiOkdQBugYSH1aHI+Uw==","Y2ExN2VjMzViNmY4YjUxOQ==KK2UloE+bpYtZB35+TQm0A==","11","Female","M2UxMTMzMmY2YTUyYTg5OA==/O0KFCOaBzpe2eUgr3bgFg==","8","1","1","1","0","111","0");
INSERT INTO constituents VALUES("115","OWM0Y2Y0ODk3OGYyMmVmYQ==CiSx8qWTQwLEAUSd3EDFOQ==","NDg1N2YwYmRhMDZiNWVhNA==Perk4S0OtXUQwjBVQQZ51A==","YjkzZTUxOTBlNzhiZmUwOQ==Xx5Kk1D3YOUEWZpLdcTpBQ==","61","Female","M2UxMTMzMmY2YTUyYTg5OA==/O0KFCOaBzpe2eUgr3bgFg==","8","1","1","1","0","111","0");
INSERT INTO constituents VALUES("116","MWVlZGJhMWFkOTZlM2JkMQ==8H8cfdswc5Hrh1l11wUfag==","ZWViNDE2NGI2YTcyZGVkMg==Fhz3l6ByKnoC8Dn9szobLQ==","NDA2NDZjMWI1NjFlMGRhNA==CJbrI5qwfdWCI9ELSTb+1A==","22","Male","NWI3NjBiNDIwNDJlMDkwNQ==IdX2NBesZcioAU8rTmlQowW5zEiuU3bWQQ8woXzTut8=","17","2","2","2","0","116","22");
INSERT INTO constituents VALUES("117","ZDJjNTcwYzlkNTFiYTFhZA==9KvJzFVs4pJkSUSJxZSpIQ==","YjRmODc0ZTZhYzMwNmU5NQ==cor2NXF/NTQNMMf/4mmLbA==","NWRjZjFjNTA5MWE4OTBmYQ==LdrjewWlN4LwlrQS//DXyA==","18","Female","NWI3NjBiNDIwNDJlMDkwNQ==IdX2NBesZcioAU8rTmlQowW5zEiuU3bWQQ8woXzTut8=","17","2","2","2","0","116","0");
INSERT INTO constituents VALUES("118","NmZiNjQwODlkNWViNWMwYw==M6Wz6oX0iQ13pD7DnKU+Eg==","Yjk3MDA4ZDdhNmYwYzgwOQ==l/ZwcTTkBLwkiLNnDr6RPA==","YTRmYjA1ZGViMWM3NTJmNw==6QzOxXTiqhADdnk2gjHD8A==","1","Male","NWI3NjBiNDIwNDJlMDkwNQ==IdX2NBesZcioAU8rTmlQowW5zEiuU3bWQQ8woXzTut8=","17","2","2","2","0","116","0");
INSERT INTO constituents VALUES("119","OTk5NmEyN2NmMTNmNWY0OQ==0o5Ket0FGpDI1huX2n66lQ==","MjBhMjY3ZTMxMzc1YWEzYw==XbHVlbYs0jxzOHESf2EwSA==","ODExZjVlY2FhZDYwODQ2ZA==DLO3UCEVz0FhqMzGP87tbQ==","3","Female","NWI3NjBiNDIwNDJlMDkwNQ==IdX2NBesZcioAU8rTmlQowW5zEiuU3bWQQ8woXzTut8=","17","2","2","2","0","116","0");
INSERT INTO constituents VALUES("120","OTU3NDMyZTFkODBjODI1Nw==DDHnZmqmQIYi7d6nxc0BtA==","N2JjZjE5OGRmYjdkNjgwZQ==B0pJ3zmfk7iTipMx9waxpQ==","YjFmYjA0ZDViNTdjNmIxNA==76frVRKqPQ17/TAS2SAgmg==","33","Female","MTM5ZjQwYmFlZjVlNjUwNg==noK+r6z1ATXl+08yCdQOzJpa2g33xq3SmJA33ysKgrg=","17","2","2","2","0","120","22");
INSERT INTO constituents VALUES("121","YTg1ZjY1ZTI4OWRjZGFiZA==LOam33aI6pRplsDeU7Xysw==","OWI3YjQ3YTNmOWZiZDU5YQ==ciE5XglmhRo1Xd3/D3sJVA==","YzFjOWU1YzRlM2JjYTVkYg==XqF+BNaUCykCRK5B0ewqpw==","13","Female","MTM5ZjQwYmFlZjVlNjUwNg==noK+r6z1ATXl+08yCdQOzJpa2g33xq3SmJA33ysKgrg=","17","2","2","2","0","120","0");
INSERT INTO constituents VALUES("122","NTdjNWJiMjAxZDg0NzYwNQ==lsNR5wRpOV/k8N9GqveTKw==","NGIwODQ2NDVjZmQ0MDk1MQ==R+HtqsZTc8WJY05sDBII0g==","NWU1ZjViN2VkNzhjZTkyYw==F2+Ko8/fEjhnnp3YODypYQ==","11","Female","MTM5ZjQwYmFlZjVlNjUwNg==noK+r6z1ATXl+08yCdQOzJpa2g33xq3SmJA33ysKgrg=","17","2","2","2","0","120","0");
INSERT INTO constituents VALUES("123","NTA5MWMyN2ZkMGVmMzNkYQ==0MUM1CNw4wRb7miROyq4VQ==","ZDU0OGFiMTk2MTNhOTc4OA==jrod6R7RoksHw7559E/BMg==","MDE5OGYwY2IyZDMxZTM3Mw==x+TRyDmTBygssFW/bzmB3g==","16","Female","MTM5ZjQwYmFlZjVlNjUwNg==noK+r6z1ATXl+08yCdQOzJpa2g33xq3SmJA33ysKgrg=","17","2","2","2","0","120","0");
INSERT INTO constituents VALUES("124","NDMxZWY0NGJjMDI3NDBjZA==7512ckWOU/FRuJPNH3S3bg==","NThjYzgzYjI0NTdjMGExZg==ZoT78LBMwLE0jJRjzfWksA==","NDlmMDM2OGVhZDdlYWI2NA==YfHQAMJX3FXfOI3xjWYd0Q==","44","Male","NjEwMDM0ODU4YjFiZmQ3ZA==+orIcYjfdatFJVhiaWw0I9s7ugaGawd/flTLMIqzkM0=","17","2","2","2","0","124","22");
INSERT INTO constituents VALUES("125","MmQ2NDA3Mjc0Y2Q4OWU3YQ==XEHCE34OnE/7Noay/QRbQA==","OTdiNGNhZTQzNjZlYjRhZA==SHMUyua0CUElckRFaoFCoA==","N2I2YjMzNjc4YTg2OGMyOA==iKhzq+QDpblm7TTOxOpsiw==","18","Male","NjEwMDM0ODU4YjFiZmQ3ZA==+orIcYjfdatFJVhiaWw0I9s7ugaGawd/flTLMIqzkM0=","17","2","2","2","0","124","0");
INSERT INTO constituents VALUES("126","MmZiODBlNjJmYWIzNzUzYw==++8/Dth8QXpPzAUEfdy/5w==","ZTc4OTJmYzYxNjdkZTk5Nw==PxUoHEfqkMq5HT+4LVmogQ==","MGVjZDEzZWZjZGQzNzAwNg==Xy1LDBUKVwdAP/fHTam4mA==","38","Female","NjEwMDM0ODU4YjFiZmQ3ZA==+orIcYjfdatFJVhiaWw0I9s7ugaGawd/flTLMIqzkM0=","17","2","2","2","0","124","0");
INSERT INTO constituents VALUES("127","YzJhYjBiNTA4MjhlYTMzYw==LY+Wk6JncGp4TK1jPZRAaA==","YzU3YmQzMTU4OTE2N2I0YQ==oQhhPGNiZ1vHExwpqziLdw==","YjJhMjFlYmJkYTA4ZTdhZQ==wNw45bbtYfo1k4Hjx8Q5Rw==","66","Female","ZGM2ZjQxYWVlZDEzODJkNw==X4W0iMwT1ankWmA4ru+il+LRoaZgwF+CidLfyTSzkeM=","17","2","2","2","0","127","22");
INSERT INTO constituents VALUES("128","NTJiMDkwZjA4MDZlMzA3Zg==4IntlTlMnHoot5HO6e/N2Q==","NzkzOGU4MTM4YTJiZGQ4Ng==pN16/e4vBWO35oWRKME2Sg==","OGVjNzMzZTM1NjUxZTdmMQ==J/nSa7+Qy0ADgbygD16D/w==","23","Male","ZGM2ZjQxYWVlZDEzODJkNw==X4W0iMwT1ankWmA4ru+il+LRoaZgwF+CidLfyTSzkeM=","17","2","2","2","0","127","0");
INSERT INTO constituents VALUES("129","YjAyMzNiMDc0MWUwMjRiYg==Kj5Z6CK/LGNtMKSCXYk3Yg==","ZWYwZjcyMGFmNGY3OTQxMg==2jKbd5TlackATKGiV92a/Q==","MzkyYmNhOGQ1NjNiZWUwZg==xVQ/ecnjgOvve2/u9TSwWg==","16","Female","ZGM2ZjQxYWVlZDEzODJkNw==X4W0iMwT1ankWmA4ru+il+LRoaZgwF+CidLfyTSzkeM=","17","2","2","2","0","127","0");
INSERT INTO constituents VALUES("130","NTBjNWQ2ZTcxN2M5MjI5Ng==wBSXng4A1kYN838uALd7xg==","MmM2MjFlYTkyOTUzYmFiYw==0pN26IGPNQrA7ADDJlQnDw==","MmQ2OTM5ODQ4ODNmNjVmZg==lEZxzrjnctMQknaI+c+SfQ==","68","Female","MjM0MmZjNmZhYWFkOTk2Mw==N9v12lyOpHuaiDXbQH5vScHTiZPDxQNkQXsbA3fD4Oo=","18","3","3","3","2","130","25");
INSERT INTO constituents VALUES("131","MDdjMWJjZGFjODM3ODVlYQ==/RmSm7QVPbIvJCBcRLf/Aw==","N2YyMGRjMGFlYTgzMTBhZg==W4py94i4/FydvMs799/K6A==","NzEyYzMxOTk5NjUzZDMyMg==YDFOqTmwkLCaykAhnk7nOw==","26","Male","MjM0MmZjNmZhYWFkOTk2Mw==N9v12lyOpHuaiDXbQH5vScHTiZPDxQNkQXsbA3fD4Oo=","18","3","3","3","2","130","0");
INSERT INTO constituents VALUES("132","MDg0OWU2ZTg0ZDUyMDdkYg==n1d9EZqv9NMd+VZFkuuFHg==","ZTEyZmI1ZDViNmFiN2U5NA==0ELIHoZWWPjgLiM7eJsD1g==","ZDM5MGI2MWQ2YTAxMTIzYw==V3bghiSsQ8Eg2osqtEnMNQ==","22","Male","MjM0MmZjNmZhYWFkOTk2Mw==N9v12lyOpHuaiDXbQH5vScHTiZPDxQNkQXsbA3fD4Oo=","18","3","3","3","2","130","0");
INSERT INTO constituents VALUES("133","ZWQ4NTdjNzdmOGY3ZjRhOA==sAu46XH5FSvojXmiSN/uEw==","OGQ3YTJhZjcyZjA2ZmQxMw==lxGXUxtWPPf4yo7RSTYwnA==","OGQzY2YyMGFmYWQ1YzdmNg==lWqmlxh+nceIpdP/iGYO3g==","23","Male","MjM0MmZjNmZhYWFkOTk2Mw==N9v12lyOpHuaiDXbQH5vScHTiZPDxQNkQXsbA3fD4Oo=","18","3","3","3","2","130","0");
INSERT INTO constituents VALUES("134","NzMwZjA3YjRiYTJhY2RiYw==ozmiMvPQd2mJLNYcF0c8iw==","NjRlOTA5YzlkZmMxNzFhYg==55vwFHkhFxCbly8HTaPqSA==","NTA1NThhODRhOTNmYjFmMA==VSFb3ozxkinjM4N5AbHaFg==","57","Female","ODJkZGE5MTYxYzBkMjg2ZA==0hOk4Bg6bNMRamA/gKYx07AdtD/K+yvAknrYPkpf0NI=","18","3","3","3","2","134","25");
INSERT INTO constituents VALUES("135","ZmM3ODEyZWIxY2NkMGJjNg==HHrFLtO4683d5yG6I+skFQ==","YjM1NjAzNDNiMzM1NjZiMg==SMTvYC6JkCC+KFZIxeSy6w==","OTNjZDFkNGE3YTQ1NTRhOQ==z0Uf6nzb2ha3CpVSkM9wuA==","58","Male","ODJkZGE5MTYxYzBkMjg2ZA==0hOk4Bg6bNMRamA/gKYx07AdtD/K+yvAknrYPkpf0NI=","18","3","3","3","2","134","0");
INSERT INTO constituents VALUES("136","MGE1ZTQ5MDkzMWQyMzUwYQ==37Kfo4kA9daGLkRH0TJ6Yw==","NjA0MzBlMTI4NTM0OGJmYw==GSoiVvdrZV5KywJpfE0zUQ==","ZjI0OGQ2NGU2MmM3YWFhOA==PKyuiiZU/cxF9UHzGu4mrA==","22","Female","ODJkZGE5MTYxYzBkMjg2ZA==0hOk4Bg6bNMRamA/gKYx07AdtD/K+yvAknrYPkpf0NI=","18","3","3","3","2","134","0");
INSERT INTO constituents VALUES("137","NzQ5NGY3Mjk5M2ZmY2YwNQ==uIRgjens5wbXlzrN9qIdkw==","Mzk3OWJjYzNlYTBjMWVlOA==gL4IM8uUXjAp1nTw/Us+6w==","ZmQ2NDQ1MDVjMTFkNjRhYQ==SPBhbXZqQe6+FUG5AMirXQ==","20","Male","ODJkZGE5MTYxYzBkMjg2ZA==0hOk4Bg6bNMRamA/gKYx07AdtD/K+yvAknrYPkpf0NI=","18","3","3","3","2","134","0");
INSERT INTO constituents VALUES("138","NmJjNjJjM2FlZDk0YzM0Mw==j2VZ5sm3gXw4GROqMHV1mg==","MDJmZTUyYzkwN2UwMDk0YQ==rLIkXDbwvMORuxF5AQsHpg==","OGI4NzgxMzA2MDI1OThkYg==fNQ08409W7jTxPV2dTApfQ==","58","Female","YmI2ZTE2NDI3NjJkYjAxZg==19/Ih4p8UM661PLz1Ow5AS3ATcPl4FfLFsk+Xl+7nzQ=","18","3","3","3","2","138","25");
INSERT INTO constituents VALUES("139","NWI3YmRjM2JiM2M0ZTM2Mg==lfDJsMw2ZJ02as1AZNxYyQ==","MWY5ODA4ZTZjNzFjODMwOQ==H8ZhpnhFWJP0/MRM/WY1pA==","MjliMGQyMmY5NzA4OTgyYg==SU/a8BGL/gM3LEXz+k+CwQ==","33","Male","YmI2ZTE2NDI3NjJkYjAxZg==19/Ih4p8UM661PLz1Ow5AS3ATcPl4FfLFsk+Xl+7nzQ=","18","3","3","3","2","138","0");
INSERT INTO constituents VALUES("140","OTJmMjZiNDJmODc2OGYzOA==VKlBQoZDPosP1mzfL2Yvrw==","M2I1ZWNlZmZmZGE2YzUyNg==RfM2AZnofPMe0m0aTu36hQ==","MjAyYzg4NzdmOWVhOGExMg==k95ymdnLlnco7drUWsYhow==","28","Male","YmI2ZTE2NDI3NjJkYjAxZg==19/Ih4p8UM661PLz1Ow5AS3ATcPl4FfLFsk+Xl+7nzQ=","18","3","3","3","2","138","0");
INSERT INTO constituents VALUES("141","NDU1N2QyOTU2NDk0ZmU5Yw==d6NMZq+HeFYi7zFu4cDKIA==","YTg5ZDYwNWFkMTg1YzVjNA==fljQDusqzsQYcybHMPqyMQ==","M2IxYTZlMGM0ZjUyYTBlZA==qv0/2qlz5IwgucUJI8DoKQ==","35","Female","ODNhNjJlNjVkM2VkMzhjOA==OdOwuY/3Us0rk1lDTqcqzt/0zkFPEorvwNmEnaROwDI=","18","3","3","3","2","141","25");
INSERT INTO constituents VALUES("142","OTc4MWRhZTY0OWQ5ZWYxZQ==HvM1g6VE9q/EqM7x26AOJg==","ZGJjNmZkNmVhN2YyYTA4Mg==zjxv2jhvEtNCx1/pavpeyg==","YTIwMmY2YTUwYTg4YWI3Zg==SPs2pgIfpqoMFQ1kgVA2cw==","36","Male","ODNhNjJlNjVkM2VkMzhjOA==OdOwuY/3Us0rk1lDTqcqzt/0zkFPEorvwNmEnaROwDI=","18","3","3","3","2","141","0");
INSERT INTO constituents VALUES("143","ODE3NDQ5YmVlYzZkYWU0Yg==DyldNWGb2WVRYJRRX2q+Ww==","YjRmZDA5MDQzZjk3YjVlNw==V+NnaPdt/Lg8Jb2XHpxILw==","ZGE1OWZhNmY4NjhiNzQ3ZA==8hSr1OKYVLJJhRgOGj7AFw==","21","Female","ODNhNjJlNjVkM2VkMzhjOA==OdOwuY/3Us0rk1lDTqcqzt/0zkFPEorvwNmEnaROwDI=","18","3","3","3","2","141","0");
INSERT INTO constituents VALUES("144","NGE0ODFlN2UxYWYyMjRkYg==HwTJ1BsIuLygdbydzaNzug==","YzgyYTg1OWM1Y2YyODM2Mg==AHUeTOvNetxluqtOA9POIg==","MjE0MmQ3NmI0MjA3OTFiMQ==uVMZXSiN3UxHd9y4r1JAAQ==","40","Male","ZjAwZmM3NmJhYWJlNDIzOQ==lnaMf9DPTKV/i+iidQnoAK/jCZFzAK1NOolMghMwwB8=","18","3","3","3","2","144","25");
INSERT INTO constituents VALUES("145","YTNlOTUwZWMwNDgzZTYyZQ==jwCB51Wfc4RkxnXuor6CJQ==","MmQ3Y2EyNTEzMDJiYWRhZA==tUk3h1c3qlqszJBYvUn/eQ==","ZDI5ZDJhNzg1YzhlYmRkNQ==OCxofOc66G4mO1qqah1tJg==","23","Female","ZjAwZmM3NmJhYWJlNDIzOQ==lnaMf9DPTKV/i+iidQnoAK/jCZFzAK1NOolMghMwwB8=","18","3","3","3","2","144","0");
INSERT INTO constituents VALUES("146","ZDU4OGNhMGEwOTMzOWE2NA==VlDVGApb+R+TPEIqcseRhg==","MzllMjJmZDU5ZjE1OTg5OQ==UaN+KUJ1BOUJYi4jSrdgWA==","ZWU0MDQxYzgyNjkyN2Q4Yg==IY0otvvFhZ398lJnJWdkEw==","20","Female","ZjAwZmM3NmJhYWJlNDIzOQ==lnaMf9DPTKV/i+iidQnoAK/jCZFzAK1NOolMghMwwB8=","18","3","3","3","2","144","0");
INSERT INTO constituents VALUES("147","Y2RlOTViODQ0NmY1OWZlOA==G2szLWSbDLk4RqTrjyPqmw==","OWQ2NTI3YWQ4NzNiNjc1MA==jlbFFA5o0qSMXti4tD8Gbw==","MDUxNDFjM2JlZDQ0NjliZA==oDQcO6q9xoWOwoTvXHjYjA==","19","Male","ZjAwZmM3NmJhYWJlNDIzOQ==lnaMf9DPTKV/i+iidQnoAK/jCZFzAK1NOolMghMwwB8=","18","3","3","3","2","144","0");
INSERT INTO constituents VALUES("148","YzAzZGYyMzllOGE0OTY2Mw==PlsANOltNj/QBMDa1enYyQ==","MmNjNDY3M2YyZDM2NWFmNw==vNR4PTm1awDLgAdX1J+NKg==","YzE0ZWNjODRmNjhjZTQ1Mg==btnXTYpPWuJQVSdG7cLqdw==","20","Male","OGMyYjgzNDg3YjA2ZmZkMA==F3nAyuGacPMfUWLK3BT6Zd8cfcP8soCEQWlWDEXpkW0=","18","3","3","3","2","0","0");
INSERT INTO constituents VALUES("149","ZWMyOWYxOTk4MmNiMjA2OA==/113GFVoAo8SJ9V2IetG4g==","ZmI4MWZkNGNhZjU5MjZmZg==QxXofql7K+9rZGRhEbsImA==","NTRhMmI3NTc5MDAzMmNkNA==JD0Jgzay1p3rKJMuMioNOA==","20","Female","NzhmODRkMDlhOTNiODNlNg==ItiYzrMKa54ctotT4/6XMvZtfaouyecOxa4+we9jyYo=","18","3","3","3","2","0","0");
INSERT INTO constituents VALUES("150","ZGQ0ODlhNWJiMGY1NjExYg==ZSrLCCT4BJxK28n7yswOhw==","N2VkYjg5ODI3NTc0ODcwMg==YegVGAaeIGDxjNkgLXwKIw==","M2UzNjE4M2NlNjI4NWU4Nw==h7Tit9x13nj8ZH8f7x7XxQ==","40","Male","ZjUwNjNmNzg0ZmRmOTcyYQ==f4jwzMcTIYvCqSIUcOXlUd7XhTSkmAX8fC6tsEPhUVg=","18","3","3","3","2","0","0");
INSERT INTO constituents VALUES("151","Y2QwNWM4ZDgwZWZkZTEwNw==f1cY48kIHLJCZiLWEyUM5g==","MWU3Zjg4MTgzMzg1NTQ0OQ==pEybtEfV5AN4RXnJZ1/2lg==","MjJiNzBjYWRmZTc3MGMxOA==jo+yuKK1njRgcfu2pVNpnQ==","36","Female","N2Q3YjZmZGMyNjMzNDljNQ==/GpCFbtzVjkKqw1WJ/2eCOmRIzk0YJkASAeJ6o0D9GA=","18","3","3","3","2","0","0");
INSERT INTO constituents VALUES("152","OWFlNWEyNjliYmEzYjdkYw==XQ64iH9RFSOEny6QooQR/g==","ZDA4N2NkNDJjOGQyMTA5ZA==msh5PkTwySz7ts109kLzCw==","NDY5NWY2NmEzMWZiZjdkNQ==KOB/xb1r4HaUg7neFlMy2w==","21","Female","NWNkYjU2Y2U5YTg5MzcwNA==+xh+NfqlrmoOtp4FfVbOtmI4N9Fd8Y0vRpsIldxxVDw=","18","3","3","3","2","0","0");
INSERT INTO constituents VALUES("153","NDYzMTI2YmY0NjVjYTQ3ZQ==ou2+JY+zIQ+WAL307TuOwQ==","ZmMyYTljNTJhM2FjOGYxNw==EdwKIHGE+Otr9Up/ETBEvQ==","MmUwYWYwOTdjODQzYjRlYw==hW/CXx7gc1PwXPGq9WZg7A==","30","Male","Mjc0YmQ1NjcxYzgwYjlmMw==2//xYAOd82IzwjA9jv9N07Waa1NAaWALFXGHaf21Ac0=","18","3","3","3","2","0","0");
INSERT INTO constituents VALUES("154","NjJlNjJiNTczYTI2ZDZhNA==bNnBAdm9OiXfciuLxo9RXA==","MjdkOTRjYjYyZmIyN2I3NA==996ZXTVN8Hzpr5ZFeTp+7w==","NzNlODcyN2VkOGM1ZjI1Nw==XOzzQCA56JY7yauzk2WWFA==","28","Male","YTQ5M2M2MTAyYWUzZTIxZg==XJeFpAIrxjWIbYiCDoZC1CmSma8QcpbTYPCUJjDnSwc=","18","3","3","3","2","0","0");
INSERT INTO constituents VALUES("155","ODZjNTY2MGE0ZTMwODRjZQ==EaU0SFyVAqJcQG+JydWjDg==","MjNmYzZmZDhlNTBjNGE1Yg==tEvLLkP3ZU9NhwCa7k0jjw==","NmQyYmJhMjdkYmM1MzU3Mg==ARwTwbXir0Hho0TtJHrJrw==","19","Female","YWRkYmEzM2RiYjZmN2MwNg==w+czhiAZsQjStKioABXFCjGX/vI5PuG52Ybkq35PZ3E=","18","3","3","3","2","0","0");
INSERT INTO constituents VALUES("156","NjIxOTZhOTE0YTI4MjIwYQ==TI+JjS8p5YtibdtyKDQwvg==","YTE4OWQ4M2E5YmYwNjFhYw==LwOUY2r0cLdrjq32k3Yw+g==","NDYxNDhlMjIyN2U0ZTJkMA==ldUaA6fLoXdd3fc8EtO4xg==","29","Male","YjBjNGFmNDZlYTBlNzgyNA==k76P7FP8ziOrEzDptPRGfcC1d463+pu+Z6IxhfoS7g4=","18","3","3","3","2","0","0");
INSERT INTO constituents VALUES("157","ZDM4YWE5ODE5ZTQ1NTU1OQ==+5sHXSbQaWPZMxUsKPio7w==","MjY2ZWMxOTU5MWRlOWQwOA==q0hA4dsNGLGztMVbfA+YLw==","OTEyMzZhOGU1ZjY3ODA0ZA==igPnYzi2HnG8X7FlTWYr0w==","23","Female","NjAwZmVjZjRiZDI3ZmNiNA==EIDSkaNZZX9gzHq5Em/aNUz4gRqqcYkTErUK6d3TKGU=","18","3","3","3","2","0","0");
INSERT INTO constituents VALUES("158","NjgyMGIxYmExZDhmMTc3YQ==EVAljwFPdLEVbiPFJyiOCQ==","YjlhZmM0MzNhZDNlMmE5Zg==T872I6yTSj2bZzJlM4BtIA==","MDJiMzJhN2E0MjFkYzFlOQ==Xdll/MARPyprSHBTdX/rfQ==","25","Female","M2Q5NGU2YzBjY2JhOGE1MQ==YiCpnXfwZjriudy/fHbC9/FhFtypf9hd8IVkbgR8Mss=","18","3","3","3","2","0","0");
INSERT INTO constituents VALUES("159","ZDBlOTdhZWU5NDIzMjZiOQ==v5w57YQkDku1NyWy5IUZUg==","NTE0Zjc2MDY3ZTVlODRjYw==9uEj8MdUyYDF6ZEx9d2ZYQ==","YTBkNjYxZjMzN2NmMGM0OQ==6ANuG+LPe1JQ/JHV/KDjwQ==","28","Female","ZTViYzliMzliZjk0ZWJiNw==KFZJMWUcq3xP2I8w+v7dLMyMRiSTRFjNjQTcVw8C5rk=","18","3","3","3","2","0","0");
INSERT INTO constituents VALUES("160","YTE4MDhmMTI3YWZjM2NiYw==qbUUt2+3zFYgK7UBk92GRg==","NTA4NDk4MjI2MDI0ZGUwZA==QzB+2NSFRFySNB9tBsmtKg==","NWFkMWI4YTQyMTFhYzMzYQ==2RiFq6LqUa18sH3bqQwnrg==","26","Male","YjczMWJhYzQwZTIxMjllYg==OqXJ/XZaOSso/xtFpLkz4LtOQa/Tp1k/wkJG4X21Bpg=","18","3","3","3","2","0","0");
INSERT INTO constituents VALUES("161","YmIwYTU0MGM3NmZhMzcwNg==NjTFDLdwXLJe8cYrqUESqA==","Yzc0MTBkOTQxMWEzY2IyOQ==n/IBoV4RG1brvrrUUijIzw==","NWEzZmM5NzAwMmU0ZTFkZQ==3mBSbGcx3c0yD8u7motHOA==","26","Male","N2NhODJjNTU3Zjc0MTAzNg==RxPgAL2C04iY1mikriWhJ097bx+c5yGnzEc8w1O3LhA=","18","3","3","3","2","0","0");
INSERT INTO constituents VALUES("162","NDEzZTlhZDBmODgxNThkNg==N8Kl7fXmDTow8zlsSMNJBA==","OWQ0NjdhZTcxOWUxY2QwNQ==Vz0wht5gPjdDlWyLjTe4xQ==","MDhlYjlhYzU2NmY0MTc4MA==OQoMamKrEPsOJIaX3XCGlg==","24","Female","ZjVkZWZkODAzYzk4NWFjNA==hQjksDVvs5QZkefsSet2zKd0wti6owplh/QFfIXWxTE=","18","3","3","3","2","0","0");
INSERT INTO constituents VALUES("163","ZGI5MzU1OWQ0NjRjNjlhNw==JIqLShbWRwG5im6btCDdig==","NzVlYmQzM2UwMTlhMzNmZA==xuQIf/WWNBIX67OSzFirvg==","MjJhMTg2Njg3OTk3NjQ3OQ==dJqtqwUNMd/3RS/4V1p95g==","23","Male","Y2VjNDQ3MGI4NzQwODFkNQ==4J3vDTQ2e8OvNjQaqf8xj6/I+Ls/E2z47g0WuFnZuHI=","18","3","3","3","2","0","0");
INSERT INTO constituents VALUES("164","NTk0ZWRkNDYyOGQ2NDVjNw==c8V23v9SmwYAFcC78eRvUw==","NGU1YzcxNzc4MGVkMDE1OQ==JgWjNDyitMOcoQyuK2VvOA==","OGUxMWVlNDAyY2I5Y2ViNA==h727qzTbuoOQAF2QPXaqZg==","30","Male","NzE0MjBjMDI0YmY2ZmQ4Nw==puInzzAqNJOXkvVMg3wE7rBd2oWPdaJ6Rmv46l5WeEk=","18","3","3","3","2","0","0");
INSERT INTO constituents VALUES("165","MDQ0MDJlYmRkNGRjMzU4MQ==0V6E7Zk+ac3FQOvy08DGWA==","MDdmYThiMzI1MjUxNDRhOA==NeutzQATFtC1QyfV3VNoKw==","M2I1MzQwNTczZGRhMWEyYg==lAVaK7+OHqDfyPo1KcdvUQ==","33","Male","ODk3ZDJhMzM5YmZhNTVhMg==wRFlchEiA5JdqNpOBOD/AP5Blgi1RKR3FPsIIGsHdkU=","18","3","3","3","2","0","0");
INSERT INTO constituents VALUES("166","ODc3ZmNkMmJmMTkxZDEyNg==NpA3OHHZAAWToaJrdrudWA==","YWYzNGVmOWM3YjA3ZTBiMg==yxcjSjFQt7Im01xIuVmdJA==","NDNmOTlmOGVhYzUwMDY5NQ==WerAv+StgFEHVfANFo3SUw==","31","Male","M2JlMGY4MDQ2M2MxNzlhNg==HXZr/3US2UX0aO/iYoEY66PlOCuBKTLseufV5dalukU=","18","3","3","3","2","0","0");
INSERT INTO constituents VALUES("167","YTY3YTEwODUyZDIyMmM3MQ==mew/OlQumFGfs6zZZa72uA==","MmJlOTA5OGU3NzQ3OTdmZg==5CE4u+i1sjhhw4w7Ag3x3A==","MDY0MDM4YWJjNDhjYTMzOQ==w3SZh4YT9RUnlMaihC/0/g==","29","Male","Mjk5ODNlMzFiNDYzZWY1ZA==fu7keq9bHe+07s3bIBsQbKLaMVN2Wbk/iJwq84Xf9fY=","18","3","3","3","2","0","0");
INSERT INTO constituents VALUES("168","N2VkMjlkMjEyYWM3YzRlOQ==3x8+9S8WReWOnHMT4i4zXg==","MWFkOWUwODk4YmYxODExMQ==zZDzntacSY9er95Mz9bjLg==","NDVmODk2N2Y5ODQ5OGZiNw==n/7K+JGxXvoSSg4OZwna2w==","41","Male","MDE1YmRmOTMzMTc2MzViYQ==PMARyqY1rJzCXnuEa8/FP+0YVpzuLrdPCOuVYrX0q4c=","18","3","3","3","2","0","0");
INSERT INTO constituents VALUES("169","M2NmMDAxNWEzN2EzMWU1OA==18xdkGooxFopZ8P1na79zg==","ODM1YTczZDVmOTIzOTc3ZQ==SoPxmJmevQJsKFgnhedoQw==","NjA1ZjMxZmZkMTVjY2M4ZA==Jw+Z+jkjnHfxHeqYVctZmQ==","33","Male","MDE1OWY0ZmY0MDJkNmNiMA==294AlIXDAFmA10kDRzh/fcxTCwwBLs6Uf3r2ttUQ/ko=","18","3","3","3","2","0","0");
INSERT INTO constituents VALUES("170","MzFiZTI3OTMwMjgxYmRmMw==ryOq0Tfky/HyrIFZFqgrdQ==","Y2RjMWJkMTk0YzQ3ZDcxOA==f8RI3Jv7eiAGguQ0j1C+lQ==","ZDViOGI4MjQ1MDU5ZDZhZg==G+oN87HNCJQMObGFoD8nhw==","35","Female","NTFhMzJmMzBhNzBjMGRjMg==JlVCv5losk7XQGdRjkz+atS/U8zbyFEakPHNOPrh3Dg=","18","3","3","3","2","0","0");
INSERT INTO constituents VALUES("171","OGNjYTBjOTdlZTkxYTMyYg==uiREBCiKX4wGMms30mDnbA==","YTc4YzlhNDA1Y2FlYmU2OQ==qIKJw83S96drde2GUaPsWQ==","MTA4ZTBkNDA3NDI0Yzg4MA==3cC5DslshFqRged1Gb2yEA==","27","Male","NjI1MDljZDk5ODgyM2NjYg==MoarO86+V9yG4U7gBUxi1VVCFrtGUeEj6lQdY5LuIjk=","18","3","3","3","2","0","0");
INSERT INTO constituents VALUES("172","OGVhYTZmMWE0NTVlNTI3ZQ==1BtuyATLBYUIQes4EKAYWw==","M2NiYWFhZTlhZGExOTg1YQ==cxyl6p4oeAcGF7CqLjMymQ==","NzdjZjhjYjhlNjJhYTk1MQ==11gMGMrMutyzfiUfX6BQeg==","29","Male","YTkzMmI1ZjFhZjBhMzk3ZQ==UYS8l8kQ75e+B+hnBrZLn9TP+LCVWIl6jfjVdXL9HZE=","18","3","3","3","2","0","0");
INSERT INTO constituents VALUES("173","ODAxZDhkMDYyODQ0ZTkzZg==Qdulc2V5991PaqcHbzTFDg==","YmUxZDkwNWU3ZWMzZTVkNA==U5xOXkDxjn/bqcZAdbFQdg==","NmZjOTc3MmNmMWJhMmViZg==XcPH468sW1GLnGiyYcxh6Q==","30","Male","NDJjZWJlOTUwMTdhNzlhYQ==O90pfLGYoWgxOiXvP0HEArg505jKvpzQVX110iM+yIc=","18","3","3","3","2","0","0");
INSERT INTO constituents VALUES("174","MWY4ZTA0NTM0ZmQ0MTc2Yg==NGGtIKeTm0fQTSLQnzFHDg==","MDk0MGU5NTA1OGMxODk1Zg==dhBZwtC5M9rSJ89fAHbwsA==","ZmY1NjcyNTM2NmY5YTQ3MA==wbfrx47NeuLevxVoySY7gQ==","32","Male","NTg5NDliMWRhOGEzM2QzOQ==Qs9iZsd++Mviud6uXn8CoeWC5Q0rLSIIcFopTzmiBck=","18","3","3","3","2","0","0");
INSERT INTO constituents VALUES("175","ZDhhMDczMWExYmQ2NDcyYQ==MgMkrWnKDGLx3oKlODMC1w==","N2Y1MWQzMzA0NjA0OTk1Yg==g5vO0YmOIIQjNgbaHmxuLg==","YjUyOTU1NWFhNzhkNGYzMA==QqRGvMKWCVQL+EmwV/QwFw==","21","Male","MzI5ZjU3ZmNjMjQzMTE5NA==0Rc8/erZLktQOjpbAGZ5PH90G6VglvSUO2wDhRzFWFI=","18","3","3","3","2","0","0");
INSERT INTO constituents VALUES("176","N2FiZWM4MWQ2ZjcwNDVlYQ==6H6AirP1YemMkoooYrgkUw==","ZDdjZDEzYjRjZWY5MjU5ZQ==g3gZ2Mg4v9sBjxGB6RHm1A==","OTI4ZWZlNzhhOTVjNzU4Yw==5Sks9iYJ+Cvnv1HQtbFtcA==","26","Male","MzdhMWYxZDg3NTM4MTI2Mg==pR1B0qn2PYLNNftzbIZ07KX03yckLIcPjHi2Zic2Q08=","18","3","3","3","2","0","0");
INSERT INTO constituents VALUES("177","MTIzMTI3NTMwODFhM2I1Nw==d8ftFZbpI0KhFVxlVMlfSg==","MDBjZDFmNzFmYTc5YTMwZA==tQq753HHNcXXDQm14VAsvw==","YTFmOGQwODE2Mjg5ZWI1OQ==m6v93nuZ13aY8rgxrzmp5w==","28","Male","NzY2NjMzOTExNDBmODM4Ng==ib7QpPD0MLve7wRgqnSbRn1QnHzttcnFtKEKahhj+6A=","18","3","3","3","2","0","0");
INSERT INTO constituents VALUES("178","YzI3NzY3ZmQzNDZkZjYyYw==pJXOblgP/BXL8O32drFQLQ==","ZWYyNTZhZGY4ZGRlOTA5Yg==w9AOnxYD7+mYGaEnvVdsLQ==","OTQ5YzVmYzQzOWFkYWVkMQ==ZyfR7wvaalU5zWzbtIpn9Q==","43","Male","ZWI5ZTc0NWU4NTJjYTVkZQ==v5rMTieBN2q0496j8DHNqbqTof4U6YkHLb1Uo3Tt5ws=","18","3","3","3","2","178","25");
INSERT INTO constituents VALUES("179","YTljMTU1NzlmZmNkN2QwYg==J72eaWGEyrwhe5BWx3dvAQ==","Y2QxNTZhMDUwMmIyYjQzYQ==QM2Rz40hdMJIrfNeJwGjAQ==","N2VlODAwNGUzOTRmYjcxMg==4we0VZWRnRVJBSdOUzkz7Q==","23","Female","NDllZmJkMzNiNzkxMTRjOA==fo7D141+rnKbzrJKpVFIAjBbaNbGaTDbYpsCeuafOjA=","20","4","4","4","0","179","26");
INSERT INTO constituents VALUES("180","YWI0M2I1OWUxZGU2YzNjOQ==3WSMJYe22D9JEp2KEn28jQ==","ZTc5MmMzN2M5NmE0Zjk5OA==MEqW1OS3JjEUJcIW5b45dA==","NTAxOGQzODBmOGNkZjQ1ZA==3RtIZI2La+a2UhSIPvgjlg==","30","Male","ZWI5ZTc0NWU4NTJjYTVkZQ==v5rMTieBN2q0496j8DHNqbqTof4U6YkHLb1Uo3Tt5ws=","18","3","3","3","2","178","0");
INSERT INTO constituents VALUES("181","MDk0MWFjM2M1YmIzOWU4OA==x1DyEq+9NNv2HCue23RkfA==","ODZjNGM2OTViMzc1OTFiMA==sSf0emXBvx0ZY6SlkQwi4A==","NTcyZGQ2MGY2MDVjMmFlZg==kHpvXdQ1T3a1h/7udOiEgw==","35","Male","ZWI5ZTc0NWU4NTJjYTVkZQ==v5rMTieBN2q0496j8DHNqbqTof4U6YkHLb1Uo3Tt5ws=","18","3","3","3","2","178","0");
INSERT INTO constituents VALUES("182","OWZkNjdkYmZiZTcxNGQzNg==8+nd+V0go948YVr5IHeqlg==","M2MxZWYwYjA2YTg0ZDdkNw==6MbT80xdRgcob+/U+ras0A==","Y2QwZDQxZjAxNmZmMjYwNw==UMo9C9HqAGc8Yv9UX8zAqw==","32","Female","ZWI5ZTc0NWU4NTJjYTVkZQ==v5rMTieBN2q0496j8DHNqbqTof4U6YkHLb1Uo3Tt5ws=","18","3","3","3","2","178","0");
INSERT INTO constituents VALUES("183","NmVlY2QyYjk4NzBiNTBiYg==6+Guug9OWOxgsteqGmplVA==","MDZjNjljZjU0MTE2MGU4Yg==8UlXrEg1bBoVvUSEOuABBA==","NTE4ZDhjN2UxOTMyMGY4NQ==hSKBj+5ItBxr+vSnZ3eb/A==","29","Female","ZWI5ZTc0NWU4NTJjYTVkZQ==v5rMTieBN2q0496j8DHNqbqTof4U6YkHLb1Uo3Tt5ws=","18","3","3","3","2","178","0");
INSERT INTO constituents VALUES("184","MWQwMjcxMTUzZGFjMmQ2OA==rmAsLQlCYWUi5vxKDfSE1g==","ZTY3ZTFmZjM1NmUwMGE4Yg==kGJ54GceM+DS3Vwsq9rFAg==","ODUyMGQyZDk1OTk4YTU0Nw==MNPBeFIaRdtBy38Cf5m9uw==","25","Female","ZWI5ZTc0NWU4NTJjYTVkZQ==v5rMTieBN2q0496j8DHNqbqTof4U6YkHLb1Uo3Tt5ws=","18","3","3","3","2","178","0");
INSERT INTO constituents VALUES("185","YTc1YmE3OWNjZDJmNWZiOA==Nsqxyfs29CtfXe57UQCTzQ==","MGI5Y2VmNjc0NGMzYTcxNg==aA4JH26MkuY0XfyhETFbxA==","N2NiNDU5NTIyODA2NjhhMg==xqxwy1219SLYPmTiQ0/tnQ==","34","Male","NDllZmJkMzNiNzkxMTRjOA==fo7D141+rnKbzrJKpVFIAjBbaNbGaTDbYpsCeuafOjA=","20","4","4","4","0","179","0");
INSERT INTO constituents VALUES("186","ZmM3Mzk1MzJmNmMzZmE0Zg==1OStCe68JR6pX8YsXC6hgA==","ZjZmMjJlMTc2MjkzZGU3OA==t2Gou+Cp96K1yIxylitKkw==","ZWNhM2JlYmZiMmEyNjIyNg==vkeCoMw4HJjUJ0ODKmNbRw==","20","Male","NDllZmJkMzNiNzkxMTRjOA==fo7D141+rnKbzrJKpVFIAjBbaNbGaTDbYpsCeuafOjA=","20","4","4","4","0","179","0");
INSERT INTO constituents VALUES("187","OGM3YjViN2NiMmMxM2VmYg==er6plVBEl2zAqUrAssrxLA==","MzllODczZmVmZjBlMTBjMw==vC3/aefh9/dKq+DJ1kF2WA==","M2E5ODRkMzliMGM4MmM5Mg==KEFCJ5JApn0tuw0Rp0rvzQ==","24","Male","YjNiZjliZmY5YzMwMmU4MQ==LfUPL83EszL8da738MltUlzMYrOX7r8gKKddVc/s3PQ=","20","4","4","4","0","187","26");
INSERT INTO constituents VALUES("188","NDIxZjkzNDBjZmQwZWVmYQ==EKc9bbC22QdMxjQZQcqksQ==","ODkyOWFlNmZkMzBjNzU2MQ==Ke8eHiKJsCm0lvenxSmyNg==","OTBjYmI3ZDU1MzY1NWFlNQ==c7jay6/F4yFGBYF5o2ybRQ==","29","Female","YjNiZjliZmY5YzMwMmU4MQ==LfUPL83EszL8da738MltUlzMYrOX7r8gKKddVc/s3PQ=","20","4","4","4","0","187","0");
INSERT INTO constituents VALUES("189","ZTQ0ZWJlOWM0MmUxY2NmMg==PKnXOybz/0twZ9Qbed2LYw==","YmY4ZTFhN2NmNWZjYzI3NQ==29MeEr8EBXcPUL4PrtRUpw==","ZWFjYzFmOGRiYzkyNWY0Mg==5JAvuUjq564Bfr/Lck1Dkw==","20","Female","YjNiZjliZmY5YzMwMmU4MQ==LfUPL83EszL8da738MltUlzMYrOX7r8gKKddVc/s3PQ=","20","4","4","4","0","187","0");
INSERT INTO constituents VALUES("190","N2YyYjY0NDBhYjlhODdmZA==XbSwGJ0zNjkde6BG+INQBA==","ZmQ5ZjcyYjZkODEyMzY2NQ==mY94w5jV6bZLjvFPEiJ7fA==","N2FlNTc3ZTUzMzRmZWQ5ZA==/QXWXX1UFyj/eI16DIrtMA==","36","Female","OGY4MDlmYjRlZWRiMGQwYw==3A+Yb6bX3AO1/a1UJsjDQeiPMIerobzYXlXkRYuUnEA=","20","4","4","4","0","190","26");
INSERT INTO constituents VALUES("191","NjM3NzQ4ODlkOTk2YmQzYQ==X0X4zr4Kd1zmOsy0sggnhw==","ZWM3ZGQ3M2UzODI5NDg5Ng==o/4QGFl+nFMZ/+TZG6aulA==","NDcwYjM1MzRjYjQyMTVmMA==xn85LvzhiuOUEVY0mingaQ==","23","Male","OGY4MDlmYjRlZWRiMGQwYw==3A+Yb6bX3AO1/a1UJsjDQeiPMIerobzYXlXkRYuUnEA=","20","4","4","4","0","190","0");
INSERT INTO constituents VALUES("192","YzRmMzMzZThmNWY1M2Q1NQ==cXjAtWy2byFex5VbZU/vJg==","N2QzMzIzYWNlZTQzZmQwNw==9YEgShFHwM+exbHRN3wv6Q==","MDg5YTY0MmE4NWQwY2EwOQ==0BiZguF0RwxEFBze1r4XOQ==","35","Male","NDVmNGExYjI2MGVlMTc2OA==zEpap8iU8xaTlZ66XrkUlFmWwWjVGEzpNIH72uOekXI=","20","4","4","4","0","192","26");
INSERT INTO constituents VALUES("193","N2VjMjYwNThiODhhNDVhNw==GFLQcSSADohb2JgWUA9lSA==","MzZmYWY5MDBjYTZlOGU5ZA==XU1EHYoA12JhXBp5CKPwlg==","MzcwMTllMmU1MzM0ZWY2Yg==GE5qiXkGr4RYfIoxFNkrvg==","28","Male","NDVmNGExYjI2MGVlMTc2OA==zEpap8iU8xaTlZ66XrkUlFmWwWjVGEzpNIH72uOekXI=","20","4","4","4","0","192","0");
INSERT INTO constituents VALUES("194","NDE5YTA0MDM1YWRiYjI5NA==Ob+L+17WjFi+sWu9wPqifw==","NTFiOThkYTgzYWJiN2ZhYg==Bdt4RfYRxV76Lw9NUn82wg==","NGRiODZiZThjMjc2NWYwYw==nMmo8lgBUj6h2/cYeU40Aw==","54","Female","YjQ3ZmNlY2NlY2JjZDFlYw==gCSTvGEcpv/2hxljugEVw9N27fgQuFhwBYzuRaWiLfU=","20","4","4","4","0","194","26");
INSERT INTO constituents VALUES("195","YzNmY2ExNzE1ZTU1MWI1Nw==dcDaLZwgN3UywQ8ooTbxAA==","Njk1MzU3YjEzMDAzZDdjMg==M0pdVmNYoW7KqXkr/Qj9Cg==","OGJlMTAxNTJkN2RkZGY3ZA==S6lNOeqjsDgzueeB3sfz+A==","23","Female","YjQ3ZmNlY2NlY2JjZDFlYw==gCSTvGEcpv/2hxljugEVw9N27fgQuFhwBYzuRaWiLfU=","20","4","4","4","0","194","0");
INSERT INTO constituents VALUES("196","MGVjZGJhN2RjZWFhZjdmNw==21IdkW11Zq9zSgkyx9tITg==","MDFjNTg3NzBhNzFkYzFlNA==raj667ghRP0W7hJkQ3WLew==","ZDhlZWFjNjZiNTA5MzUyNw==nhBej8J81TF9PqRT5dia/g==","29","Male","OWUyMDNhOWMxYzZkY2UwMg==HVkfI4l3lZ4Qikali7TzDedIpI+2rD645OO6K3MkTBs=","20","4","4","4","0","196","26");
INSERT INTO constituents VALUES("197","NTQwOGM0ODMxNjM1YmQ5Nw==zAPr8W1SWwzJhjI+FlUA5A==","NGZjMTY1Y2JlZTQxYmNjMw==Sg96GBAdvO830owKHm9sLw==","Y2RkZWY0NmNiZmEzMDE2Yg==hDgJ/zSb/5X6VznzjaBCkw==","28","Male","OWUyMDNhOWMxYzZkY2UwMg==HVkfI4l3lZ4Qikali7TzDedIpI+2rD645OO6K3MkTBs=","20","4","4","4","0","196","0");
INSERT INTO constituents VALUES("198","OTc5ZTUzMzY3YjZkYWNhNQ==jZDiVbjn7tokQBC+j98esg==","NjM5ODc3N2I5ZTlhMGM2MA==Hf6Xtzygi0AVKyBReA5q/A==","MTc1ZTRmZmNkZDY0MzI3Zg==qLgL6D1wFW1G7ATc+WgLGw==","30","Male","MjViOTI4OTljYTlkNDc0Ng==PYiqPx32XBLyPhK2j47NiG29ZtbhtvPhiTpxQY4jp9g=","20","4","4","4","0","0","0");
INSERT INTO constituents VALUES("199","ZjI0MDE1ZThkNTY2NjRiZg==EV9H/1/1snLRETCpXox93w==","MWE4OTA1Mjg0YjMzNmQ5Zg==6cbXw+Y/bd3AiGWZjyiIKg==","Y2IyZGJkYmYwNzg1YzEzNg==9CECa96/nRAeXprykPsEPg==","39","Male","ODMxMTJmZTdhNmVlMmEzOQ==hQPAz5os4PPqC+77117YGdCQRSrh6R7QW9GowqUCCLI=","20","4","4","4","0","0","0");
INSERT INTO constituents VALUES("200","NmJiYjI0OTBiODdlMDRhNQ==3sVXFCW+u3j9fM1GndAzpg==","ZDY1OWViNGFkOTMyNjFmNg==n0VTqI0qiSLkmrrtzyEPCA==","YjMyYzljODcwYmZhOTk3NA==9wuWiP96pJSD816hn55nvQ==","45","Female","NDg5MTJiZDM3NGRlYWY3YQ==WlAj7ui9fGuJ7TlAD/ogkPnIDt3ujthD9c+Tf4/YLDA=","20","4","4","4","0","0","0");
INSERT INTO constituents VALUES("201","OTBmODQ1YzFlMDhhNWE1MQ==rkEnuVKH/6kxVHRyIRJ8iQ==","NjRiMWQ2YjNkZTUzNjAwOA==QUZShBt/aKHzS5K4ksukIA==","MDY3MTI5YTFhN2MyMGZhYw==NrAxsE3mnKA+VTqfRG02Dg==","54","Female","NDc4OTQ0ZDE0MjRkYzg1Yw==2I6jqW0LQZ81XZlTQefwh0ii+aCYPUqPwThv+lgBIJ8=","20","4","4","4","0","0","0");
INSERT INTO constituents VALUES("202","ZWIwNzBiNDlhNjU5M2UyZQ==blflzFTdhEyMMT/UTT0VUQ==","YTUzY2ZhNGNiYmVkMTNiNw==hGkdPiMRSix9VdMuGVjWfw==","MDExODkzMDNjOTAxZmI2Yg==tMnXoq1SYtBm7+QbLeNRVg==","34","Male","OWJlZDhmNTNiNmU2NmY3NQ==sVKhMr8PhlfWukO5St3d2Hr/dg2JqtE9i0QG5677gJY=","20","4","4","4","0","0","0");
INSERT INTO constituents VALUES("203","NDBmM2IyODVhNDAwZmZmNw==MY9tIWt6fjoBEtMgUTOcYw==","ZjJmM2IzNDY3ZTdkYzY3Ng==uxNq7lKx1hZVOwhAPF0p/Q==","MzFlNzdhNTFlNGU3NmQyYw==tfDqueNC4ECmYDJxxCm6wA==","24","Female","YjEzYzE5OTk3Zjc4OTY3MA==djnk/VZ65AdXWq9pIOJcPSMGpOSL5WvnqBtcWfyj6Ws=","20","4","4","4","0","0","0");
INSERT INTO constituents VALUES("204","MWVmNDFhYmIyZDIxMWYzOQ==J1sGB2+4YqYxxkbNWQRfEg==","Y2Q2OGVjN2E2YmZiYTZiZA==4CP7uQJWQiQCYIHLrVCj0g==","Y2VmMzIyZGI5MjA5M2ZmNQ==3PHJ/DECsoEq73Jq4SIXHg==","17","Male","MjU0NWViYTE5ZjhiZWIzYw==4vyWjlsVRZ5XqXN6b8TlQM0qGI481mnGW69LHwwXuUM=","20","4","4","4","0","0","0");
INSERT INTO constituents VALUES("205","OWM0ODE1M2U1NDk4MGEyOA==b6Vyf7vDh+oKe2Y4TqybCQ==","MzkxMzM3ZjY4ODhlMWMzMQ==6a7v/omrIoZjb74tf6/hcw==","ZWJjZGE4MDQ1ZWMwZDcyYg==RAWVAW8ePyJFTCw1APNYxw==","23","Female","ZjE1NTc5ZGQwZTE1YmVhNw==FpBu+AJrLHP86nZxYx9vSyiyRFY+fjRGpEDHmb+epaM=","20","4","4","4","0","0","0");
INSERT INTO constituents VALUES("206","YWVhMzc0Yzg0MGExNWNiOQ==CemOlfe8mPG9cG8h/q0lMA==","YTY3ODM0Y2NiODQ5NmZhOA==EC+YudE3K/Z1o/x1HHvWWA==","ZjVjNzBkYjRmOGM5MjdhNw==i4X+TXRriHP5igddWKRU0g==","45","Male","MWQ5MjA3OWUwZjBhMTY3Yw==nlVSo2Nu7cPcFY2o6KhXRJeihWfg2zbwF/mXj1qGaPc=","20","4","4","4","0","0","0");
INSERT INTO constituents VALUES("207","YTY0YjIyMDQwNzdhMzYwNg==srC4aGNptO1TZ4Gh4KPqTw==","MDgyZjZiMDVjN2E1N2M0Yw==3ElwM5Jj2HJsInBT74dS5w==","M2UyMDFmYmUyNmVlODQzNw==8kTOazpE8VIBXHHsZZtVCw==","60","Male","MWRkZmU4ODY1OTkwMTM1ZQ==WwRjZUWv7bN1wJO4BNMYephvu479Mtr2wWCyHvilKRA=","20","4","4","4","0","0","0");
INSERT INTO constituents VALUES("208","N2RiMzk4M2JjNzQwYzVhMg==QNO343FqLiQNjjUUmw/hLw==","MDQ5NzVhYmU5MzlhMzQzNg==YxalVfLHk3Dn8LZEPoLbQA==","ZmQwYTM1Y2E2NTQzNTE4OQ==uI6coKkrSZ7GWyUd1DEdKw==","52","Female","MzRlOGUwOTMxNTIyNjdkNQ==J7Zq7oowGzmJmx0eMuRynx+yzxKFHjJpT3Jcwfv2HEo=","20","4","4","4","0","0","0");
INSERT INTO constituents VALUES("209","NDA5MjVkZjQzYjcyNGYwNw==Q9uV46QNEvE162dvFAnzvg==","YzgwZDY3MDM3YzI5NWUxMw==3pHOMNED40o6ytN6m7a3dg==","MmVjYzRmMTc0ZDY4NGY0Mg==s4B7YLVaAiaxdHx4W31DqA==","23","Male","Mzc3OGQ1MzdjY2VhMDNjZQ==/DtbIUsgt1iZx7HmM1GiMalDvyywGgXi6q83VkD8+k8=","20","4","4","4","0","0","0");
INSERT INTO constituents VALUES("210","ZmJlNzg3NzY4N2YzNWRmYg==yHThYhRcXU5TNLy+biBb1A==","NGI3N2UxYWIwNzhkMGQ2Ng==O58QOyyKmc3g4vhkQls43A==","YzFkYjNmOWY4NmE2ZTU0NA==FOePzl7PbxTvXDQw4tUMFQ==","52","Female","MzI5YzY4NDAwZmE1NzAzYQ==BGm4ldUalsFUq9UqIR+4UTKECP+NhDwmCr3vA1enWA4=","20","4","4","4","0","0","0");
INSERT INTO constituents VALUES("211","OThjMjQ5MmE4NDQwZWJhNw==cmNZ8RLZMPJUQegd9XIdtg==","ZGRjYTMzYWU2ODg1ZGQ3MA==E/8o1mNHCN8TgtvExoq5fA==","M2Y2OWQ2ZWUzZWVlZWRmMg==YteUjnZmjXXtr0WKkYC4pg==","23","Female","ZTgwZGZiODI4NzU0NWIyYg==PZMxiuwPXtnpvDz+KnMCSiYf5lvkiuG9JTVioFaA4Hs=","20","4","4","4","0","0","0");
INSERT INTO constituents VALUES("212","ZmRhNmQ4MmZhYTRhYWQyYg==ByXfFUZSsbP5F7IuqBanhg==","NGM1NTBlMjJmNjEyN2Y1MQ==C7axOsn4GbxUCZpal1+r3Q==","MDc4MTEzODMwNDAwMDczOQ==uEjEu0NkNeW41gNzkbV/Mw==","45","Male","NjE4YTBkMjE3MjE4MjI4Zg==0ZfwdxoQ2MYuQeuW8Wolet1iXf0Cm7I/CozQycKq67g=","20","4","4","4","0","0","0");
INSERT INTO constituents VALUES("213","Yjg4NjNmZjczNzgzMGRjMA==YyhC8IP+V5pfdCrRACJJdw==","YTNiY2YxYTM1NDM3MTljOA==vFTjCzFOL7FHIUv6a/N3FA==","ZTg0NTQ5NjlmNzY3OWNhMA==DdZ2z5UdpfjCWhEL84jszA==","25","Female","YWRlNGVhYWQ5NDAyOWIyYQ==/0TCcPGs5FjqJ8e9xOJwG6bwjZAdVvrHh0OztHfpx0s=","20","4","4","4","0","0","0");
INSERT INTO constituents VALUES("214","NTllNzgwYjNlYzZhZDcxMg==ofB95mIuTEiS/CetM4WlNg==","ODNiYWY0YzVjYThiYzIxZA==CkYTrCS2Li9+9hYziwvfBQ==","YmRkMzc3MGY3NjllODZlMQ==QmrckorDGrYJAQWf0nB5Dw==","56","Male","NDBkYTU0MTIxMzJlZjMyNg==psQOguTIfWrStmC2keS9jgdjeYXvLjEcjxqgLp0axOg=","20","4","4","4","0","0","0");



DROP TABLE disaster;

CREATE TABLE `disaster` (
  `disas_id` int(10) NOT NULL AUTO_INCREMENT,
  `disaster_level` varchar(255) NOT NULL,
  PRIMARY KEY (`disas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO disaster VALUES("1","Typhoon");
INSERT INTO disaster VALUES("2","Fire");
INSERT INTO disaster VALUES("3","Floods");
INSERT INTO disaster VALUES("4","Earthquakes");
INSERT INTO disaster VALUES("5","Landslide");



DROP TABLE evacuations;

CREATE TABLE `evacuations` (
  `r_id` int(100) NOT NULL,
  `p_id` int(100) NOT NULL,
  `c_id` int(100) NOT NULL,
  `b_id` int(100) NOT NULL,
  `eva_id` int(100) NOT NULL AUTO_INCREMENT,
  `evacuation_name` varchar(255) NOT NULL,
  PRIMARY KEY (`eva_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

INSERT INTO evacuations VALUES("1","1","1","1","1","barangka elementary school");
INSERT INTO evacuations VALUES("1","1","1","2","3","Kalumpang Elementary School");
INSERT INTO evacuations VALUES("1","1","1","3","4","Marikina High School");
INSERT INTO evacuations VALUES("1","1","1","3","5","H Bautista Elementary Schools");
INSERT INTO evacuations VALUES("1","1","1","4","6","SSS Village National High School");
INSERT INTO evacuations VALUES("1","1","1","5","7","Fortune Elementary School");
INSERT INTO evacuations VALUES("1","1","1","6","8","Industrial Valley Elementary school");
INSERT INTO evacuations VALUES("1","1","1","7","9","Jesus Dela Pena National High School");
INSERT INTO evacuations VALUES("1","1","1","8","10","Malanday National High School");
INSERT INTO evacuations VALUES("1","1","1","9","11","Marikina Heights National High School");
INSERT INTO evacuations VALUES("1","1","1","10","12","Nangka Elementary School");
INSERT INTO evacuations VALUES("1","1","1","11","13","Parang High School");
INSERT INTO evacuations VALUES("1","1","1","12","14","San Roque elementary school");
INSERT INTO evacuations VALUES("1","1","1","13","15","Marikina Elementary school");
INSERT INTO evacuations VALUES("1","1","1","14","16","Santo Nino Elementary school");
INSERT INTO evacuations VALUES("1","1","1","15","17","Tanong High School");
INSERT INTO evacuations VALUES("2","2","2","17","18","Tinago Brgy Hall");
INSERT INTO evacuations VALUES("3","3","3","18","19","San Nicolas");
INSERT INTO evacuations VALUES("4","4","4","20","20","San Joaquin Covered Court");
INSERT INTO evacuations VALUES("5","6","5","21","21","Hermosa");



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
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=latin1;

INSERT INTO evacuees VALUES("1","1","1","1","1","1","1","1","1","2019-10-25","Typhoon","ondoy");
INSERT INTO evacuees VALUES("2","1","1","1","1","1","2","1","1","2019-10-25","Typhoon","ondoy");
INSERT INTO evacuees VALUES("3","1","1","1","1","1","3","1","1","2019-10-25","Typhoon","ondoy");
INSERT INTO evacuees VALUES("4","1","1","1","1","1","4","1","1","2019-10-25","Typhoon","ondoy");
INSERT INTO evacuees VALUES("5","1","1","1","1","1","8","0","1","2019-10-25","Typhoon","ondoy");
INSERT INTO evacuees VALUES("6","1","1","1","1","1","10","10","1","2019-10-26","Typhoon","ondoy");
INSERT INTO evacuees VALUES("7","1","1","1","1","1","17","10","1","2019-10-26","Typhoon","ondoy");
INSERT INTO evacuees VALUES("8","1","1","1","1","1","18","10","1","2019-10-26","Typhoon","ondoy");
INSERT INTO evacuees VALUES("9","1","1","1","1","1","19","19","1","2019-10-26","Typhoon","ondoy");
INSERT INTO evacuees VALUES("10","1","1","1","1","1","21","19","1","2019-10-26","Typhoon","ondoy");
INSERT INTO evacuees VALUES("11","1","1","1","1","1","32","32","1","2019-10-26","Typhoon","ondoy");
INSERT INTO evacuees VALUES("12","1","1","1","1","1","33","32","1","2019-10-26","Typhoon","ondoy");
INSERT INTO evacuees VALUES("13","1","1","1","1","1","34","32","1","2019-10-26","Typhoon","ondoy");
INSERT INTO evacuees VALUES("14","1","1","1","1","1","35","32","1","2019-10-26","Typhoon","ondoy");
INSERT INTO evacuees VALUES("15","1","1","1","1","1","20","20","1","2019-10-26","Typhoon","ondoy");
INSERT INTO evacuees VALUES("16","1","1","1","1","1","22","20","1","2019-10-26","Typhoon","ondoy");
INSERT INTO evacuees VALUES("17","1","1","1","1","1","23","20","1","2019-10-26","Typhoon","ondoy");
INSERT INTO evacuees VALUES("18","1","1","1","1","1","28","28","1","2019-10-26","Typhoon","ondoy");
INSERT INTO evacuees VALUES("19","1","1","1","1","1","29","28","1","2019-10-26","Typhoon","ondoy");
INSERT INTO evacuees VALUES("20","1","1","1","1","1","30","28","1","2019-10-26","Typhoon","ondoy");
INSERT INTO evacuees VALUES("21","1","1","1","1","1","31","28","1","2019-10-26","Typhoon","ondoy");
INSERT INTO evacuees VALUES("22","1","1","1","1","1","5","5","1","2019-10-26","Typhoon","ondoy");
INSERT INTO evacuees VALUES("23","1","1","1","1","1","6","5","1","2019-10-26","Typhoon","ondoy");
INSERT INTO evacuees VALUES("24","1","1","1","1","1","24","24","1","2019-10-26","Typhoon","ondoy");
INSERT INTO evacuees VALUES("25","1","1","1","1","1","25","24","1","2019-10-26","Typhoon","ondoy");
INSERT INTO evacuees VALUES("26","1","1","1","1","1","26","24","1","2019-10-26","Typhoon","ondoy");
INSERT INTO evacuees VALUES("27","1","1","1","1","1","27","24","1","2019-10-26","Typhoon","ondoy");
INSERT INTO evacuees VALUES("28","1","1","1","1","1","14","14","1","2019-10-26","Typhoon","ondoy");
INSERT INTO evacuees VALUES("29","1","1","1","1","1","15","14","1","2019-10-26","Typhoon","ondoy");
INSERT INTO evacuees VALUES("30","1","1","1","1","1","16","14","1","2019-10-26","Typhoon","ondoy");
INSERT INTO evacuees VALUES("31","1","1","1","1","1","36","36","1","2019-10-26","Typhoon","ondoy");
INSERT INTO evacuees VALUES("32","1","1","1","1","1","37","36","1","2019-10-26","Typhoon","ondoy");
INSERT INTO evacuees VALUES("33","1","1","1","1","1","38","36","1","2019-10-26","Typhoon","ondoy");
INSERT INTO evacuees VALUES("34","1","1","1","1","1","9","9","1","2019-10-26","Typhoon","ondoy");
INSERT INTO evacuees VALUES("35","1","1","1","1","1","11","9","1","2019-10-26","Typhoon","ondoy");
INSERT INTO evacuees VALUES("36","1","1","1","1","1","12","9","1","2019-10-26","Typhoon","ondoy");
INSERT INTO evacuees VALUES("37","1","1","1","1","1","13","9","1","2019-10-26","Typhoon","ondoy");
INSERT INTO evacuees VALUES("38","1","1","1","1","1","36","36","1","2019-10-26","Typhoon","ondoy");
INSERT INTO evacuees VALUES("39","1","1","1","1","1","37","36","1","2019-10-26","Typhoon","ondoy");
INSERT INTO evacuees VALUES("40","1","1","1","1","1","38","36","1","2019-10-26","Typhoon","ondoy");
INSERT INTO evacuees VALUES("41","1","1","1","3","4","71","71","1","2019-10-27","Fire","");
INSERT INTO evacuees VALUES("42","1","1","1","3","4","72","71","1","2019-10-27","Fire","");
INSERT INTO evacuees VALUES("43","1","1","1","3","4","73","71","1","2019-10-27","Fire","");
INSERT INTO evacuees VALUES("44","1","1","1","3","4","66","66","1","2019-10-27","Fire","");
INSERT INTO evacuees VALUES("45","1","1","1","3","4","67","66","1","2019-10-27","Fire","");
INSERT INTO evacuees VALUES("46","1","1","1","3","4","68","66","1","2019-10-27","Fire","");
INSERT INTO evacuees VALUES("47","1","1","1","3","4","69","69","1","2019-10-27","Fire","");
INSERT INTO evacuees VALUES("48","1","1","1","3","4","70","69","1","2019-10-27","Fire","");
INSERT INTO evacuees VALUES("49","1","1","1","2","3","43","43","1","2019-10-27","Fire","");
INSERT INTO evacuees VALUES("50","1","1","1","2","3","44","43","1","2019-10-27","Fire","");
INSERT INTO evacuees VALUES("51","1","1","1","2","3","45","43","1","2019-10-27","Fire","");
INSERT INTO evacuees VALUES("52","1","1","1","2","3","46","43","1","2019-10-27","Fire","");
INSERT INTO evacuees VALUES("53","1","1","1","2","3","63","63","1","2019-10-27","Fire","");
INSERT INTO evacuees VALUES("54","1","1","1","2","3","64","63","1","2019-10-27","Fire","");
INSERT INTO evacuees VALUES("55","1","1","1","2","3","65","63","1","2019-10-27","Fire","");
INSERT INTO evacuees VALUES("56","1","1","1","2","3","54","54","1","2019-10-27","Fire","");
INSERT INTO evacuees VALUES("57","1","1","1","2","3","55","54","1","2019-10-27","Fire","");
INSERT INTO evacuees VALUES("58","1","1","1","2","3","39","39","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("59","1","1","1","2","3","40","39","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("60","1","1","1","2","3","41","39","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("61","1","1","1","2","3","42","39","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("62","1","1","1","2","3","56","56","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("63","1","1","1","2","3","57","56","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("64","1","1","1","2","3","58","56","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("65","1","1","1","2","3","59","56","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("66","1","1","1","2","3","47","47","1","2019-10-27","Fire","");
INSERT INTO evacuees VALUES("67","1","1","1","2","3","48","47","1","2019-10-27","Fire","");
INSERT INTO evacuees VALUES("68","1","1","1","2","3","49","47","1","2019-10-27","Fire","");
INSERT INTO evacuees VALUES("69","1","1","1","2","3","50","50","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("70","1","1","1","2","3","51","50","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("71","1","1","1","2","3","52","50","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("72","1","1","1","2","3","53","50","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("73","1","1","1","2","3","60","60","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("74","1","1","1","2","3","61","60","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("75","1","1","1","2","3","62","60","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("76","1","1","1","4","6","74","74","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("77","1","1","1","4","6","75","74","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("78","1","1","1","4","6","74","74","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("79","1","1","1","4","6","75","74","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("80","1","1","1","4","6","76","76","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("81","1","1","1","4","6","77","76","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("82","1","1","1","4","6","78","76","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("83","1","1","1","4","6","79","76","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("84","1","1","1","4","6","83","83","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("85","1","1","1","4","6","84","83","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("86","1","1","1","4","6","85","83","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("87","1","1","1","4","6","80","80","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("88","1","1","1","4","6","81","80","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("89","1","1","1","4","6","82","80","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("90","1","1","1","5","7","86","86","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("91","1","1","1","5","7","87","86","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("92","1","1","1","5","7","88","86","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("93","1","1","1","5","7","92","92","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("94","1","1","1","5","7","93","92","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("95","1","1","1","5","7","94","92","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("96","1","1","1","5","7","89","89","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("97","1","1","1","5","7","90","89","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("98","1","1","1","5","7","91","89","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("99","1","1","1","5","7","95","95","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("100","1","1","1","5","7","96","95","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("101","1","1","1","5","7","97","95","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("102","1","1","1","6","8","101","101","1","2019-10-27","Fire","");
INSERT INTO evacuees VALUES("103","1","1","1","6","8","102","101","1","2019-10-27","Fire","");
INSERT INTO evacuees VALUES("104","1","1","1","6","8","98","98","1","2019-10-27","Fire","");
INSERT INTO evacuees VALUES("105","1","1","1","6","8","99","98","1","2019-10-27","Fire","");
INSERT INTO evacuees VALUES("106","1","1","1","6","8","100","98","1","2019-10-27","Fire","");
INSERT INTO evacuees VALUES("107","1","1","1","6","8","103","103","1","2019-10-27","Fire","");
INSERT INTO evacuees VALUES("108","1","1","1","6","8","104","103","1","2019-10-27","Fire","");
INSERT INTO evacuees VALUES("109","1","1","1","6","8","105","103","1","2019-10-27","Fire","");
INSERT INTO evacuees VALUES("110","1","1","1","6","8","106","103","1","2019-10-27","Fire","");
INSERT INTO evacuees VALUES("111","1","1","1","7","9","107","107","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("112","1","1","1","7","9","108","107","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("113","1","1","1","7","9","109","107","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("114","1","1","1","7","9","110","107","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("115","1","1","1","8","10","111","111","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("116","1","1","1","8","10","112","111","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("117","1","1","1","8","10","113","111","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("118","1","1","1","8","10","114","111","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("119","1","1","1","8","10","115","111","1","2019-10-27","Typhoon","ondoy");
INSERT INTO evacuees VALUES("120","3","3","3","18","19","134","127","0","2019-10-28","","");
INSERT INTO evacuees VALUES("121","3","3","3","18","19","135","127","0","2019-10-28","","");
INSERT INTO evacuees VALUES("122","3","3","3","18","19","136","127","0","2019-10-28","","");
INSERT INTO evacuees VALUES("123","3","3","3","18","19","137","127","0","2019-10-28","","");
INSERT INTO evacuees VALUES("124","3","3","3","18","19","144","127","0","2019-10-28","","");
INSERT INTO evacuees VALUES("125","3","3","3","18","19","145","127","0","2019-10-28","","");
INSERT INTO evacuees VALUES("126","3","3","3","18","19","146","127","0","2019-10-28","","");
INSERT INTO evacuees VALUES("127","3","3","3","18","19","147","127","0","2019-10-28","","");
INSERT INTO evacuees VALUES("128","3","3","3","18","19","141","127","0","2019-10-28","","");
INSERT INTO evacuees VALUES("129","3","3","3","18","19","142","127","0","2019-10-28","","");
INSERT INTO evacuees VALUES("130","3","3","3","18","19","143","127","0","2019-10-28","","");
INSERT INTO evacuees VALUES("131","3","3","3","18","19","138","127","0","2019-10-28","","");
INSERT INTO evacuees VALUES("132","3","3","3","18","19","139","127","0","2019-10-28","","");
INSERT INTO evacuees VALUES("133","3","3","3","18","19","140","127","0","2019-10-28","","");
INSERT INTO evacuees VALUES("134","3","3","3","18","19","130","127","0","2019-10-28","","");
INSERT INTO evacuees VALUES("135","3","3","3","18","19","131","127","0","2019-10-28","","");
INSERT INTO evacuees VALUES("136","3","3","3","18","19","132","127","0","2019-10-28","","");
INSERT INTO evacuees VALUES("137","3","3","3","18","19","133","127","0","2019-10-28","","");
INSERT INTO evacuees VALUES("138","3","3","3","18","19","150","0","0","2019-10-28","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("139","3","3","3","18","19","151","0","0","2019-10-28","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("140","3","3","3","18","19","154","0","0","2019-10-28","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("141","3","3","3","18","19","157","0","0","2019-10-28","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("142","3","3","3","18","19","163","0","0","2019-10-28","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("143","3","3","3","18","19","162","0","0","2019-10-28","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("144","3","3","3","18","19","164","0","0","2019-10-28","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("145","3","3","3","18","19","165","0","0","2019-10-28","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("146","3","3","3","18","19","153","0","0","2019-10-28","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("147","3","3","3","18","19","160","0","0","2019-10-28","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("148","3","3","3","18","19","161","0","0","2019-10-28","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("149","3","3","3","18","19","173","0","0","2019-10-28","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("150","3","3","3","18","19","170","0","0","2019-10-28","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("151","3","3","3","18","19","148","0","0","2019-10-28","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("152","3","3","3","18","19","152","0","0","2019-10-28","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("153","3","3","3","18","19","177","0","0","2019-10-28","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("154","3","3","3","18","19","171","0","0","2019-10-28","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("155","3","3","3","18","19","166","0","0","2019-10-28","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("156","3","3","3","18","19","174","0","0","2019-10-28","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("157","3","3","3","18","19","176","0","0","2019-10-28","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("158","3","3","3","18","19","167","0","0","2019-10-28","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("159","3","3","3","18","19","155","0","0","2019-10-28","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("160","3","3","3","18","19","149","0","0","2019-10-28","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("161","3","3","3","18","19","168","0","0","2019-10-28","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("162","3","3","3","18","19","159","0","0","2019-10-28","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("163","3","3","3","18","19","158","0","0","2019-10-28","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("164","3","3","3","18","19","156","0","0","2019-10-28","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("165","3","3","3","18","19","172","0","0","2019-10-28","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("166","3","3","3","18","19","169","0","0","2019-10-28","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("167","3","3","3","18","19","175","0","0","2019-10-28","Typhoon","Ondoy");
INSERT INTO evacuees VALUES("168","3","3","3","18","19","178","127","0","2019-10-28","","");
INSERT INTO evacuees VALUES("169","3","3","3","18","19","180","127","0","2019-10-28","","");
INSERT INTO evacuees VALUES("170","3","3","3","18","19","181","127","0","2019-10-28","","");
INSERT INTO evacuees VALUES("171","3","3","3","18","19","182","127","0","2019-10-28","","");
INSERT INTO evacuees VALUES("172","3","3","3","18","19","183","127","0","2019-10-28","","");
INSERT INTO evacuees VALUES("173","3","3","3","18","19","184","127","0","2019-10-28","","");
INSERT INTO evacuees VALUES("174","3","3","3","18","19","178","127","0","2019-10-28","","");
INSERT INTO evacuees VALUES("175","3","3","3","18","19","180","127","0","2019-10-28","","");
INSERT INTO evacuees VALUES("176","3","3","3","18","19","181","127","0","2019-10-28","","");
INSERT INTO evacuees VALUES("177","3","3","3","18","19","182","127","0","2019-10-28","","");
INSERT INTO evacuees VALUES("178","3","3","3","18","19","183","127","0","2019-10-28","","");
INSERT INTO evacuees VALUES("179","3","3","3","18","19","184","127","0","2019-10-28","","");



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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO missing VALUES("1","1","1","1","1","M2E5M2E5YjE5MGQyNWZmMw==5oMsx5PCRCdFHBaYq4/o0A==","YjU0MzYzM2ZmNzJiOGQ2Zg==KRzDXOoiKT7VczBIhP4mXA==","ZjY0N2ExYTE5NjIyZWM2Zg==UqjXa/hvR7EQ6LD4Z9FLFQ==","28","Female","70251697_417838888867703_4440459399051345920_n.jpg","ZmNhNjcyOTI5MDNhOGYxYQ==D3vG9oXOUVyu3JWOngz9QA==","Blonde hair, brown eyes","1");



DROP TABLE province;

CREATE TABLE `province` (
  `r_id` int(100) NOT NULL,
  `p_id` int(100) NOT NULL AUTO_INCREMENT,
  `province_name` varchar(255) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO province VALUES("1","1","metro manila");
INSERT INTO province VALUES("2","2","Albay");
INSERT INTO province VALUES("3","3","Ilocos Norte");
INSERT INTO province VALUES("4","4","Batanes");
INSERT INTO province VALUES("5","5","Aurora");
INSERT INTO province VALUES("5","6","Bataan");



DROP TABLE region;

CREATE TABLE `region` (
  `r_id` int(100) NOT NULL AUTO_INCREMENT,
  `region_name` varchar(255) NOT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO region VALUES("1","ncr");
INSERT INTO region VALUES("2","Region V");
INSERT INTO region VALUES("3","Region I");
INSERT INTO region VALUES("4","REGION II");
INSERT INTO region VALUES("5","Region III");



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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE typhoon_name;

CREATE TABLE `typhoon_name` (
  `typhoon_id` int(11) NOT NULL AUTO_INCREMENT,
  `disas_id` varchar(100) NOT NULL,
  `typ_name` varchar(255) NOT NULL,
  PRIMARY KEY (`typhoon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO typhoon_name VALUES("1","Typhoon","ondoy");
INSERT INTO typhoon_name VALUES("2","Typhoon","Reming");
INSERT INTO typhoon_name VALUES("3","Typhoon","Ondoy");
INSERT INTO typhoon_name VALUES("4","Typhoon","Ondoy");
INSERT INTO typhoon_name VALUES("5","Typhoon","Yolanda");
INSERT INTO typhoon_name VALUES("6","Typhoon","Chedeng");



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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

INSERT INTO users VALUES("1","0","0","0","0","0","","","","","","admin","21232f297a57a5a743894a0e4a801fc3","1","0");
INSERT INTO users VALUES("2","1","1","1","0","0","Marcelino","Reyes","Teodoro","09285937878","josesibugan@gmail.com","Marcelino6261063","2da5ad4fae9a1a59bed5a7a041c6b7a5","2","0");
INSERT INTO users VALUES("3","1","1","1","1","1","jose rodny","sumanting","sibugan","09285937878","josesibugan@gmail.com","joserodny2723808","7fe8bbec7a509c2cdc6cdb0befa794f5","4","0");
INSERT INTO users VALUES("5","1","1","1","1","1","Lorena","","Cruz","09477779270","delosreyesmarc23@gmail.com","Lorena8262946","f20afbbd70265009820f53e294d5a942","4","0");
INSERT INTO users VALUES("6","1","1","1","2","3","Rommel","Santos","Pinol","09477779270","delosreyesmarc23@gmail.com","Rommel5434913","97c8deb05130c6720a7acd5157dbf116","4","0");
INSERT INTO users VALUES("7","1","1","1","3","4","Edgar","","Munoz","09477779270","delosreyesmarc23@gmail.com","Edgar352745","faf7b4ce83d34a9e53d73716d1278b79","4","0");
INSERT INTO users VALUES("8","1","1","1","3","5","Gabriel","","Dizon","09477779270","delosreyesmarc23@gmail.com","Gabriel9203314","74b92b1e414f966b078d629f5f86c1c7","4","0");
INSERT INTO users VALUES("9","1","1","1","4","6","Manuel","","Serreno","09477779270","delosreyesmarc23@gmail.com","Manuel3951565","2befe4e003653de408d650a888b68229","4","0");
INSERT INTO users VALUES("10","1","1","1","5","7","Angela","","Misamis","09477779270","delosreyesmarc23@gmail.com","Angela715614","8aa31669eb44bfaef68f704c8cc8fb49","4","0");
INSERT INTO users VALUES("11","1","1","1","6","8","Michael","","Nunez","09477779270","delosreyesmarc23@gmail.com","Michael980058","baf8fb98bd6c05cd52d063ff5b5afbdd","4","0");
INSERT INTO users VALUES("12","1","1","1","7","9","Eric","","Marquez","09477779270","delosreyesmarc23@gmail.com","Eric7124274","b886fe90aafaa1a20e985ca68e2d2cea","4","0");
INSERT INTO users VALUES("13","1","1","1","8","10","Arlene","","Macabenta","09477779270","delosreyesmarc23@gmail.com","Arlene8908285","18650fdbbba155e1b13e466e4bfdcab4","4","0");
INSERT INTO users VALUES("14","1","1","1","9","11","Elvin","","Sacabon","09477779270","delosreyesmarc23@gmail.com","Elvin7823919","23f1f7397a3053ca0c643721fabfea8c","4","0");
INSERT INTO users VALUES("15","1","1","1","10","12","Joseph","","Baretto","09477779270","delosreyesmarc23@gmail.com","Joseph7154629","453b038000cd2bd37534d644befb4a75","4","0");
INSERT INTO users VALUES("16","1","1","1","11","13","Marjorie","","Pined","09477779270","delosreyesmarc23@gmail.com","Marjorie7970286","12c900b9140ef36f09c644457bef70db","4","0");
INSERT INTO users VALUES("17","1","1","1","12","14","Jeffrey","","Ruiz","09477779270","delosreyesmarc23@gmail.com","Jeffrey8720503","c4c5ce22e0144c2b9aaed0ba97aff4fb","4","0");
INSERT INTO users VALUES("18","1","1","1","13","15","Normie","","Daez","09477779270","delosreyesmarc23@gmail.com","Normie7672438","9093f977ad8b4f33fd5a25fec7240fa5","4","0");
INSERT INTO users VALUES("19","1","1","1","14","16","Shiela","","Gumba","09477779270","delosreyesmarc23@gmail.com","Shiela7226767","cade8ac5077e79b493d569db8df58115","4","0");
INSERT INTO users VALUES("20","1","1","1","15","17","Letty","","Ferrer","09477779270","delosreyesmarc23@gmail.com","Letty8890361","428784a3a22f466bb03ac6ae1d0a068a","4","0");
INSERT INTO users VALUES("21","2","2","2","0","0","Andoy","Remo","Go","09477779270","delosreyesmarc23@gmail.com","Andoy434098","3f9785971812c3c4dd58215cd82895b4","2","0");
INSERT INTO users VALUES("22","2","2","2","17","18","Kent","","Tupas","09477779270","delosreyesmarc23@gmail.com","Kent5408510","e0551370f0a06f9f6a8428526adc8193","4","0");
INSERT INTO users VALUES("23","3","3","3","0","0","eric","","jasp","09455716306","salcedoedith3@gmail.com","eric7217635","a9345c87f43cb8e8f60f8f15c41ce61e","2","0");
INSERT INTO users VALUES("24","4","4","4","0","0","Denden","","Matignas","09455716306","salcedoedith3@gmail.com","Denden1712434","9c5ca9c599ec9086e7af1cf4a97165ab","2","0");
INSERT INTO users VALUES("25","3","3","3","18","19","kevon","","hernandez","09455716306","salcedoedith3@gmail.com","kevon1151686","66a6a2c4e787854a0d12c9ce7c5511b2","4","0");
INSERT INTO users VALUES("26","4","4","4","20","20","Anthony","","Graham","09455716306","salcedoedith3@gmail.com","Anthony9059928","c41e62ebbaf1a3aefe875a12905456d2","4","0");
INSERT INTO users VALUES("27","5","6","5","0","0","Andrei","","Land","09455716306","salcedoedith3@gmail.com","Andrei1123131","b9422921ee05447dbb9d7fe3923754aa","2","0");
INSERT INTO users VALUES("28","5","6","5","21","21","Jessie","","Mendiola","09455716306","salcedoedith3@gmail.com","Jessie9209476","c1847d2e541cfb59762cb372f9dc1b31","4","0");



