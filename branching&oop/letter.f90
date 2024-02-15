program letter
real:: grad
write(*,*)'enter your grade'
read(*,*) grad
i1: if (grad>=90) then 
write(*,*)'Your grade is A+'
else
i2: if (grad>=80) then 
write(*,*)'Your grade is A'
else
i3: if (grad>=70) then 
write(*,*)'Your grade is B+'
else
i4: if (grad>=60) then 
write(*,*)'Your grade is B'
else
i5: if (grad>=50) then 
write(*,*)'Your grade is C+'
else
write(*,*)'Your grade is F'
end if i5
end if i4
end if i3
end if i2
end if i1
end program letter
