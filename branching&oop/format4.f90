program raw
!implicit none
integer::i
real:: a=1.3246e6, b=0.001, c=-77e10
!double Precision :: pi
!i=785
!result1=983.768
!pi=4.d0*atan(1.d0)
write(*,200) i,a,b,c
!write(*,100) i,result1
!200 format (i3,2x,f8.4)
!write(*,101) result1,pi,pi
!write(*,100) i,result1
200 format ( 2es14.4, es12.6)
end program raw
!hw chapman ex no. table 5.1
