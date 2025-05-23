Create table car_data(
    Branch_ID varchar(255),
    Dealer_ID varchar(255),
    Model_ID varchar(255),
    Revenue bigint,
    Units_Sold bigint,
    Date_ID varchar(255),
    Day int,
    Month int,
    Year int,
    BranchName varchar(255),
    DealerName varchar(255)
)

Create table watermark(
    last_load varchar(255)
)

Insert into watermark values(
    'DT00000'
)