function screwHole() 
return
union {
    translate(51,0,0)*ccone(5/2,12/2,4),
    translate(51,0,0)*ccylinder(5/2,8),
}
end

function alexa()
  return
    ccylinder(100/2,45)
end

function groove(r1,r2,r3,h) 
return
  difference {
    ccone(r1,r2,h),
    ccone(r3,r2,h),
  }
end


function mounting() 

return 
  difference {
    translate(0,0,-0.5)*ccylinder(114/2,4),
    difference {
      translate(0,0,0)*groove(110/2,103/2,96/2,5),
      ccube(120,25,20),
      ccube(25,120,20)
    },
      ccylinder(90/2,80),
 
    insertionHole(),
    insertionHole2(),
    screwHole(),
    rotate(0,0,90)*screwHole(),
    rotate(0,0,180)*screwHole(),
    rotate(0,0,270)*screwHole(),
  }
end


function insertionHole ()
  return
  rotate(0,0,26)*difference {
  intersection {
    ccylinder(110/2,20),
    union {
      ccube(120,25,20),
      ccube(25,120,20)
    }
  },
  ccylinder(96/2,20),
  }
end

function insertionHole2 ()
  return
  rotate(0,0,52)*difference {
  intersection {
    ccylinder(105.5/2,20),
    union {
      ccube(120,40,20),
      ccube(40,120,20)
    }
  },
  ccylinder(99.5/2,20),
  }
end

function top()
  return
difference {
  union {
    translate(0,0,-27+8)*groove(108/2,102/2,98/2,2.5),
    difference {
    translate(0,0,-2+4)*ccylinder(104.5/2,52-8),
    translate(0,0,-6.5)*ccylinder(100.5/2,48-16),
    },

    
  },

  translate(0,0,-1.5+2)*ccylinder(100.5/2,48-20),
  
  translate(0,0,-9.5)*ccube(60,120,60),
  translate(0,0,-9.5)*ccube(120,60,60),
  ccylinder(80/2,60),
translate(0,0,17)*ccone(100.5/2,95/2,7)
  }
end


emit (
  union {
  --translate(0,0,-18.5)*rotate(180,0,8)*top(),
  rotate(0,180,0)*mounting()
}
)
