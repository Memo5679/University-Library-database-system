/*Queries 1 : Given a student_id, list all the books borrowed  by that student. */

select Student_id , Book_name from Borrow , Books where Borrow.ISBN = Books.ISBN;

/*Queries 2 : Find the students whose names start with ‘J’, order by their firstName and lastName. */

select first_name , last_name from Students where first_name like 'j%' order by first_name , last_name; 

/*Queries 3 : List number of books that are already in the system grouped by colleges. */ 

select count(books.Branch_id) as 'Number of Books' , college from  Branches , books where Branches.Branch_id = books.Branch_id group by college ;

/*Queries 4 : Find all books which exists in the Computer Science School. */

select Book_name from books , Branches where books.branch_id = branches.branch_id and college = 'Faculty of science';

/*Queries 5 : List the name and specialty of all the employees who live in Madinah and worked or 
have been working for 1 year in this library. */

select eid, ename , jobTitle, city, startDate ,lastDate from employee where timestampdiff(month , startDate , lastDate) >= '12' or city= 'Madinah';

/*Queries 6 : Given a ISBN, compute the total number of borrows for that book in this library. */

select book_name , count(borrow.ISBN) as 'Number of borrows' from books , borrow where books.ISBN = borrow.ISBN group by Book_name; 

/*Queries 7 : List all books which are borrowed in January. */

SELECT book_name FROM borrow , books  where borrow.isbn = books.isbn And month(borrow.BorrowD) = 1;

/*Queries 8 : List all books which are returned to the library. */

select count(returnD) as 'Return books' , isbn from borrow group by ISBN;

/*Queries 9 : Find the top 5 borrowed books in the library. */

SELECT BOOKS.isbn , books.Book_name , count(borrow.isbn) as 'Top 5 borrowed books' from borrow , books where books.isbn = borrow.isbn
group by borrow.isbn order by count(borrow.isbn)  desc limit 5;
