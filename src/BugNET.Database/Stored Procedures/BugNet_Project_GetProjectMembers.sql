﻿CREATE PROCEDURE [dbo].[BugNet_Project_GetProjectMembers]
	@ProjectId Int
AS
SELECT UserName
FROM 
	Users
LEFT OUTER JOIN
	BugNet_UserProjects
ON
	Users.UserId = BugNet_UserProjects.UserId
WHERE
	BugNet_UserProjects.ProjectId = @ProjectId
ORDER BY UserName ASC
