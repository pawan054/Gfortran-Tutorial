program ex6
      implicit none
      real:: r,p,e,theta,atheta,angle
      write(*,*) 'enter the value of p in  km'
      read(*,*) p
      write(*,*) 'enter the value of ecentricity'
      read(*,*) e
      write(*,*) 'enter the value of angle'
      read(*,*) angle
      atheta= 4.*atan(1.)
      theta= (atheta/180)*angle

      r= (p/(1-e*cos(theta)))
      write(*,*) 'the value of distance from the center of earth is', r, 'km'
      end program ex6
