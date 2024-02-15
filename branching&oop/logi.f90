program logi
!implicit none
logical:: var1,var2, var
!var1= 3<4
!var2= 4<3
var= (3<4).AND.(4>5)
write(*,*) 'the logical result is' ,var
end program logi
