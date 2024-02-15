program GravityAcceleration
    implicit none
    integer, parameter :: numPoints = 80001 ! (4000000 km / 50 km) + 1
    integer :: i
    real :: h, g
    
    ! Constants
    real, parameter :: G = 6.67430E-11 ! Gravitational constant in m^3 kg^(-1) s^(-2)
    real, parameter :: M = 5.97219E24 ! Earth's mass in kg
    real, parameter :: R = 6371000.0 ! Earth's radius in meters
    
    ! Array to store height and gravity acceleration values
    real, dimension(numPoints) :: height, acceleration
    
    ! Calculate the acceleration due to gravity for each height
    do i = 1, numPoints
        h = (i - 1) * 50000.0 ! Height in meters
        g = G * M / (R + h)**2 ! Gravity acceleration in m/s^2
        
        height(i) = h / 1000.0 ! Height in kilometers
        acceleration(i) = g ! Gravity acceleration in m/s^2
    end do
    
    ! Print the height and gravity acceleration values
    print *, "Height (km)   Gravity Acceleration (m/s^2)"
    do i = 1, numPoints
        print *, height(i), acceleration(i)
    end do
    
end program GravityAcceleration

