/*
 System Name    :  TEST                                        
 Entity Name    : 
 Table  Name    :  T_TRANSLATE
 작성자         :  노정환 					
 작성일         :  2004.03.25                             
 내용           :  사용자 함수를 이용하지 않고 TRANSLATE 함수를 이용한 문자열 제외
 비고	     :  
*/

CREATE TABLE T_TRANSLATE
(
STRING_VC VARCHAR2(20)
)
/
INSERT INTO T_TRANSLATE (STRING_VC) VALUES ('1');
INSERT INTO T_TRANSLATE (STRING_VC) VALUES ('2');
INSERT INTO T_TRANSLATE (STRING_VC) VALUES ('3');
INSERT INTO T_TRANSLATE (STRING_VC) VALUES ('4');
INSERT INTO T_TRANSLATE (STRING_VC) VALUES ('5');
INSERT INTO T_TRANSLATE (STRING_VC) VALUES ('OoopS');
INSERT INTO T_TRANSLATE (STRING_VC) VALUES ('6');
INSERT INTO T_TRANSLATE (STRING_VC) VALUES ('6.5');
INSERT INTO T_TRANSLATE (STRING_VC) VALUES ('7');
INSERT INTO T_TRANSLATE (STRING_VC) VALUES ('2.2.2');
INSERT INTO T_TRANSLATE (STRING_VC) VALUES ('8');
INSERT INTO T_TRANSLATE (STRING_VC) VALUES ('9');
INSERT INTO T_TRANSLATE (STRING_VC) VALUES ('10');
