program LogarithmCalculation
    implicit none
    real :: x, y
    
    ! Loop control variables
    real :: step_size
    
    ! Read the step size from the user
    print *, "Enter the step size (between 0 and 1): "
    read *, step_size
    
    ! Initialize x
    x = 0.0
    
    ! Calculate and display y for x values within the specified range using a while-loop-like structure
    do while (x < 1.0)
        if (x > 0.0) then
            y = log(1.0/(1.0 - x))
            print *, "For x = ", x, ", ln(1/(1-x)) = ", y
        else
            print *, "Error: Input value ", x, " is not within the range 0 < x < 1"
        endif
        x = x + step_size
    end do
    
end program LogarithmCalculation

