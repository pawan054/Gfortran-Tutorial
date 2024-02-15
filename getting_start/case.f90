program week
character(len=7)::cday
integer:: iday
write(*,*) 'enter the day of week from 1 to 7'
read(*,*) iday
select case (iday)
case (1) 
cday = 'Sunday'
case (2)
cday= 'Monaday'
case (3)
cday= 'Tuesday'
case (4)
cday= 'Wednesday'
case (5)
cday= 'Thursday'
case (6)
cday= 'Friday'
case (7)
cday= 'Saturday'
case default 
cday= 'invalid  day'
end select
write(*,*) 'Day is ', cday
end program week
