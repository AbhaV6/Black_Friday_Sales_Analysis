CREATE TABLE black_friday_data (
    User_ID INT NOT NULL,
    Product_ID VARCHAR(20) NOT NULL,
    Gender VARCHAR(10) NOT NULL,
    Age VARCHAR(20) NOT NULL,
    Occupation INT NOT NULL,
    City_Category VARCHAR(5) NOT NULL,
    Stay_In_Current_City_Years VARCHAR(10) NOT NULL,
    Marital_Status INT NOT NULL,
    Product_Category_1 INT NOT NULL,
    Product_Category_2 VARCHAR(20),
    Product_Category_3 VARCHAR(20),
    Purchase INT NOT NULL,

    PRIMARY KEY (User_ID, Product_ID),

    CHECK (Purchase > 0)
);