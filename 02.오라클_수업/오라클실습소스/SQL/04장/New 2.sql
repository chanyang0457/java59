SELECT * FROM t_letitbe

����1
����縸 ������ �ϱ�

SELECT MOD(5,2), MOD(500,2), MOD(35,2) FROM dual

SELECT MOD(seq_vc,2) as "NO"
      ,words_vc
 FROM t_letitbe
WHERE MOD(seq_vc,2)=1

����2
�ѱ۰��縸 ����� ������.

SELECT MOD(seq_vc,2) as "NO"
      ,words_vc
 FROM t_letitbe
WHERE MOD(seq_vc,2)=0

����3
1�� ��� 2�� ���� ������ �������� ����Ͽ� ������ �ѱ۰��簡 ����� 
��µǵ��� �غ�����.

SELECT MOD(seq_vc,2) as "NO"
      ,words_vc
 FROM t_letitbe
WHERE MOD(seq_vc,2)=1
UNION ALL
SELECT MOD(seq_vc,2) as "NO"
      ,words_vc
 FROM t_letitbe
WHERE MOD(seq_vc,2)=0

����ȯ �Լ��� �ִ�.
���ڸ� ���ڷ� �ٲپ� �ִ� �Լ��� �ִ�.

edit t_letitbe

SELECT TO_NUMBER(seq_vc,99) FROM t_letitbe

SELECT ename FROM emp WHERE empno='7566'

����Ŭ�� �ڵ�����ȯ�� �Ͼ��.

��������ȯ �Լ��� �ִ�.

TO_CHAR()
TO_NUMBER()

SELECT seq_vc, words_vc FROM t_letitbe
ORDER BY TO_NUMBER(seq_vc) asc
