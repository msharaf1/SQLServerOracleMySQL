Alter PROC ProcCurser1 (@authors Cursor Varying Output)
AS
	Begin
		Set @authors = Cursor For

		Select Firstname
		From hr.EMPLOYEE
		Order By FirstName

		Open @authors
	End
Go

DECLARE @mycursor Cursor
DECLARE @FirstName varchar(50)

---Cursor take lot of memory. That is why developers don't like it.
--Remember: Delte whenever you create cursors after used.


EXEC dbo.ProcCurser1 @authors = @mycursor Output

Fetch Next From @myCursor Into @FirstName
Select @FirstName

Close @myCursor
DeAllocate @myCursor