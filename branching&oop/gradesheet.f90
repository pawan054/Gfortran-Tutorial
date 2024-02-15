program mark1
implicit none
Integer::i 
real:: sgpa
write(*,*) 'enter the marks you obtained in each subject'
read(*,*) grad
if (grad >=90) then
write(*,*) 'Tha garde is A and GP is 4.0'
end if
if (grad >=80) then
write(*,*) 'Tha garde is A- and GP is 3.7'
end if
if (grad >=70) then
write(*,*) 'Tha garde is B+ and GP is 3.3'
end if
if (grad >=60) then
write(*,*) 'Tha garde is B and GP is 3.0'
end if
if (grad >=50) then
write(*,*) 'Tha garde is B- and GP is 2.7'
end if
if (grad <=50) then
write(*,*) 'You are failed and your GP is 0.0'
end if
end program mark1
