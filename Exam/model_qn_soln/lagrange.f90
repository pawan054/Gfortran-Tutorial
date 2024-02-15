program LagrangeInterpolation
    implicit none
    real :: x(4), y(4), x_val, y_val
    real :: result
    integer :: i, j
    real :: product, basis

    ! Given data points
    x = [0.0, 1.0, 2.0, 3.0]
    y = [0.0, 0.4405, 0.57672, 0.33905]

    ! Value of x for which y needs to be calculated
    x_val = 2.5

    result = 0.0

    do i = 1, size(x)
        product = y(i)
        basis = 1.0

        do j = 1, size(x)
            if (i /= j) then
                basis = basis * (x_val - x(j)) / (x(i) - x(j))
            endif
        enddo

        product = product * basis
        result = result + product
    enddo

    y_val = result

    print *, "At x =", x_val, ", y =", y_val
end program LagrangeInterpolation

