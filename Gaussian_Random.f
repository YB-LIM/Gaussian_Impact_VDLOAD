      subroutine vdload (
C Read only (unmodifiable)variables -
     1 nBlock, ndim, stepTime, totalTime,
     2 amplitude, curCoords, velocity, dirCos, jltyp, sname,
C Write only (modifiable) variable -
     1 value )
      include 'vaba_param.inc'
C
      dimension curCoords(nBlock,ndim), velocity(nBlock,ndim),
     1  dirCos(nBlock,ndim,ndim), value(nBlock)
      character*80 sname
C-----------------------------------------------------------------------
      DATA p0, R, tc, a /2.500e+03,1.200e-02,1.000e-07,7.000e+00/
C-----------------------------------------------------------------------
      do k = 1, nBlock
        X = CURCOORDS(k,1)
        Y = CURCOORDS(k,2)
        value(k)=
C       Impact number 1
     +  p0*EXP(-(((X+-0.081)**2+(Y-0.130)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-5.543999999999999e-07)/tc-1)**2))+
C       Impact number 2
     +  p0*EXP(-(((X+-0.223)**2+(Y-0.121)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-1.817e-07)/tc-1)**2))+
C       Impact number 3
     +  p0*EXP(-(((X+-0.149)**2+(Y-0.199)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-8.768e-07)/tc-1)**2))+
C       Impact number 4
     +  p0*EXP(-(((X+-0.250)**2+(Y-0.218)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-4.5939999999999994e-07)/tc-1)**2))+
C       Impact number 5
     +  p0*EXP(-(((X+-0.193)**2+(Y-0.078)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-7.024999999999999e-07)/tc-1)**2))+
C       Impact number 6
     +  p0*EXP(-(((X+-0.103)**2+(Y-0.244)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-7.986e-07)/tc-1)**2))+
C       Impact number 7
     +  p0*EXP(-(((X+-0.256)**2+(Y-0.288)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-2.616e-07)/tc-1)**2))+
C       Impact number 8
     +  p0*EXP(-(((X+-0.165)**2+(Y-0.039)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-7.83e-07)/tc-1)**2))+
C       Impact number 9
     +  p0*EXP(-(((X+-0.200)**2+(Y-0.092)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-3.999e-07)/tc-1)**2))+
C       Impact number 10
     +  p0*EXP(-(((X+-0.073)**2+(Y-0.145)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-5.608e-07)/tc-1)**2))+
C       Impact number 11
     +  p0*EXP(-(((X+-0.196)**2+(Y-0.082)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-8.576e-07)/tc-1)**2))+
C       Impact number 12
     +  p0*EXP(-(((X+-0.064)**2+(Y-0.042)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-8.740999999999999e-07)/tc-1)**2))+
C       Impact number 13
     +  p0*EXP(-(((X+-0.060)**2+(Y-0.037)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-1.673e-07)/tc-1)**2))+
C       Impact number 14
     +  p0*EXP(-(((X+-0.126)**2+(Y-0.054)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-6.671e-07)/tc-1)**2))+
C       Impact number 15
     +  p0*EXP(-(((X+-0.167)**2+(Y-0.111)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-8.095999999999999e-07)/tc-1)**2))+
C       Impact number 16
     +  p0*EXP(-(((X+-0.093)**2+(Y-0.244)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-4.5549999999999997e-07)/tc-1)**2))+
C       Impact number 17
     +  p0*EXP(-(((X+-0.014)**2+(Y-0.051)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-7.135999999999999e-07)/tc-1)**2))+
C       Impact number 18
     +  p0*EXP(-(((X+-0.134)**2+(Y-0.243)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-5.69e-07)/tc-1)**2))+
C       Impact number 19
     +  p0*EXP(-(((X+-0.139)**2+(Y-0.249)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-5.950999999999999e-07)/tc-1)**2))+
C       Impact number 20
     +  p0*EXP(-(((X+-0.144)**2+(Y-0.006)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-6.817e-07)/tc-1)**2))+
