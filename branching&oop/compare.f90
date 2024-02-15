program com
implicit none
real::a,n,s,s1
write(*,*) 'enter the value of a, n'
read(*,*) a,n
s= ((1.-a**n)/(a-1)**2) +(n*a/(a-1.))
s1=(n*a*(1.+n))/2.
write (*,*) 'the s=',s, 's1=',s1
end program com
