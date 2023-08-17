-- Penlight 1.11.0-1 | /lua/pl/stringio.lua | https://github.com/lunarmodules/Penlight | License: MIT | Minified using https://www.npmjs.com/package/luamin/v/1.0.4
-- Copyright (C) 2009-2016 Steve Donovan, David Manura.
-- Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
-- The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
local a=rawget(_G,'unpack')or rawget(table,'unpack')local tonumber=tonumber;local b,c=table.concat,table.insert;local d={}local e={}e.__index=e;local function f(self,...)local g={...}for h=1,#g do c(self.tbl,g[h])end end;function e:write(i,j,...)if j then f(self,i,j,...)else c(self.tbl,i)end end;function e:writef(k,...)self:write(k:format(...))end;function e:value()return b(self.tbl)end;function e:__tostring()return self:value()end;function e:close()end;function e:seek()end;local l={}l.__index=l;function l:_read(k)local h,m=self.i,self.str;local n=#m;if h>n then return nil end;local o;if k=='*l'or k=='*L'then local p=m:find('\n',h)or n+1;o=m:sub(h,k=='*l'and p-1 or p)self.i=p+1 elseif k=='*a'then o=m:sub(h)self.i=n elseif k=='*n'then local q,r,p;q,p=m:find('%s*%d+',h)q,r=m:find('^%.%d+',p+1)if r then p=r end;q,r=m:find('^[eE][%+%-]*%d+',p+1)if r then p=r end;local s=m:sub(h,p)o=tonumber(s)self.i=p+1 elseif type(k)=='number'then o=m:sub(h,h+k-1)self.i=h+k else error("bad read format",2)end;return o end;function l:read(...)if select('#',...)==0 then return self:_read('*l')else local o,t={},{...}for h=1,#t do o[h]=self:_read(t[h])end;return a(o)end end;function l:seek(u,v)local w;u=u or'cur'v=v or 0;if u=='set'then w=1 elseif u=='cur'then w=self.i elseif u=='end'then w=#self.str end;self.i=w+v;return self.i end;function l:lines(...)local x,g=select('#',...)if x>0 then g={...}end;return function()if x==0 then return self:_read'*l'else return self:read(a(g))end end end;function l:close()end;function d.create()return setmetatable({tbl={}},e)end;function d.open(y)return setmetatable({str=y,i=1},l)end;function d.lines(y,...)return d.open(y):lines(...)end;return d
