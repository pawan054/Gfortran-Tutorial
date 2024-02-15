program ex
implicit none
real:: G,V1sec,V2sec,V3sec, V4sec
real:: M1,R1
real:: M2,R2
real:: M3,R3
real:: M4,R4
M1= 6.0e24
M2=1.9e27
M3=8.7e20
M4=7.4e22
R1=6.4e6
R2=7.1e5
R3=4.7e5
R4=1.7e6
G = 6.67e-11
V1sec= sqrt(2*G*M1)/R1
V2sec= sqrt(2*G*M2)/R2
V3sec= sqrt(2*G*M3)/R3
V4sec= sqrt(2*G*M4)/R4
write(*,*) 'The required value of escape velocity for earth with', 'radius', R1, 'm','and', 'mass', M1, 'kg', 'is' , V1sec, 'm/s.'
write(*,*) 'The required value of escape velocity for jupiter with', 'radius', R2, 'm','and mass', M2, 'kg', 'is' , V2sec, 'm/s'
write(*,*) 'The required value of escape velocity for Ceres with', 'radius', R3, 'm','and mass', M3, 'kg', 'is' , V3sec, 'm/s'
write(*,*) 'The required value of escape velocity for moon with', 'radius', R4, 'm','and mass', M4, 'kg', 'is' , V4sec, 'm/s'
end program ex
