#!/usr/bin/env python
import cdms2
import os
import sys
import vcs

pth = os.path.join(os.path.dirname(__file__), "..")
sys.path.append(pth)
import checkimage

f = cdms2.open(sys.argv[2])
a=f("Z3")

x=vcs.init()
x.setantialiasing(0)
x.drawlogooff()
x.setbgoutputdimensions(1200, 900, units="pixels")
p=x.getprojection("lambert")
b=x.createboxfill()
b.projection=p
x.setbgoutputdimensions(1200,1091,units="pixels")
x.plot(a(latitude=(20,60),longitude=(-160,-120)),b, bg=1)
fnm = "vcs_test_boxfill_taylor_crash.png"
x.png(fnm)
ret = checkimage.check_result_image(fnm, sys.argv[1], checkimage.defaultThreshold)
sys.exit(ret)
