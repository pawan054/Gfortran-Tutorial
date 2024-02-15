program BinaryToDecimal
    implicit none
    integer :: binary, decimal, remainder, base, temp
    
    ! Read the binary number from the user
    print *, "Enter a binary number: "
    read *, binary
    
    ! Initialize variables
    decimal = 0
    base = 1
    temp = binary
    
    ! Convert binary to decimal
    do while (temp /= 0)
        remainder = mod(temp, 10)
        decimal = decimal + remainder * base
        base = base * 2
        temp = temp / 10
    end do
    
    ! Display the decimal equivalent
    print *, "The decimal equivalent of ", binary, " is ", decimal
    
end program BinaryToDecimal

