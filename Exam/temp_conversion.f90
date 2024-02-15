program temp_conversion
implicit none
real::temp_f,temp_k
write(*,*) 'Eneter the temperature in degree Fahrenheit: '
read(*,*) temp_f
temp_k = (5./9.)*(temp_f-32.)+273.15
write(*,*) 'The required temperature in Kelvin is = ' , temp_k, 'K'
end program temp_conversion
