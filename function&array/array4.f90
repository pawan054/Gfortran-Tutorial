program arr
!implied do loops . They are externally important in fortran .We do not provide values of array in fortran if you use impled do loops  like in this program
implicit none
integer::i,j
!integer,dimension(1000)::array2 = [(i,i=1,1000)]
integer,dimension(25)::array4 = [((0,i=1,4),5*j,j=1,5)]
do i=1,5
write(*,*) 'the values of a(i) are' , i, array4(i)
end do
end program arr
