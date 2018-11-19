--Transaction
--Transaction can be done inside the PROC and outSide of the procedure.

CREATE PROC DelAutor (@FirstName varchar(50), @LastName varchar(50))
As
	Begin
		Begin Transaction
			UPDATE PUB.AUTHOR
			SET ACTIVE = 0
			WHERE FIRSTNAME = @FirstName AND LASTNAME =@LASTNAME

			UPDATE PUB.AUTHOR
			SET PHONE = NULL
			WHERE FIRSTNAME = @FirstName AND LASTNAME = @LastName

		IF @@ERROR <>0
			ROLLBACK TRANSACTION
		ELSE COMMIT TRANSACTION
	END;
GO

EXEC DelAutor 'Miraj','Mirage'

SELECT  * FROM pub.author;
---------------

