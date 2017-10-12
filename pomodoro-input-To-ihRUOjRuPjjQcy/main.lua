-- The main function is the first function called from Iguana.
-- The Data argument will contain the message to be processed.

local parseCsv = require 'csv'

function main(Data)
   
   -- Create a database
   -- To do: 
   --   Create the database 
   --      Look at HL7 to Database channel for inspiration on 
   --      how to create the database if it doesn't exist, 
   ---     and do this only once
   conn = db.connect{api=db.SQLITE, 
                        name='pomodoro.sqlite', 
                        user='Paul', 
                        password='password', 
                        live = true}
   
   local createTable = [[
   CREATE TABLE IF NOT EXISTS pomodoros (
      Category CHAR, 
      StartTime INT, 
      EndTime INT,
      Duration INT,
      PRIMARY KEY (StartTime, EndTime)
   );
   ]]
   -- Create a table if it does not exist
   conn:execute{sql=createTable,live=true}
   
   -- Parse the CSV data
   local Csv = parseCsv(Data)
   -- Parse through CSV file
   -- Find duration of pomodoro, as well as the start and end time
   -- Pass this information to a SQL database
   for i = 2, #Csv do 
      -- Category
      local category = "'"..Csv[i][4]:gsub('#','').."'"
      -- Start time
      local startTime = os.ts.time{year=Csv[i][2]:sub(1,4),
                                   month=Csv[i][2]:sub(6,7),
                                   day=Csv[i][2]:sub(9,10),
                                   hour=Csv[i][2]:sub(12,13),
                                   min=Csv[i][2]:sub(15,16),
                                   sec=Csv[i][2]:sub(18,19)}
      -- End time
      local endTime = os.ts.time{year=Csv[i][3]:sub(1,4),
                                   month=Csv[i][3]:sub(6,7),
                                   day=Csv[i][3]:sub(9,10),
                                   hour=Csv[i][3]:sub(12,13),
                                   min=Csv[i][3]:sub(15,16),
                                   sec=Csv[i][3]:sub(18,19)}      
      -- Calculate duration
      local diffTime = os.ts.difftime(endTime,startTime)
      
      -- INSERT data into the database
      -- What is the best data type to use? What about CHAR? Difference performance?
      local addData = [[INSERT OR IGNORE INTO pomodoros (Category, StartTime, EndTime, Duration) 
                     VALUES (]]..category..','..startTime..','..endTime..','..diffTime..[[);]]
      
      -- Add data to table
      conn:execute{sql=addData,live=true}
      
   end
   
   -- View table
   local viewTable = 'SELECT * FROM pomodoros'
   conn:query{sql=viewTable,live=true}
   
   conn:close{}
   
end