C       Impact number 21
     +  p0*EXP(-(((X+-0.036)**2+(Y-0.115)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-5.645e-07)/tc-1)**2))+
C       Impact number 22
     +  p0*EXP(-(((X+-0.272)**2+(Y-0.008)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-3.24e-07)/tc-1)**2))+
C       Impact number 23
     +  p0*EXP(-(((X+-0.214)**2+(Y-0.005)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-7.970000000000001e-07)/tc-1)**2))+
C       Impact number 24
     +  p0*EXP(-(((X+-0.291)**2+(Y-0.189)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-3.3090000000000003e-07)/tc-1)**2))+
C       Impact number 25
     +  p0*EXP(-(((X+-0.253)**2+(Y-0.294)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-1.902e-07)/tc-1)**2))+
C       Impact number 26
     +  p0*EXP(-(((X+-0.291)**2+(Y-0.132)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-5.778e-07)/tc-1)**2))+
C       Impact number 27
     +  p0*EXP(-(((X+-0.084)**2+(Y-0.012)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-4.829e-07)/tc-1)**2))+
C       Impact number 28
     +  p0*EXP(-(((X+-0.005)**2+(Y-0.014)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-5.613e-07)/tc-1)**2))+
C       Impact number 29
     +  p0*EXP(-(((X+-0.053)**2+(Y-0.116)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-7.834e-07)/tc-1)**2))+
C       Impact number 30
     +  p0*EXP(-(((X+-0.141)**2+(Y-0.109)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-2.7e-07)/tc-1)**2))+
C       Impact number 31
     +  p0*EXP(-(((X+-0.146)**2+(Y-0.099)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-2.021e-07)/tc-1)**2))+
C       Impact number 32
     +  p0*EXP(-(((X+-0.066)**2+(Y-0.162)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-6.288e-07)/tc-1)**2))+
C       Impact number 33
     +  p0*EXP(-(((X+-0.070)**2+(Y-0.103)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-3.006e-07)/tc-1)**2))+
C       Impact number 34
     +  p0*EXP(-(((X+-0.255)**2+(Y-0.086)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-2.109e-07)/tc-1)**2))+
C       Impact number 35
     +  p0*EXP(-(((X+-0.299)**2+(Y-0.230)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-8.128e-07)/tc-1)**2))+
C       Impact number 36
     +  p0*EXP(-(((X+-0.258)**2+(Y-0.209)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-1.731e-07)/tc-1)**2))+
C       Impact number 37
     +  p0*EXP(-(((X+-0.152)**2+(Y-0.278)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-6.201e-07)/tc-1)**2))+
C       Impact number 38
     +  p0*EXP(-(((X+-0.233)**2+(Y-0.213)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-8.036999999999999e-07)/tc-1)**2))+
C       Impact number 39
     +  p0*EXP(-(((X+-0.195)**2+(Y-0.154)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-8.697e-07)/tc-1)**2))+
C       Impact number 40
     +  p0*EXP(-(((X+-0.241)**2+(Y-0.289)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-2.1510000000000001e-07)/tc-1)**2))+
C       Impact number 41
     +  p0*EXP(-(((X+-0.263)**2+(Y-0.282)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-4.384e-07)/tc-1)**2))+
C       Impact number 42
     +  p0*EXP(-(((X+-0.207)**2+(Y-0.081)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-3.0749999999999997e-07)/tc-1)**2))+
C       Impact number 43
     +  p0*EXP(-(((X+-0.127)**2+(Y-0.038)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-1.451e-07)/tc-1)**2))+
C       Impact number 44
     +  p0*EXP(-(((X+-0.203)**2+(Y-0.285)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-5.820999999999999e-07)/tc-1)**2))+
C       Impact number 45
     +  p0*EXP(-(((X+-0.134)**2+(Y-0.222)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-2.5959999999999997e-07)/tc-1)**2))+
C       Impact number 46
     +  p0*EXP(-(((X+-0.188)**2+(Y-0.155)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-5.338e-07)/tc-1)**2))+
