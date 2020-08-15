--estm8lib libary for estm8ter by Earl 
estm8lib = {}
--cnvrt takes ft and inches and turns it into inches 
function estm8lib.cnvrt(feet,inches)
  local ft = feet
  local inch = inches
  local tin = ft*12+inch
return tin
end
--studCnt counts the number of studs needed in a wall double is a booleen all other mesurements are in;inches open is the number of openings
function estm8lib.studCnt(length,onC,doubled open)
    local lngth = length
    local doubled = doubled
    local opening = open
    local onC = onC
    local base = 0
    local ttlcnt = 0
    if doubled==true then 
      base = math.ceil(lngth/onC)+3
    else
      base = math.ceil(lngth/onC)+1
    end
    if opening > 0 then
      ttlcnt = base+2*opening
    else 
      ttlcnt = base
    end
return ttlcnt
end
--hdr finds the numbet of 2x6 or if very long gap 2x8 needs numopen and for each opening a table 
--table will be start of opening left ub