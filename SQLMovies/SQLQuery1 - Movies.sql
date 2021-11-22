--������� ���� ������ � ��������.
--CREATE DATABASE SQLMovies;
--SELECT * FROM sys.databases;

--������� ������� '������'.
--USE SQLMovies;
--CREATE TABLE movies
--(
--movie_id INT NOT NULL PRIMARY KEY IDENTITY,
--movies_name NVARCHAR (250) NOT NULL,
--movies_year INT NOT NULL CONSTRAINT movie_year_check CHECK (movies_year >= 1980 AND movies_year <= 2021),
--movies_country NVARCHAR (100) NOT NULL,
--director INT FOREIGN KEY REFERENCES dbo.director(director_id),
--movie_company INT FOREIGN KEY REFERENCES dbo.movie_company(film_company_id),
--genre INT FOREIGN KEY REFERENCES dbo.genre(genre_id),
--movie_duration INT NOT NULL,
--movie_rating INT NOT NULL CONSTRAINT rating_check CHECK (movie_rating >= 1 AND movie_rating <= 100),
--)
--SELECT * FROM INFORMATION_SCHEMA.TABLES;

--������� ������� '��������'.
--USE  SQLMovies;
--CREATE TABLE director
--(
--director_id INT NOT NULL PRIMARY KEY IDENTITY,
--dicector_name NVARCHAR (250) NOT NULL,
--director_birth_date DATE NOT NULL,
--)
--SELECT * FROM INFORMATION_SCHEMA.TABLES;

--������� ������� '����'.
--USE SQLMovies;
--CREATE TABLE genre
--(
--genre_id INT NOT NULL PRIMARY KEY IDENTITY,
--genre_name NVARCHAR (50) NOT NULL,
--)
--SELECT * FROM INFORMATION_SCHEMA.TABLES;

--������� ������� '������������'.
--USE SQLMovies;
--CREATE TABLE movie_company
--(
--film_company_id INT NOT NULL PRIMARY KEY IDENTITY,
--film_company_name NVARCHAR (200) NOT NULL,
--film_company_year INT NOT NULL CONSTRAINT year_check CHECK (film_company_year >= 1980 AND film_company_year <= 2021),
--fiml_company_location NVARCHAR (100) NOT NULL,
--)
--SELECT * FROM INFORMATION_SCHEMA.TABLES;

--������� ������� '�����.'
--USE SQLMovies;
--CREATE TABLE actors
--(
--actor_id INT NOT NULL PRIMARY KEY IDENTITY,
--actor_name NVARCHAR (200) NOT NULL,
--actor_birth_date DATE NOT NULL,
--actor_place_birth NVARCHAR (150) NOT NULL,
--)
--SELECT * FROM INFORMATION_SCHEMA.TABLES;

--������� ������� '�����-�����'
--USE SQLMovies;
--CREATE TABLE movies_actor 
--(
--movies_actor_id INT NOT NULL PRIMARY KEY IDENTITY,
--movie INT FOREIGN KEY REFERENCES dbo.movies(movie_id),
--actor INT FOREIGN KEY REFERENCES dbo.actors(actor_id),
--)
--SELECT * FROM INFORMATION_SCHEMA.TABLES;

--������� ������� '�������'.
--USE SQLMovies;
--CREATE TABLE viewer
--(
--viewer_id INT NOT NULL PRIMARY KEY IDENTITY,
--viewer_name NVARCHAR (200) NOT NULL,
--viewer_birth_date DATE NOT NULL,
--viewer_address NVARCHAR (200) NOT NULL,
--viewer_phone NVARCHAR (50) NOT NULL,
--)
--SELECT * FROM INFORMATION_SCHEMA.TABLES;

--������� ������� '������'.
--USE SQLMovies;
--CREATE TABLE application
--(
--application_id INT NOT NULL PRIMARY KEY IDENTITY,
--viewer INT FOREIGN KEY REFERENCES dbo.viewer(viewer_id),
--movie INT FOREIGN KEY REFERENCES dbo.movies(movie_id),
--date_application  DATE NOT NULL,
--)
--SELECT * FROM INFORMATION_SCHEMA.TABLES;

-- ��������� ������� ����.
--USE SQLMovies;
--INSERT genre (genre_name)
--VALUES (N'����������')
--INSERT genre (genre_name)
--VALUES (N'������')
--INSERT genre (genre_name)
--VALUES (N'�����')
--INSERT genre (genre_name)
--VALUES (N'��������')
--SELECT * FROM dbo.genre;

