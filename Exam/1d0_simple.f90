program do_simple
implicit none
integer::i=11
do
if (i<=10) exit
write(*,*) 'i love you'
end do
end program do_simple
