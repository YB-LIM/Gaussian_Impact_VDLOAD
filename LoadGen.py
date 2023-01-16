"""
DESCRIPTION
This python script generates VDLOAD subroutine for 
Gaussian random impact on periodic cell

AUTHOR
Name: Yougbin LIM
E-mail: lyb0684@naver.com

Written on Intel® Fortran Version 19.0.5 and python 3.9
"""

import numpy as np

##########################
## Parameter Definition ##
##########################

# Shock pressure magnitude in MPa
p0 = 2500.0 
# Impact radius in mm
R = 0.012
# Duration of impact time in sec
tc = 10E-8
# Constant for time shifting
a = 7.0
# Periodic cell size in mm
L = 0.3
# Number of impact
N_Impact = 200
# Total time period in sec (Step time)
Step_time = 10E-7

###############################################
## Random sampling of impact center and time ##
###############################################
Random_Position = np.random.uniform(0.0,L,(N_Impact,2))
Random_Time = np.random.uniform(tc,Step_time-tc,N_Impact)
Random_Time = Random_Time/Step_time
Random_Time = np.around(Random_Time, decimals=4)*Step_time
########################################
## Write VDLOAD user subroutine file  ##
########################################
file=open('Gaussian_Random.f','w')
file.write("      subroutine vdload (\n")
file.write("C Read only (unmodifiable)variables -\n")
file.write("     1 nBlock, ndim, stepTime, totalTime,\n")
file.write("     2 amplitude, curCoords, velocity, dirCos, jltyp, sname,\n")
file.write("C Write only (modifiable) variable -\n")
file.write("     1 value )\n")
file.write("      include 'vaba_param.inc'\n")
file.write("C\n")
file.write("      dimension curCoords(nBlock,ndim), velocity(nBlock,ndim),\n")
file.write("     1  dirCos(nBlock,ndim,ndim), value(nBlock)\n")
file.write("      character*80 sname\n")
file.write("C-----------------------------------------------------------------------\n")
file.write("      DATA p0, R, tc, a /")
file.write("%.3e" % p0); file.write(","); file.write("%.3e" % R); file.write(",");
file.write("%.3e" % tc); file.write(","); file.write("%.3e" % a); file.write("/\n");
file.write("C-----------------------------------------------------------------------\n")
file.write("      do k = 1, nBlock\n")
file.write("        X = CURCOORDS(k,1)\n")
file.write("        Y = CURCOORDS(k,2)\n")
file.write("        value(k)=\n")
# Lines for Gaussian impact loads
for i in range(N_Impact):
    
    Comment_0 = 'C       Impact number '+str(i+1)+"\n"
    if i==N_Impact-1:
        f = "     +  p0*EXP(-(((X+"+str(-Random_Position[i,0])[0:6]+")**2+(Y"+str(-Random_Position[i,1])[0:6]+\
            ")**2)/(R*R)))*\n     +  EXP(-a*((2*(stepTime-"+str(Random_Time[i])+")/tc-1)**2))\n"    
    elif i<N_Impact-1:
        f = "     +  p0*EXP(-(((X+"+str(-Random_Position[i,0])[0:6]+")**2+(Y"+str(-Random_Position[i,1])[0:6]+\
            ")**2)/(R*R)))*\n     +  EXP(-a*((2*(stepTime-"+str(Random_Time[i])+")/tc-1)**2))+\n"  
                
    file.write(Comment_0); file.write(f);


file.write("C-----------------------------------------------------------------------\n")
file.write("      end do\n")
file.write("*\n")
file.write("      return\n")
file.write("      end")
file.close()

file2=open("Step_time.inp","w")
file2.write("*Parameter\n")
file2.write("Step_time="+str(Step_time))
file2.close()