C       Impact number 47
     +  p0*EXP(-(((X+-0.162)**2+(Y-0.138)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-3.362e-07)/tc-1)**2))+
C       Impact number 48
     +  p0*EXP(-(((X+-0.287)**2+(Y-0.109)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-3.675e-07)/tc-1)**2))+
C       Impact number 49
     +  p0*EXP(-(((X+-0.158)**2+(Y-0.054)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-4.156e-07)/tc-1)**2))+
C       Impact number 50
     +  p0*EXP(-(((X+-0.151)**2+(Y-0.112)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-2.0749999999999997e-07)/tc-1)**2))+
C       Impact number 51
     +  p0*EXP(-(((X+-0.289)**2+(Y-0.261)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-8.656e-07)/tc-1)**2))+
C       Impact number 52
     +  p0*EXP(-(((X+-0.177)**2+(Y-0.207)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-6.542e-07)/tc-1)**2))+
C       Impact number 53
     +  p0*EXP(-(((X+-0.268)**2+(Y-0.240)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-3.02e-07)/tc-1)**2))+
C       Impact number 54
     +  p0*EXP(-(((X+-0.198)**2+(Y-0.285)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-5.747e-07)/tc-1)**2))+
C       Impact number 55
     +  p0*EXP(-(((X+-0.069)**2+(Y-0.179)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-6.794e-07)/tc-1)**2))+
C       Impact number 56
     +  p0*EXP(-(((X+-0.180)**2+(Y-0.272)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-7.59e-07)/tc-1)**2))+
C       Impact number 57
     +  p0*EXP(-(((X+-0.051)**2+(Y-0.069)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-4.3789999999999997e-07)/tc-1)**2))+
C       Impact number 58
     +  p0*EXP(-(((X+-0.015)**2+(Y-0.016)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-8.545e-07)/tc-1)**2))+
C       Impact number 59
     +  p0*EXP(-(((X+-0.019)**2+(Y-0.094)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-7.345e-07)/tc-1)**2))+
C       Impact number 60
     +  p0*EXP(-(((X+-0.097)**2+(Y-0.041)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-1.678e-07)/tc-1)**2))+
C       Impact number 61
     +  p0*EXP(-(((X+-0.101)**2+(Y-0.060)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-1.9249999999999998e-07)/tc-1)**2))+
C       Impact number 62
     +  p0*EXP(-(((X+-0.298)**2+(Y-0.081)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-7.526e-07)/tc-1)**2))+
C       Impact number 63
     +  p0*EXP(-(((X+-0.105)**2+(Y-0.195)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-1.247e-07)/tc-1)**2))+
C       Impact number 64
     +  p0*EXP(-(((X+-0.028)**2+(Y-0.138)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-2.648e-07)/tc-1)**2))+
C       Impact number 65
     +  p0*EXP(-(((X+-0.001)**2+(Y-0.082)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-4.1849999999999994e-07)/tc-1)**2))+
C       Impact number 66
     +  p0*EXP(-(((X+-0.197)**2+(Y-0.013)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-6.130999999999999e-07)/tc-1)**2))+
C       Impact number 67
     +  p0*EXP(-(((X+-0.222)**2+(Y-0.051)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-2.102e-07)/tc-1)**2))+
C       Impact number 68
     +  p0*EXP(-(((X+-0.085)**2+(Y-0.164)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-4.4699999999999997e-07)/tc-1)**2))+
C       Impact number 69
     +  p0*EXP(-(((X+-0.267)**2+(Y-0.295)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-5.402999999999999e-07)/tc-1)**2))+
C       Impact number 70
     +  p0*EXP(-(((X+-0.019)**2+(Y-0.244)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-2.404e-07)/tc-1)**2))+
C       Impact number 71
     +  p0*EXP(-(((X+-0.104)**2+(Y-0.287)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-8.844e-07)/tc-1)**2))+
C       Impact number 72
     +  p0*EXP(-(((X+-0.176)**2+(Y-0.141)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-4.923e-07)/tc-1)**2))+
