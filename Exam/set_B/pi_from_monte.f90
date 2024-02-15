program EstimatePiMonteCarlo
    implicit none
    integer, parameter :: N = 1000 ! Number of random points
    real :: x, y, pi_estimate
    integer :: i, count_inside_circle
    count_inside_circle = 0

    ! Loop to generate random points and count those inside the quarter-circle
    do i = 1, N
        ! Generate random points in the range [0, 1]
        call random_number(x)
        call random_number(y)
        
        ! Check if the point is inside the quarter-circle (x^2 + y^2 <= 1)
        if (x**2 + y**2 <= 1.0) then
            count_inside_circle = count_inside_circle + 1
        endif
    end do
    
    ! Estimate π using the ratio of points inside the quarter-circle to total points
    pi_estimate = 4.0 * real(count_inside_circle) / real(N)
    
    ! Output the estimated value of π
    print *, "Estimated value of Pi using ", N, " points: ", pi_estimate
end program EstimatePiMonteCarlo

