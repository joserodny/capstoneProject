DROP TABLE brgy;

CREATE TABLE `brgy` (
  `r_id` int(100) NOT NULL,
  `p_id` int(100) NOT NULL,
  `c_id` int(100) NOT NULL,
  `b_id` int(100) NOT NULL AUTO_INCREMENT,
  `barangay` varchar(255) NOT NULL,
  `status_id` int(100) NOT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

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



DROP TABLE city;

CREATE TABLE `city` (
  `r_id` int(100) NOT NULL,
  `p_id` int(100) NOT NULL,
  `c_id` int(100) NOT NULL AUTO_INCREMENT,
  `cities` varchar(255) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO city VALUES("1","1","1","marikina");
INSERT INTO city VALUES("2","2","2","Ligao City");



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
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO province VALUES("1","1","metro manila");
INSERT INTO province VALUES("2","2","Albay");



DROP TABLE region;

CREATE TABLE `region` (
  `r_id` int(100) NOT NULL AUTO_INCREMENT,
  `region_name` varchar(255) NOT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO region VALUES("1","ncr");
INSERT INTO region VALUES("2","Region V");



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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO typhoon_name VALUES("1","Typhoon","ondoy");
INSERT INTO typhoon_name VALUES("2","Typhoon","Reming");



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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

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



