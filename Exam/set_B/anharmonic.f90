program test_evs
implicit none 
integer, parameter :: P = 100   !P= LDA
integer, parameter :: LWORK = 3*P-1
real (8) :: A(P,P), W(P), WORK(LWORK)
integer :: N !DSYEV diagonalizes a(N,N)
integer :: i,j 
integer :: LDA,INFO
character (1) :: JOBZ, UPLO
! Define the ** symmetric ** matrix to be diaonalized
! The subroutine uses the upper triangular part (UPLO= ’U’ )
! therefore the lower triangular part needs not to be defined
N =4 
A(1,1) = -7.7;
A(1,2) = 2.1;A(2,2) = 8.3;
A(1,3) = -3.7;A(2,3) = -16.;A(3,3) = -12.
A(1,4) = 4.4;A(2,4) = 4.6;A(3,4) = -1.04;A(4,4) = -3.7
! We print the matrix A before calling DSYEV since it is destroyed after 
!the call
   do i =1,N
     do j = 1,N
      write(*,*) 'A( ',i,' , ',j,' )=',A(i,J)
      end do 
   end do 
   !We ask for eigenvalues and eigen vectors (JOBZ = 'V')
   JOBZ = 'V'; UPLO ='U'
   write(*,*) 'COMPUTING WITH DSYEV'
   LDA = P  ! Notice that LDA-> P>N !!
  call DSYEV (JOBZ,UPLO,N,A,LDA,W,Work,LWORK,INFO)
  write(*,*) 'DSYEV: DONE. CHECKING NOW:'
  !If INFO is nonzero, then there is an error : 
  if ( INFO .ne. 0 ) then 
   write(*,*) 'DSYEV FAILED. INFO = ',INFO
   stop 
   end if 
   !Print the results : W(I) has the eigenvalues 
  write(*,*) 'DSYEV: DONE.: '
  write(*,*) 'EIGEN VALUES OF MATRIX : '
   do i =1,N
   write(*,*) 'LAMBDA(',i,') = ',W(i)
   end do 
  ! EIgenvectors are stored in the columns of A:
  write(*,*) 'EIGENVECTORS of MATRIX'
    do j =1,N
    write(*,*) 'EIGENVECTOR ',j,'FOR EIGENVALUE ',W(j)
    do i = 1,N 
     write(*,*) 'V',j,'(',i,')= ',A(i,j)
    end do 
    end do 
   end program test_evs
