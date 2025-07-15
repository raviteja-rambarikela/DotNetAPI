CREATE PROCEDURE spRegisterUser
    @Username NVARCHAR(100),
    @Password NVARCHAR(255),
    @Firstname NVARCHAR(100),
    @Lastname NVARCHAR(100),
    @Gender NVARCHAR(50),
    @Phonenumber NVARCHAR(15),
    @IsActive BIT,
    @Email VARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if username already exists
    IF EXISTS (SELECT 1 FROM Users WHERE Username = @Username)
    BEGIN
        -- Return -1 to indicate duplicate username
        RETURN -1;
    END

    -- Insert new user
    INSERT INTO Users (Username, Password, Firstname, Lastname, Gender, Phonenumber, IsActive, Email)
    VALUES (@Username, @Password, @Firstname, @Lastname, @Gender, @Phonenumber, @IsActive, @Email);

    -- Return the newly inserted UserId
    SELECT CAST(SCOPE_IDENTITY() AS INT);
END