C       Impact number 73
     +  p0*EXP(-(((X+-0.240)**2+(Y-0.257)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-7.547000000000001e-07)/tc-1)**2))+
C       Impact number 74
     +  p0*EXP(-(((X+-0.287)**2+(Y-0.284)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-1.715e-07)/tc-1)**2))+
C       Impact number 75
     +  p0*EXP(-(((X+-0.227)**2+(Y-0.184)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-5.522e-07)/tc-1)**2))+
C       Impact number 76
     +  p0*EXP(-(((X+-0.225)**2+(Y-0.012)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-5.322e-07)/tc-1)**2))+
C       Impact number 77
     +  p0*EXP(-(((X+-0.138)**2+(Y-0.004)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-6.721e-07)/tc-1)**2))+
C       Impact number 78
     +  p0*EXP(-(((X+-0.113)**2+(Y-0.179)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-2.467e-07)/tc-1)**2))+
C       Impact number 79
     +  p0*EXP(-(((X+-0.140)**2+(Y-0.182)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-4.278e-07)/tc-1)**2))+
C       Impact number 80
     +  p0*EXP(-(((X+-0.056)**2+(Y-0.055)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-3.288e-07)/tc-1)**2))+
C       Impact number 81
     +  p0*EXP(-(((X+-0.276)**2+(Y-0.147)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-8.282e-07)/tc-1)**2))+
C       Impact number 82
     +  p0*EXP(-(((X+-0.189)**2+(Y-0.089)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-7.24e-07)/tc-1)**2))+
C       Impact number 83
     +  p0*EXP(-(((X+-0.266)**2+(Y-0.294)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-8.134e-07)/tc-1)**2))+
C       Impact number 84
     +  p0*EXP(-(((X+-0.172)**2+(Y-0.161)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-1.121e-07)/tc-1)**2))+
C       Impact number 85
     +  p0*EXP(-(((X+-0.203)**2+(Y-0.051)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-5.601e-07)/tc-1)**2))+
C       Impact number 86
     +  p0*EXP(-(((X+-0.226)**2+(Y-0.097)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-5.24e-07)/tc-1)**2))+
C       Impact number 87
     +  p0*EXP(-(((X+-0.259)**2+(Y-0.144)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-4.3219999999999997e-07)/tc-1)**2))+
C       Impact number 88
     +  p0*EXP(-(((X+-0.051)**2+(Y-0.213)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-7.456e-07)/tc-1)**2))+
C       Impact number 89
     +  p0*EXP(-(((X+-0.048)**2+(Y-0.020)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-8.199999999999999e-07)/tc-1)**2))+
C       Impact number 90
     +  p0*EXP(-(((X+-0.245)**2+(Y-0.204)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-2.465e-07)/tc-1)**2))+
C       Impact number 91
     +  p0*EXP(-(((X+-0.167)**2+(Y-0.244)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-4.3849999999999996e-07)/tc-1)**2))+
C       Impact number 92
     +  p0*EXP(-(((X+-0.136)**2+(Y-0.269)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-1.182e-07)/tc-1)**2))+
C       Impact number 93
     +  p0*EXP(-(((X+-0.076)**2+(Y-0.035)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-1.183e-07)/tc-1)**2))+
C       Impact number 94
     +  p0*EXP(-(((X+-0.287)**2+(Y-0.175)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-8.728999999999999e-07)/tc-1)**2))+
C       Impact number 95
     +  p0*EXP(-(((X+-0.149)**2+(Y-0.250)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-6.149999999999999e-07)/tc-1)**2))+
C       Impact number 96
     +  p0*EXP(-(((X+-0.266)**2+(Y-0.128)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-6.726999999999999e-07)/tc-1)**2))+
C       Impact number 97
     +  p0*EXP(-(((X+-0.017)**2+(Y-0.127)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-8.087999999999999e-07)/tc-1)**2))+
C       Impact number 98
     +  p0*EXP(-(((X+-0.144)**2+(Y-0.138)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-5.325e-07)/tc-1)**2))+
