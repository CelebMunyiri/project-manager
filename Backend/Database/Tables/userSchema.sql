BEGIN 
TRY 
CREATE TABLE userTable(
    userId VARCHAR(100) PRIMARY KEY,
    userName VARCHAR(100) UNIQUE NOT NULL,
    userEmail VARCHAR(100) UNIQUE NOT NULL,
    userPhone VARCHAR (15) UNIQUE NOT NULL,
    userPassword VARCHAR(MAX) NOT NULL,
    profilePic VARCHAR (MAX)
    --CONSTRAINT FK_usersProject FOREIGN KEY (projectId) REFERENCES projectTable
)
END TRY
BEGIN 
CATCH 
THROW 50001,'Table has already been created',1
END 
CATCH 

SELECT * FROM userTable
