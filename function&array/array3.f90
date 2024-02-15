program arr
implicit none
integer,dimension(10)::number1,square
integer::i
do i=1,10
number1(i)=i
square(i)= number1(i)**2
end do
do i=1,10
write(*,111) number1(i), square(i)
111 format('number1=',2x i6, 'square=',i6)
end do
end program arrgedit
