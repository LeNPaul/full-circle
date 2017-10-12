-- This example shows the calls to iterate through a directory.
-- The timestamp information is in unix epoch time - number of seconds since 1971
-- The os.ts.date function is helpful for converting this to human readable formats.

-- http://help.interfaceware.com/v6/read-a-directory

-- for more information on os.fs.glob, see:
-- http://help.interfaceware.com/api/#os_fs_glob

function main()
   -- Get the working directory
   local Dir = iguana.workingDir()
   

   -- Iterate through the default directory
   -- to make a list of the files/dirs we find
   local List = {}
   for Name, FileInfo in os.fs.glob(Dir..'*') do
      trace(Name)

      -- Add a list entry for each file
      List[Name] = FileInfo      
      
      trace(FileInfo)

      -- Trace a few interesting stats FileInfo has on each file
      trace("Size  = "..FileInfo.size)

      -- Formating the time for readability
      os.ts.date("%c", FileInfo.ctime)

      -- Adding a ! gives us UTC time
      os.ts.date("!%c", FileInfo.ctime)
      if (FileInfo.isdir) then
         trace("It is a dir")
      end
   end

   local Dir = iguana.workingDir()
   
   trace(os.fs.glob(Dir..'*'))
   
   local Name, FileInfo = os.fs.glob(Dir..'*')
   
   trace(Name)
   
   --local dateCreated = os.fs.stat(Dir.. '*.vmd').ctime
   trace(dateCreated)
   
   for FileName, FileInfo in os.fs.glob(Dir..'*.vmd') do
      trace(FileInfo.ctime)
   end
   
   -- View the list we created
   
   os.execute('ls -lt')
   
   --  Sort files in directory based on date last modified (most recent at the top)
   --  You can set the wildcard argument, '12345*.pdf', to anything you like
   local D = io.popen('ls *.sqlite -t')
   -- Read the file at the top of the list
   local R = D:read()
   -- Print the name of the most recently changed file
   trace(R)
   
   trace(List)
end