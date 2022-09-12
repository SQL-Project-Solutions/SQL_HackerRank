DECLARE @range int = 1000, @x INT = 3, @y INT = 3

DECLARE @result varchar (MAX)
SELECT @result = '2'

WHILE (@y <= @range)
BEGIN

     WHILE (@x <= @y)
     BEGIN

          IF ((@y%@x) = 0)
          BEGIN
               IF (@x = @y)
               SET @result = @result + '&' + CAST(@y AS VARCHAR)
               BREAK
          END

          IF ((@y%@x)<>0)
          SET @x = @x+1
          END
SET @x = 2
SET @y = @y+1
END

PRINT @result;
