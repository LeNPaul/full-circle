-- CSV Module

-- http://help.interfaceware.com/v6/csv-parser

local function parseCsvLine (line,sep) 
   local res = {}
   local pos = 1
   sep = sep or ','
   while true do 
      local c = string.sub(line,pos,pos)
      if (c == "") then break end
      local posn = pos 
      local ctest = string.sub(line,pos,pos)
      trace(ctest)
      while ctest == ' ' do
         -- handle space(s) at the start of the line (with quoted values)
         posn = posn + 1
         ctest = string.sub(line,posn,posn) 
         if ctest == '"' then
            pos = posn
            c = ctest
         end
      end
      if (c == '"') then
         -- quoted value (ignore separator within)
         local txt = ""
         repeat
            local startp,endp = string.find(line,'^%b""',pos)
            txt = txt..string.sub(line,startp+1,endp-1)
            pos = endp + 1
            c = string.sub(line,pos,pos) 
            if (c == '"') then 
               txt = txt..'"' 
               -- check first char AFTER quoted string, if it is another
               -- quoted string without separator, then append it
               -- this is the way to "escape" the quote char in a quote. example:
               --   value1,"blub""blip""boing",value3  will result in blub"blip"boing  for the middle
            elseif c == ' ' then
               -- handle space(s) before the delimiter (with quoted values)
               while c == ' ' do
                  pos = pos + 1
                  c = string.sub(line,pos,pos) 
               end
            end
         until (c ~= '"')
         table.insert(res,txt)
         trace(c,pos,i)
         if not (c == sep or c == "") then 
            error("ERROR: Invalid CSV field - near character "..pos.." in this line of the CSV file: \n"..line, 3)
         end
         pos = pos + 1
         posn = pos 
         ctest = string.sub(line,pos,pos)
         trace(ctest)
         while ctest == ' ' do
            -- handle space(s) after the delimiter (with quoted values)
            posn = posn + 1
            ctest = string.sub(line,posn,posn) 
            if ctest == '"' then
               pos = posn
               c = ctest
            end
         end
      else	
         -- no quotes used, just look for the first separator
         local startp,endp = string.find(line,sep,pos)
         if (startp) then 
            table.insert(res,string.sub(line,pos,startp-1))
            pos = endp + 1
         else
            -- no separator found -> use rest of string and terminate
            table.insert(res,string.sub(line,pos))
            break
         end 
      end
   end
   return res
end

------------------------------------
---- Module Interface functions ----
------------------------------------
local function parseCsv(Data, Separator)
   -- handle '\r\n\' as line separator
   Data = Data:gsub('\r\n','\n')
   -- handle '\r' (bad form) as line separator  
   Data = Data:gsub('\r','\n')
   local Result={}
   
   for Line in Data:gmatch("([^\n]+)") do
      local ParsedLine = parseCsvLine(Line, Separator)
      table.insert(Result, ParsedLine)
   end
   
   return Result
end

local Help = {
   Title="parseCsv",
   Usage="parseCsv(data, separator)",
   ParameterTable=false,
   Parameters={
      {data={Desc="CSV formatted string to parse <u>string</u>."}},
      {separator={Desc="Separator used in the CSV string <u>string</u>."}},
   },
   Returns={
      {Desc=[["CSV style" table <u>table</u>.]]}
   },
   Examples={[[-- parse comma separated data (default)
local Csv = parseCsv(Data)
]],
      [[-- parse tab separated data
local Csv = parseCsv(Data, '\t')
]], 
      [[-- parse bar separated data
local Csv = parseCsv(Data, '|')
]],},
   Desc=[[Convert a string in CSV format into a "CSV style" table. If the CSV string 
contains field names in the header row, these will be placed in the first row of the 
table. If there is no CSV header row then the returned table will only contain data.]],
   SeeAlso={
      {
         Title="Parse a CSV file",
         Link="http://help.interfaceware.com/v6/csv-parser"
      },
      {
         Title="Source code for the csv.lua module on github",
         Link="https://github.com/interfaceware/iguana-file/blob/master/shared/csv.lua"
      }
   },
}

help.set{input_function=parseCsv, help_data=Help}

return parseCsv