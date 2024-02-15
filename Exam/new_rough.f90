program NewtonRaphsonTanEquation
    implicit none
    real :: x0, x1, f, f_prime, error
    real, parameter :: tolerance = 0.01
    integer :: iterations, max_iterations

    ! Initial guess
    x0 = 0.1
    max_iterations = 10000000
    iterations = 0

    do while (iterations < max_iterations)
        f = tan(0.1 * x0) - x0
        f_prime = 0.1 / (cos(0.1 * x0))**2 - 1.0

        x1 = x0 - f / f_prime
        error = abs((x1 - x0) / x1)

        if (error < tolerance) then
            print *, "Root found at x =", x1, " with error =", error
            exit
        endif

        x0 = x1
        iterations = iterations + 1
    end do

    if (iterations >= max_iterations) then
        print *, "Solution did not converge within ", max_iterations, " iterations."
    endif
end program NewtonRaphsonTanEquation

