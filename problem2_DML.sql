SELECT name FROM MEMBER WHERE join_date>DATE '2000-9-1';
SELECT * FROM MEMBER WHERE join_date>=DATE '1995-10-1' AND join_date<=DATE '2019-10-1';
SELECT * FROM BOOK,PUBLISHER WHERE PUBLISHER.name='Oxford' AND publisher.pub_id=book.book_id OR (price>=15 and price <=20);
SELECT title from book,borrowing_book,member where member.name='Scot Reinger' AND borrowing_book.member_id=member.member_id AND book.book_id=borrowing_book.book_id;
SELECT name from borrowing_book,member where borrowing_book.borrow_date like '2019%' AND member.member_id=borrowing_book.member_id;
