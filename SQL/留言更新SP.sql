-- =============================================
-- Author:		Anna Chen
-- Create date: 2018/06/01
-- Description:	更新留言資料
-- =============================================
CREATE PROCEDURE usp_Message_Update
    (
      @Id INT ,
      @UserId INT ,
      @UserName NVARCHAR(20) , 
      @Context NVARCHAR(200) , 
      @CreatDate DateTime ,
	  @Delete bit
    )
AS
    BEGIN            
        UPDATE  [Message]
        SET     UserId = @UserId ,
                UserName = @UserName ,
                Context = @Context ,
                CreatDate = getdate() ,
				[Delete] = @Delete

        WHERE   UserId = UserId; 
    END; 
GO