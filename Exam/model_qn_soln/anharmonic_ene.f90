program anharmonic_elevels
implicit none 
integer , parameter  :: P = 1000
integer , parameter  :: LWORK = 3*P-1
integer :: DIM 
real (8) , dimension (P,P) :: H,X,X4
real (8) , dimension (P) :: E
real (8) , dimension (LWORK) :: WORK
real (8) ::  lambda
integer :: i
write(*,*) '# Enter the Hilbert Space dimension '
read(*,*) DIM 
write(*,*) 'Enter the lambda '
read(*,*) lambda
write(*,*) 'Lambda = ',lambda
call calculate_X4(X,X4,DIM)
call calculate_evs(H,X4,E,WORK,lambda,DIM)
write(6,100) 'EV',DIM,lambda,(E(i), i=1,DIM)
100 format (a3,i8,20000g25.15)
end program anharmonic_elevels
subroutine calculate_evs(H,X4,E,WORK,lambda,DIM) 
implicit none 
integer , parameter  :: P = 1000
integer , parameter  :: LWORK = 3*P-1
integer :: DIM 
real (8) , dimension (P,P) :: H,X4
real (8) , dimension (P) :: E
real (8) , dimension (LWORK) :: WORK
real (8) ::  lambda
character (1) :: JOBZ,UPLO
integer :: LDA,INFO,i,j
call calculate_H(H,X4,lambda,DIM)
JOBZ  = 'V';UPLO = 'U'
call DSYEV (JOBZ,UPLO,DIM,H,P,E,WORK,INFO)
write(*,*) '######3 EVEC##################'
  do j =1,DIM
   write(6,101) '#EVEC ',lambda,(H(i,j), i= 1,DIM)
   end do 
   write(*,*) '#########EVEC############'
   101 format ( A7,F15.3,20000G14.6)
   if (INFO .ne. 0) then 
   write(*,*) 'dsyev failed. INFO = ',INFO
   stop
   end if 
  end subroutine calculate_evs  
  subroutine calculate_H(H,X4,lambda,DIM) 
  implicit none
  integer , parameter :: P = 1000
  real (8) , dimension (P,P) :: H, X4
  real (8) :: lambda 
  integer ::DIM
  integer :: i, j 
     do  j = 1, DIM  
       do i = 1, DIM 
       H(i,j) = lambda*X4(i,j)
       end do 
     H(i,j) = H(i,j) + DBLE(j) - 0.5D0  ! E_n = (n+1/2), n = j-1/2
     end do 
     print *, '#**************H******###' 
      do j=1,DIM 
       write(6,102) '#HH',(H(i,j), i=1,DIM)
       end do 
  print *, '####################  H   ###################'
  102 format(A5,20000G20.6)
  end subroutine calculate_H
  
  
  subroutine calculate_X4(X,X4,DIM)
   implicit none
  integer , parameter :: P = 1000
  real (8) , dimension (P,P) :: X, X4,X2
  integer  :: DIM
  integer :: i, j,m,n
  real(8) , parameter :: isqrt2 = 1.0d0/sqrt(2.0d0)
   X = 0.0d0
    do i =1,DIM 
       n = i-1 
       m = n-1 
       j = m+1 
     if (j .ge. 1) X(i,j) = isqrt2*sqrt(DBLE(m+1))
     m = n+1 
     j = m+1 
      if (j .le. DIM) X(i,j) = isqrt2*sqrt(DBLE(m))
      end do 
   X2 = MATMUL(X,X) 
   X4 = MATMUL(X2,X2) 
   end subroutine calculate_x4
       
       
       
       
       
       


