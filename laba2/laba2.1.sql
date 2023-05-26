--CREATE DATABASE MyBDLabaSec;

USE MyBDLabaSec;

--CREATE TABLE ������ (
--  ���_������� INT NOT NULL PRIMARY KEY,
--  ������� VARCHAR(50),
--  ��� VARCHAR(50),
--  �������� VARCHAR(50),
--  ������� VARCHAR(20),
--  Email VARCHAR(50),
--  ����_�������� DATE
--);

--CREATE TABLE ����� (
--  ���_������ INT NOT NULL PRIMARY KEY,
--  ���_������� INT,
--  ����_������ DATE,
--  FOREIGN KEY (���_�������) REFERENCES ������(���_�������)
--);

--CREATE TABLE ����� (
--  ���_������ INT NOT NULL PRIMARY KEY,
--  �������� VARCHAR(100),
--  ������������� VARCHAR(100),
--  ���� DECIMAL(10,2),
--  �������� TEXT,
--  �������_��������� VARCHAR(50),
--  �����������_���������� INT,
--  ���_������ VARCHAR(50)
--);

--CREATE TABLE ������_������ (
--  ���_������ INT,
--  ���_������ INT,
--  ���������� INT,
--  PRIMARY KEY (���_������, ���_������),
--  FOREIGN KEY (���_������) REFERENCES �����(���_������),
--  FOREIGN KEY (���_������) REFERENCES �����(���_������)
--);

--USE MyBDLabaSec
--INSERT INTO ������ (���_�������, �������, ���, ��������, �������, Email, ����_��������)
--VALUES
--  (1, '������', '����', '��������', '+79123456789', 'ivanov@mail.ru', '1990-01-01'),
--  (2, '������', '����', '��������', '+79123456788', 'petrov@mail.ru', '1995-02-02'),
--  (3, '�������', '�����', '���������', '+79123456787', 'sidorov@mail.ru', '1985-03-03'),
--  (4, '�������', '������', '��������', '+79123456785', 'smirnov@mail.ru', '1982-05-05'),
--  (5, '������', '���������', '���������', '+79123456784', 'kozlov@mail.ru', '1991-06-06'),
--  (6, '�������', '�����', '����������', '+79123456780', 'novikov@mail.ru', '1998-10-10'),
--  (7, '��������', '���������', '��������', '+79123456779', 'fedorova@mail.ru', '1988-11-11');


--INSERT INTO ����� (���_������, ���_�������, ����_������)
--VALUES 
--(1, 1, '2022-03-15'),
--(2, 2, '2022-03-16'),
--(3, 3, '2022-03-17'),
--(4, 4, '2022-03-18'),
--(5, 5, '2022-03-19'),
--(6, 6, '2022-03-20'),
--(7, 7, '2022-03-21');

--INSERT INTO ����� (���_������, ��������, �������������, ����, ��������, �������_���������, �����������_����������, ���_������)
--VALUES 
--(1, '������� Samsung', 'Samsung', 10000.00, '27" LED ������� � ����������� 1920x1080', '��.', 50, '�����������'),
--(2, '������� Dell', 'Dell', 50000.00, '15" ������� � Intel Core i7 ����������� � 16 �� ����������� ������', '��.', 10, '�����������'),
--(3, '���������� Logitech', 'Logitech', 2000.00, '���������� � ���������� � USB-������������', '��.', 30, '�����������'),
--(4, '���� Microsoft', 'Microsoft', 1000.00, '���������� ���� � 3 �������� � ���������', '��.', 40, '�����������'),
--(5, '�������� Adidas', 'Adidas', 1500.00, '������� �������� �� ������ � ��������� Adidas', '��.', 20, '������'),
--(6, '������� Lenovo ThinkPad X1 Carbon', 'Lenovo', 89990.00, '������ � ���������� ������� ��� �������', '��.', 10, '��������'),
--(7, '���������� ��������� HP Pavilion', 'HP', 59990.00, '������� ���������� ��������� ��� ���� � �����', '��.', 5, '���������� ����������');

--INSERT INTO ������_������(���_������, ���_������, ����������)
--VALUES 
--(1, 1, 2),
--(2, 2, 3),
--(3, 3, 1),
--(4, 4, 1),
--(5, 5, 2),
--(6, 6, 1),
--(7, 7, 1),
--(8, 8, 2);

SELECT        ������_������.����������, �����.���_������
FROM            ������_������ INNER JOIN
                         ����� ON ������_������.���_������ = �����.���_������


SELECT �.���_������, �.���, �.�������, �.�������
FROM ����� AS �
INNER JOIN ������ AS �
ON �.���_������� = �.���_�������
WHERE �.���_������>8
select * from �����;
select * from ������;

SELECT ������_������.���_������, �����.��������, �����.����, ������_������.����������, �����.����*������_������.���������� AS [����� ���������]
FROM ������_������, �����
WHERE �����.���_������=������_������.���_������
Group by ������_������.���_������, �����.��������, �����.����, ������_������.����������

Select �����.���_������, ������.���, ������.�������, ������.�������
From �����
RIGHT JOIN ������
ON �����.���_������� = ������.���_�������
WHERE �����.���_������>8

Select �����.���_������, ������.���, ������.�������, ������.�������
From �����
LEFT JOIN ������
ON �����.���_������� = ������.���_�������
WHERE �����.���_������>8

SELECT DISTINCT ���_������, SUM(����������) AS [����� ���������� �� �����]
FROM ������_������
GROUP BY ���_������
HAVING SUM(����������) > 1;

INSERT INTO ������ (���_�������, �������, ���, ��������, �������, Email, ����_��������)
VALUES
  (15, '���', '��������', '����������', '+375259864505', 'el@mail.ru', '2003-10-08');

  DELETE FROM ������
  WHERE ������� = '���';

  UPDATE ������
  SET ������� = '���'
  WHERE ������� = '������';

  SELECT ������.�������, ������.���, ������.�������� 
  FROM ������
  WHERE Year(getdate()) -Year(������.����_��������)>18;

  SELECT ������� + ' ' + ��� + ' ' + �������� AS [��� � ������]
  FROM ������
  UNION
  SELECT ��������
  FROM �����

  DELETE FROM [������_������] WHERE ���������� > 5

  --CREATE INDEX ������_���_�������_������
  --ON ������(���, �������)
  --GO
--CREATE VIEW �����_�_����������(���_������, �����, ����������) AS 
  SELECT �����.���_������, �����.��������, �����.�����������_����������
  From ����� INNER JOIN ������_������ ON ������_������.���_������=�����.���_������