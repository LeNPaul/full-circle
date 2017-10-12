-- The main function is the first function called from Iguana.
-- The Data argument will contain the message to be processed.

local function loadFile(FileName)
   local F = io.open(FileName, "r")
   local Content =  F:read('*a')
   F:close()
   return Content
end

function main(Data)
   
   -- Create database
   conn = db.connect{api=db.SQLITE, 
                        name='pomodoro.sqlite', 
                        user='Paul', 
                        password='password', 
                        live = true}   
   
   -- TO DO
   -- How to serve web pages from a 'public' folder
   --    Store everything in the appropriate file format
   --    Write code that will fetch the text from these files, 
   --       and then serve them appropriately
   --    See Bed Monitor for inspiration on how to do this
   
   -- API:
   --    Return an array with the categories and their ratios
   
   -- Parse each incoming request with net.http.parseRequest
   local Request = net.http.parseRequest{data=Data}
   
   -- Find a way to serve web pages
   local FilePath = iguana.project.root()..iguana.project.guid()..'/'
   local Index = loadFile(FilePath..'web/index.html')   
   
   -- Get the number of rows
   local Total = conn:query{sql='SELECT COUNT(*) FROM pomodoros', live=true}   
   
   -- Get the parameter from request
   if Request.params.Category ~= nil then 
      -- Get the number of rows for a certain category
      local CatTotal = conn:query{sql=[[SELECT COUNT(*) FROM pomodoros WHERE Category=']]..Request.params.Category..[[']], live=true}
      -- Get the ratio
      local Ratio = tostring(CatTotal[1]["COUNT(*)"]:nodeValue() / Total[1]["COUNT(*)"]:nodeValue())
      -- Return a response
      net.http.respond{body=Ratio}
   else
      -- If no category specified, return the webpage with net.http.respond
      net.http.respond{body=Index}
   end
   
   -- Get all of the unique categories
   local CatTable = conn:query{sql='SELECT DISTINCT Category FROM pomodoros',live=true}
   
   conn:close{}
   
end