C       Impact number 99
     +  p0*EXP(-(((X+-0.192)**2+(Y-0.066)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-7.113e-07)/tc-1)**2))+
C       Impact number 100
     +  p0*EXP(-(((X+-0.107)**2+(Y-0.089)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-6.806999999999999e-07)/tc-1)**2))+
C       Impact number 101
     +  p0*EXP(-(((X+-0.251)**2+(Y-0.183)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-1.19e-07)/tc-1)**2))+
C       Impact number 102
     +  p0*EXP(-(((X+-0.005)**2+(Y-0.245)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-6.129e-07)/tc-1)**2))+
C       Impact number 103
     +  p0*EXP(-(((X+-0.274)**2+(Y-0.094)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-5.275999999999999e-07)/tc-1)**2))+
C       Impact number 104
     +  p0*EXP(-(((X+-0.044)**2+(Y-0.173)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-6.351e-07)/tc-1)**2))+
C       Impact number 105
     +  p0*EXP(-(((X+-0.171)**2+(Y-0.247)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-5.738999999999999e-07)/tc-1)**2))+
C       Impact number 106
     +  p0*EXP(-(((X+-0.085)**2+(Y-0.145)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-4.5119999999999996e-07)/tc-1)**2))+
C       Impact number 107
     +  p0*EXP(-(((X+-0.204)**2+(Y-0.000)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-5.942e-07)/tc-1)**2))+
C       Impact number 108
     +  p0*EXP(-(((X+-0.020)**2+(Y-0.139)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-5.131e-07)/tc-1)**2))+
C       Impact number 109
     +  p0*EXP(-(((X+-0.198)**2+(Y-0.063)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-2.7450000000000003e-07)/tc-1)**2))+
C       Impact number 110
     +  p0*EXP(-(((X+-0.175)**2+(Y-0.202)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-1.844e-07)/tc-1)**2))+
C       Impact number 111
     +  p0*EXP(-(((X+-0.278)**2+(Y-0.246)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-5.966e-07)/tc-1)**2))+
C       Impact number 112
     +  p0*EXP(-(((X+-0.014)**2+(Y-0.106)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-5.612e-07)/tc-1)**2))+
C       Impact number 113
     +  p0*EXP(-(((X+-0.072)**2+(Y-0.221)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-4.0879999999999995e-07)/tc-1)**2))+
C       Impact number 114
     +  p0*EXP(-(((X+-0.178)**2+(Y-0.036)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-7.723999999999999e-07)/tc-1)**2))+
C       Impact number 115
     +  p0*EXP(-(((X+-0.062)**2+(Y-0.165)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-4.187e-07)/tc-1)**2))+
C       Impact number 116
     +  p0*EXP(-(((X+-0.072)**2+(Y-0.120)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-3.4150000000000003e-07)/tc-1)**2))+
C       Impact number 117
     +  p0*EXP(-(((X+-0.155)**2+(Y-0.135)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-4.213e-07)/tc-1)**2))+
C       Impact number 118
     +  p0*EXP(-(((X+-0.177)**2+(Y-0.029)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-7.489999999999999e-07)/tc-1)**2))+
C       Impact number 119
     +  p0*EXP(-(((X+-0.257)**2+(Y-0.114)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-1.9639999999999999e-07)/tc-1)**2))+
C       Impact number 120
     +  p0*EXP(-(((X+-0.183)**2+(Y-0.220)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-1.0589999999999999e-07)/tc-1)**2))+
C       Impact number 121
     +  p0*EXP(-(((X+-0.291)**2+(Y-0.087)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-2.838e-07)/tc-1)**2))+
C       Impact number 122
     +  p0*EXP(-(((X+-0.069)**2+(Y-0.251)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-8.738e-07)/tc-1)**2))+
C       Impact number 123
     +  p0*EXP(-(((X+-0.062)**2+(Y-0.013)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-1.917e-07)/tc-1)**2))+
C       Impact number 124
     +  p0*EXP(-(((X+-0.295)**2+(Y-0.236)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-6.841e-07)/tc-1)**2))+
