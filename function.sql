DELIMITER $$

CREATE FUNCTION CalculateRemainingStock(ProductID INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE TotalSold INT;
    SELECT SUM(Quantity) INTO TotalSold
    FROM TransactionDetails
    WHERE ProductID = ProductID;

    RETURN (SELECT Stock - IFNULL(TotalSold, 0) FROM Products WHERE ProductID = ProductID);
END $$

DELIMITER ;
