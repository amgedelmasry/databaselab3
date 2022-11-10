CREATE SCHEMA LBS;
USE LBS;
	CREATE TABLE CATEGORY(
    	category_id INTEGER(4) NOT NULL AUTO_INCREMENT,
        name varchar(30),
        PRIMARY KEY (category_id)
    );
    CREATE TABLE PUBLISHER(
    	pub_id varchar(6),
        name varchar(30),
        address varchar(50),
        PRIMARY KEY (pub_id)
    );
    CREATE TABLE BOOK(
    	book_id INTEGER(9) NOT NULL AUTO_INCREMENT,
        title varchar(30),
        price decimal(6,3),
        pub_id varchar(6),
        category_id INTEGER(4),
        PRIMARY KEY (book_id),
        FOREIGN KEY (category_id) REFERENCES CATEGORY(category_id),
        FOREIGN KEY (pub_id) REFERENCES PUBLISHER(pub_id)
    );
    CREATE TABLE MEMBER(
    	member_id varchar(6),
        name varchar(30),
        address varchar(50),
        join_date DATETIME,
        PRIMARY KEY (member_id)
    );
    CREATE TABLE BORROWING_BOOK(
    	member_id varchar(6),
        book_id INTEGER(9),
        borrow_date DATETIME,
        due_date DATETIME,
        return_date DATETIME,
        PRIMARY KEY (member_id, book_id, borrow_date),
        FOREIGN KEY (member_id) REFERENCES MEMBER(member_id),
        FOREIGN KEY (book_id) REFERENCES BOOK(book_id)
    );