C       Impact number 125
     +  p0*EXP(-(((X+-0.020)**2+(Y-0.109)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-1.0059999999999999e-07)/tc-1)**2))+
C       Impact number 126
     +  p0*EXP(-(((X+-0.074)**2+(Y-0.157)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-5.495e-07)/tc-1)**2))+
C       Impact number 127
     +  p0*EXP(-(((X+-0.058)**2+(Y-0.125)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-1.641e-07)/tc-1)**2))+
C       Impact number 128
     +  p0*EXP(-(((X+-0.119)**2+(Y-0.084)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-4.255e-07)/tc-1)**2))+
C       Impact number 129
     +  p0*EXP(-(((X+-0.003)**2+(Y-0.022)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-3.725e-07)/tc-1)**2))+
C       Impact number 130
     +  p0*EXP(-(((X+-0.094)**2+(Y-0.290)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-3.411e-07)/tc-1)**2))+
C       Impact number 131
     +  p0*EXP(-(((X+-0.086)**2+(Y-0.163)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-1.334e-07)/tc-1)**2))+
C       Impact number 132
     +  p0*EXP(-(((X+-0.128)**2+(Y-0.040)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-7.552999999999999e-07)/tc-1)**2))+
C       Impact number 133
     +  p0*EXP(-(((X+-0.188)**2+(Y-0.244)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-3.728e-07)/tc-1)**2))+
C       Impact number 134
     +  p0*EXP(-(((X+-0.103)**2+(Y-0.231)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-6.122999999999999e-07)/tc-1)**2))+
C       Impact number 135
     +  p0*EXP(-(((X+-0.119)**2+(Y-0.134)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-3.45e-07)/tc-1)**2))+
C       Impact number 136
     +  p0*EXP(-(((X+-0.225)**2+(Y-0.154)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-7.447999999999999e-07)/tc-1)**2))+
C       Impact number 137
     +  p0*EXP(-(((X+-0.076)**2+(Y-0.204)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-4.551e-07)/tc-1)**2))+
C       Impact number 138
     +  p0*EXP(-(((X+-0.133)**2+(Y-0.298)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-7.078999999999999e-07)/tc-1)**2))+
C       Impact number 139
     +  p0*EXP(-(((X+-0.039)**2+(Y-0.188)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-3.9269999999999996e-07)/tc-1)**2))+
C       Impact number 140
     +  p0*EXP(-(((X+-0.105)**2+(Y-0.116)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-8.538e-07)/tc-1)**2))+
C       Impact number 141
     +  p0*EXP(-(((X+-0.146)**2+(Y-0.221)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-3.052e-07)/tc-1)**2))+
C       Impact number 142
     +  p0*EXP(-(((X+-0.108)**2+(Y-0.177)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-6.127e-07)/tc-1)**2))+
C       Impact number 143
     +  p0*EXP(-(((X+-0.057)**2+(Y-0.180)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-2.317e-07)/tc-1)**2))+
C       Impact number 144
     +  p0*EXP(-(((X+-0.045)**2+(Y-0.220)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-8.358999999999999e-07)/tc-1)**2))+
C       Impact number 145
     +  p0*EXP(-(((X+-0.153)**2+(Y-0.230)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-3.608e-07)/tc-1)**2))+
C       Impact number 146
     +  p0*EXP(-(((X+-0.201)**2+(Y-0.258)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-4.706e-07)/tc-1)**2))+
C       Impact number 147
     +  p0*EXP(-(((X+-0.149)**2+(Y-0.043)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-3.93e-07)/tc-1)**2))+
C       Impact number 148
     +  p0*EXP(-(((X+-0.125)**2+(Y-0.173)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-5.406e-07)/tc-1)**2))+
C       Impact number 149
     +  p0*EXP(-(((X+-0.257)**2+(Y-0.011)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-1.87e-07)/tc-1)**2))+
C       Impact number 150
     +  p0*EXP(-(((X+-0.128)**2+(Y-0.051)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-3.446e-07)/tc-1)**2))+