--��������� ������� ��������.
--USE SQLMovies
--INSERT director(dicector_name,director_birth_date)
--VALUES (N'������ ��������',N'1946-12-18')
--INSERT director(dicector_name,director_birth_date)
--VALUES (N'������� ���������',N'1963-03-27')
--INSERT director(dicector_name,director_birth_date)
--VALUES (N'���� ��������',N'1941-01-05')
--INSERT director(dicector_name,director_birth_date)
--VALUES (N'����� �����',N'1937-11-30')
--SELECT * FROM dbo.director;

--��������� ������� ������������.
--USE SQLMovies
--INSERT movie_company(film_company_name,film_company_year, fiml_company_location)
--VALUES (N'20th Century Fox',N'1980 ',N'���')
--INSERT movie_company(film_company_name,film_company_year, fiml_company_location)
--VALUES (N'Columbia Pictures',N'1980 ',N'���')
--INSERT movie_company(film_company_name,film_company_year, fiml_company_location)
--VALUES (N'Warner Brothers',N'1980',N'���')
--INSERT movie_company(film_company_name,film_company_year, fiml_company_location)
--VALUES (N'Universal Studios',N'1980',N'���')
--SELECT * FROM dbo.movie_company;

-- ��������� ������� ������.
--USE SQLMovies
--INSERT actors(actor_name,actor_birth_date,actor_place_birth)
--VALUES (N'����� ����',N'1963-12-18 ',N'���')
--INSERT actors(actor_name,actor_birth_date,actor_place_birth)
--VALUES (N'������� ������',N'1949-10-08 ',N'���')
--INSERT actors(actor_name,actor_birth_date,actor_place_birth)
--VALUES (N'��� �������',N'1939-11-10 ',N'���')
--INSERT actors(actor_name,actor_birth_date,actor_place_birth)
--VALUES (N'������� ����������',N'1947-07-30 ',N'���')
--SELECT * FROM dbo.actors;

--��������� ������� �������.
--USE SQLMovies
--INSERT viewer(viewer_name,viewer_birth_date,viewer_address,viewer_phone)
--VALUES (N'������� ����� �������������',N'1985-07-09 ',N'���������� 133-2',N'89082092695')
--INSERT viewer(viewer_name,viewer_birth_date,viewer_address,viewer_phone)
--VALUES (N'������� ����� �������������',N'1987-10-06 ',N'��������� 89',N'89135333450')
--INSERT viewer(viewer_name,viewer_birth_date,viewer_address,viewer_phone)
--VALUES (N'������ ������ ��������',N'1987-04-26 ',N'���������� ���������� 98',N'89135528244')
--INSERT viewer(viewer_name,viewer_birth_date,viewer_address,viewer_phone)
--VALUES (N'����� ����� ���������',N'1986-06-11 ',N'�������� 15-7',N'89050888088')
--SELECT * FROM dbo.viewer;

--��������� ������� �����.
--USE SQLMovies
--INSERT movies(movies_name,movies_year,movies_country,director,movie_company,genre,movie_duration,movie_rating)
--VALUES (N'�����',N'1980',N'���',N'4',N'5',N'1',N'180',N'100')
--INSERT movies(movies_name,movies_year,movies_country,director,movie_company,genre,movie_duration,movie_rating)
--VALUES (N'������ �������������',N'2012',N'���',N'2',N'6',N'2',N'220',N'95')
--INSERT movies(movies_name,movies_year,movies_country,director,movie_company,genre,movie_duration,movie_rating)
--VALUES (N'���������� ������ ������',N'2019',N'���',N'4',N'8',N'1',N'190',N'25')
--SELECT * FROM dbo.movies;

--��������� ������� ������.
--USE SQLMovies
--INSERT application(viewer, movie,date_application)
--VALUES (N'1',N'2',N'2021-10-05')
--INSERT application(viewer, movie,date_application)
--VALUES (N'3',N'6',N'2021-10-02')
--INSERT application(viewer, movie,date_application)
--VALUES (N'2',N'4',N'2021-10-06')
--SELECT * FROM dbo.application;

--��������� ������� �����-�����.
--USE SQLMovies
--INSERT movies_actor (movie,actor)
--VALUES ('1','2')
--INSERT movies_actor (movie,actor)
--VALUES ('4','2')
--INSERT movies_actor (movie,actor)
--VALUES ('6','4')
--SELECT * FROM dbo.movies_actor;



