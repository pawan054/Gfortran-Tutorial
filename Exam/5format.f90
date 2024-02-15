program w
implicit none
character(len=12) :: name1,ss
write(*,134)
134 format (/)
write(*,100) 
100 format(T4,'Name',T14,'Class')
write(*,110)
110 format (T4,'====',T14,'====')
name1 = 'pawan'
ss = 'tweleve'
write(*,130) name1,ss
130 format (2x,T4,A10, T14,A10)
end program w