C       Impact number 151
     +  p0*EXP(-(((X+-0.250)**2+(Y-0.101)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-7.317999999999999e-07)/tc-1)**2))+
C       Impact number 152
     +  p0*EXP(-(((X+-0.223)**2+(Y-0.185)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-7.452e-07)/tc-1)**2))+
C       Impact number 153
     +  p0*EXP(-(((X+-0.103)**2+(Y-0.248)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-1.56e-07)/tc-1)**2))+
C       Impact number 154
     +  p0*EXP(-(((X+-0.251)**2+(Y-0.166)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-2.111e-07)/tc-1)**2))+
C       Impact number 155
     +  p0*EXP(-(((X+-0.173)**2+(Y-0.278)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-7.839e-07)/tc-1)**2))+
C       Impact number 156
     +  p0*EXP(-(((X+-0.031)**2+(Y-0.123)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-6.993e-07)/tc-1)**2))+
C       Impact number 157
     +  p0*EXP(-(((X+-0.123)**2+(Y-0.277)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-4.592e-07)/tc-1)**2))+
C       Impact number 158
     +  p0*EXP(-(((X+-0.263)**2+(Y-0.130)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-6.413999999999999e-07)/tc-1)**2))+
C       Impact number 159
     +  p0*EXP(-(((X+-0.062)**2+(Y-0.197)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-7.838e-07)/tc-1)**2))+
C       Impact number 160
     +  p0*EXP(-(((X+-0.229)**2+(Y-0.079)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-1.4109999999999999e-07)/tc-1)**2))+
C       Impact number 161
     +  p0*EXP(-(((X+-0.063)**2+(Y-0.167)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-2.1469999999999998e-07)/tc-1)**2))+
C       Impact number 162
     +  p0*EXP(-(((X+-0.284)**2+(Y-0.252)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-8.319999999999999e-07)/tc-1)**2))+
C       Impact number 163
     +  p0*EXP(-(((X+-0.041)**2+(Y-0.156)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-6.646e-07)/tc-1)**2))+
C       Impact number 164
     +  p0*EXP(-(((X+-0.107)**2+(Y-0.290)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-5.011e-07)/tc-1)**2))+
C       Impact number 165
     +  p0*EXP(-(((X+-0.181)**2+(Y-0.230)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-4.4819999999999995e-07)/tc-1)**2))+
C       Impact number 166
     +  p0*EXP(-(((X+-0.088)**2+(Y-0.255)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-3.3629999999999996e-07)/tc-1)**2))+
C       Impact number 167
     +  p0*EXP(-(((X+-0.010)**2+(Y-0.237)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-3.396e-07)/tc-1)**2))+
C       Impact number 168
     +  p0*EXP(-(((X+-0.105)**2+(Y-0.203)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-8.179999999999999e-07)/tc-1)**2))+
C       Impact number 169
     +  p0*EXP(-(((X+-0.012)**2+(Y-0.127)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-4.722e-07)/tc-1)**2))+
C       Impact number 170
     +  p0*EXP(-(((X+-0.242)**2+(Y-0.013)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-7.611e-07)/tc-1)**2))+
C       Impact number 171
     +  p0*EXP(-(((X+-0.260)**2+(Y-0.018)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-8.545999999999999e-07)/tc-1)**2))+
C       Impact number 172
     +  p0*EXP(-(((X+-0.008)**2+(Y-0.003)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-5.441e-07)/tc-1)**2))+
C       Impact number 173
     +  p0*EXP(-(((X+-0.144)**2+(Y-0.158)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-5.197e-07)/tc-1)**2))+
C       Impact number 174
     +  p0*EXP(-(((X+-0.224)**2+(Y-0.061)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-5.948999999999999e-07)/tc-1)**2))+
C       Impact number 175
     +  p0*EXP(-(((X+-0.020)**2+(Y-0.129)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-7.994999999999999e-07)/tc-1)**2))+
