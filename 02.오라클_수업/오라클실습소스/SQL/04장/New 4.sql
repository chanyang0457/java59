SELECT * FROM t_giftorder;


������ ������ �ֵ��� �ϰ� ������ �����ϱ� ���� ����1, ����2�� ����

SELECT name_vc, quantity_nu q1,quantity_nu q2 FROM t_giftorder

�� ������ �ζ��� �� ����ؼ� �ۿ��� ROWNUM�� ���� �� 2�� ������ ���� 0�� 1�� ������.

SELECT*
FROM(
     SELECT name_vc,quantity_nu q1
          , quantity_nu q2
          FROM t_giftorder
          ORDER BY name_vc
          )
          
mod(rownum,2)�� ���� decode�� �и��ϰ� 0�� 1�϶� q1�� �Ѹ��� q2�� �Ѹ��� �����ϰ�
||','|| concat ó��

SELECT name_vc,MAX(DECODE(MOD(rownum,2),1,q1))
      ||','||
      MAX(DECODE(MOD(rownum,2),0,q2)) value
  FROM (     
       SELECT name_vc, quantity_nu q1
             , quantity_nu q2
             FROM t_giftorder
             ORDER BY name_vc
             )
     GROUP BY name_vc        


        