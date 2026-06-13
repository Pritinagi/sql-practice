--stored procedure error handling 
--TRY CATCH
--define stored procedure 

ALTER PROCEDURE getcustomersummarynew @country NVARCHAR(50)= 'USA'
AS 
BEGIN
	BEGIN TRY 
		DECLARE @total_customers INT , @Avgscore float;
--==========================================================================
		--STEP 1
		--prepare & cleanup data 
		--this tell if we have any nulls 
--==========================================================================

		IF EXISTS (select 1 from sales.customers where score is null  and country=@country)
		BEGIN 
			Print('updating null scores to 0 ')
			UPDATE sales.customers
			SET score= 0
			where score IS NULL AND COUNTRY = @country;
		END

		ELSE 
		BEGIN 
			Print('no null founds')
		END;
--==========================================================================
		--STEP 2
		--generating reports 
--==========================================================================
		--calculate total customers and average score
		SELECT 
		@total_customers = count(*),
		@Avgscore = avg(Score)
		from Sales.Customers
		where country = @country;

		PRINT 'totsl customers from ' + @country + 'is' + CAST(@total_customers as Nvarchar);
		PRINT 'Average score from ' + @country + ':' +CAST(@Avgscore as Nvarchar);

--==========================================================================
		--CALCULTE the total no. of orders and total sales 
		--2nd query in sp 
--==========================================================================

		
		
		SELECT 
		count(orderid) totalorders,
		sum(sales) totalsales,
		1/0
		from sales.orders o 
		join sales.Customers c
		on c.CustomerID=o.CustomerID
		where c.Country=@country;
	END TRY

	BEGIN CATCH 
	--==============================================================
			--error handling
	--==============================================================

		PRINT('an error accor ');
		PRINT('EROR MESSAE : ' + error_message());
		PRINT(' error number ' + CAST(error_number() AS NVARCHAR));
		PRINT('EROR LINE ' + CAST(ERROR_NUMBER() AS Nvarchar));
		PRINT('EROR procedure ' + ERROR_PROCEDURE());

	END CATCH 
END

--execute the stored procedure
GO

EXEC getcustomersummarynew 

EXEC getcustomersummarynew @country = 'GERMANY';
--drop procedure getcustomersummarynew


select * from sales.Customers