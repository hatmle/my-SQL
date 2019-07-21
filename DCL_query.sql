-- DCL – Data Control Language – Grant, Revoke, Deny
-- 1. Grant – Give permissions to someone to perform an action on an object
Grant Select
On dbo.TableA
To Jane

-- 2. Revoke – Take back a given permission from a user
Revoke Select
On dbo.TableA
From Jane

-- 3. Deny – Prevent someone from doing an operation on an object
Deny Select
On dbo.TableA
To Jane
