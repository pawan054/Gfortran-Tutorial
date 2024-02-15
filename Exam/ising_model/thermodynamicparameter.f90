program thermodynamic
implicit none
real, dimension (1000000)::e,m
real:: cv,chi,meane,meanm,deltaesq,deltamsq,beta,esq,msq,sume,summ
integer::i,n
write(*,*) 'Enter the value of Beta (1/T)'
read(*,*) beta
open(11,file="sss.dat",status="old")
n=1000000

do i=1,n
read(11,*)e(i),m(i)
!m(i)=abs(m(i))
if (m(i).lt.0.0)then
m(i)=-m(i)
end if
m(i)=m(i)/144.
end do
sume=0.0
summ=0.0
do i=1,n
sume=sume+e(i)
summ=summ+m(i)
end do
meane=sume/real(n)
meanm=summ/real(n)
esq=0.0
msq=0.0
do i=1,n
esq=esq+(e(i)-meane)**2.
msq=msq+(m(i)-meanm)**2.
end do
deltaesq= esq/real(n)
deltamsq=msq/real(n)
 cv=beta* beta* deltaesq
 chi = beta* deltamsq
 print*, 'M= ',meanm,'CV= ',cv,'Chi= ',chi
 end program



