20190515

SELECT rownum rno FROM emp

SELECT rownum, ename FROM emp
where deptno = 20
AND rno > 3

�ζ��� �並 ����ϸ� ���̺� ���� �÷��� �������� ����� �� �ִ�.



SELECT 
        rno, ename
        FROM(select rownum rno, ename FROM emp where deptno = 20)   
    WHERE rno =  3
-- �˸��Ƹ��� �÷������� ������ �ζ��κ並 ��G�Ѵ� --


rownum
SQL�� ��� ���տ� ���� ������ ������ �ִ� ����


SELECT * FROM member;   

����1
���̵� �ߺ��˻縦 ����ڰ� ���ϰ� �ִ�.
�ߺ��˻� �ϴ� select���� �ۼ��غ��ÿ�

SELECT mem_name FROM member
WHERE mem_id =: user_id

--���̵� �������� ������ ��ȸ����� ����.
--�ο찡 ����.

    
SELECT count(mem_name) FROM member
WHERE mem_id =: user_id;

--�׷��Լ� ����ϴ� ��쿡�� ��ȸ����� ���� �ϴ��� ���ϰ��� �ִ�.
--��ü���� ó�� �ϹǷ� �ӵ��� ������. (�߰��� �ߺ����� ã�Ƶ� �� ������ ã�ƾ� �ϹǷ� ��ü������ ó����)

���̵� �����ϴ�?

SELECT 1 FROM dual
WHERE EXISTS (SELECT mem_name FROM member
                WHERE mem_id =:user_id
                AND rownum = 1
                )
-- rownum�� ���� �ű拚�� ��žŰ�� ����Ѵ�


rowid 

SELECT rowid rid FROM emp

6�ڸ�: �����Ϳ� ���� ������Ʈ ��ȣ
3�ڸ�: ����� ���Ϲ�ȣ
6�ڸ�: ��Ϲ�ȣ
3�ڸ�:��ϳ��� ���ȣ

SELECT ename, hiredate FROM emp
WHERE rowid = 'AAARE8AAEAAAACTAAA'

�� ROWID�� index�͵� ������ �ִµ� index���̺��� index key�� rowid�� �̷���� �ֱ� �����̴�.
�̷��� ��������� ������ �ִ� rowid�� ��ġ �������� ������� ������ �� ������ �����δ� �������� ������
index���̺� ���� �ִ� rowid�� �ش絥���͸� ã�� ���� �ϳ��� ������ ������ ���̴�.


����1
temp�� tcom�� �ڷ� �� emp_id, salary, comm�� 
�����ִ� sql ���� �ۼ��Ͻÿ�.
�̶� salary�� comm�� ��� �����ϴ� ����� �� �ٷ� ���;� ��.

SELECT *  FROM temp, tcom
ORDER BY EMP_NAME

SELECT * FROM temp

SELECT * FROM tcom

SELECT a.emp_id, salary, comm FROM temp a, tcom b
WHERE salary is not null
UNION           
SELECT a.emp_id, salary, comm FROM temp a, tcom b
WHERE comm is not null
ORDER by emp_ID, comm asc   


�÷��� ������ ��ġ�ؾ���.
Ÿ�Ե� ���� �¾ƾ� ��

SELECT '�ȳ�' FROM dual
UNION ALL
SELECT 1 FROM dual

SELECT emp_id, salary, 0 comm FROM temp
UNION ALL
SELECT emp_id, 0 salary, comm FROM tcom

����2 
�츮ȸ�翡 �ٹ��ϴ� ����߿��� �μ�Ƽ�긦 ���� �ʴ� ����� ���̵�� ������ ����ϴ� 
sql���� �ۼ��Ͻÿ�.

SELECT emp_id, emp_name from temp 
MINUS
SELECT a.emp_id, emp_name  from tcom a, temp b
WHERE comm is not null

SELECT emp_id from temp
MINUS

SELECT emp_id from tcom


SELECT  workcd_vc, time_nu
 FROM t_worktime
 WHERE rownum <4
-- �ζ��κ�� �������


SELECT s1.workcd_vc ,count(s2.time_nu)
            FROM(SELECT  workcd_vc, time_nu
                    FROM t_worktime
                        WHERE rownum <4 ) s1,
                (SELECT  workcd_vc, time_nu
                     FROM t_worktime
                          WHERE rownum  <4) s2
                     WHERE s1.time_nu >= s2.time_nu
                        GROUP by s1.workcd_vc
                              ORDER BY count(s2.time_nu)
                              
��ũ �Լ�
    
    SELECT  
            workcd_vc
            ,rank() over(order by time_nu asc) rnk
                FROM t_worktime                              