C       Impact number 176
     +  p0*EXP(-(((X+-0.175)**2+(Y-0.044)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-6.689000000000001e-07)/tc-1)**2))+
C       Impact number 177
     +  p0*EXP(-(((X+-0.065)**2+(Y-0.296)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-2.499e-07)/tc-1)**2))+
C       Impact number 178
     +  p0*EXP(-(((X+-0.261)**2+(Y-0.252)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-4.4579999999999993e-07)/tc-1)**2))+
C       Impact number 179
     +  p0*EXP(-(((X+-0.005)**2+(Y-0.265)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-7.917999999999999e-07)/tc-1)**2))+
C       Impact number 180
     +  p0*EXP(-(((X+-0.050)**2+(Y-0.030)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-7.992e-07)/tc-1)**2))+
C       Impact number 181
     +  p0*EXP(-(((X+-0.202)**2+(Y-0.288)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-7.848e-07)/tc-1)**2))+
C       Impact number 182
     +  p0*EXP(-(((X+-0.242)**2+(Y-0.100)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-4.669e-07)/tc-1)**2))+
C       Impact number 183
     +  p0*EXP(-(((X+-0.233)**2+(Y-0.214)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-8.277999999999999e-07)/tc-1)**2))+
C       Impact number 184
     +  p0*EXP(-(((X+-0.152)**2+(Y-0.240)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-4.1289999999999995e-07)/tc-1)**2))+
C       Impact number 185
     +  p0*EXP(-(((X+-0.226)**2+(Y-0.175)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-6.237e-07)/tc-1)**2))+
C       Impact number 186
     +  p0*EXP(-(((X+-0.221)**2+(Y-0.002)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-1.199e-07)/tc-1)**2))+
C       Impact number 187
     +  p0*EXP(-(((X+-0.052)**2+(Y-0.204)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-7.823e-07)/tc-1)**2))+
C       Impact number 188
     +  p0*EXP(-(((X+-0.019)**2+(Y-0.185)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-1.54e-07)/tc-1)**2))+
C       Impact number 189
     +  p0*EXP(-(((X+-0.168)**2+(Y-0.089)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-3.2579999999999997e-07)/tc-1)**2))+
C       Impact number 190
     +  p0*EXP(-(((X+-0.196)**2+(Y-0.063)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-3.33e-07)/tc-1)**2))+
C       Impact number 191
     +  p0*EXP(-(((X+-0.286)**2+(Y-0.007)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-5.3e-07)/tc-1)**2))+
C       Impact number 192
     +  p0*EXP(-(((X+-0.036)**2+(Y-0.007)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-7.925999999999999e-07)/tc-1)**2))+
C       Impact number 193
     +  p0*EXP(-(((X+-0.080)**2+(Y-0.114)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-2.3069999999999997e-07)/tc-1)**2))+
C       Impact number 194
     +  p0*EXP(-(((X+-0.014)**2+(Y-0.009)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-8.175999999999999e-07)/tc-1)**2))+
C       Impact number 195
     +  p0*EXP(-(((X+-0.246)**2+(Y-0.283)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-4.312e-07)/tc-1)**2))+
C       Impact number 196
     +  p0*EXP(-(((X+-0.276)**2+(Y-0.223)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-3.312e-07)/tc-1)**2))+
C       Impact number 197
     +  p0*EXP(-(((X+-0.223)**2+(Y-0.069)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-8.86e-07)/tc-1)**2))+
C       Impact number 198
     +  p0*EXP(-(((X+-0.010)**2+(Y-0.209)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-5.568999999999999e-07)/tc-1)**2))+
C       Impact number 199
     +  p0*EXP(-(((X+-0.179)**2+(Y-0.154)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-4.782e-07)/tc-1)**2))+
C       Impact number 200
     +  p0*EXP(-(((X+-0.065)**2+(Y-0.071)**2)/(R*R)))*
     +  EXP(-a*((2*(stepTime-7.094999999999999e-07)/tc-1)**2))
C-----------------------------------------------------------------------
      end do
*
      return
      end