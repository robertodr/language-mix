program main

  use iso_c_binding, only: c_int
  use f_integer

  interface c_integer
    subroutine c_integer(i, j, color) bind(C, name = "c_integer")
      use iso_c_binding, only: c_int
      implicit none
      integer(c_int), value :: i, j
      integer(c_int), value :: color
    end subroutine
  end interface

  integer(c_int) :: a, b
  integer(c_int) :: color

  a = 0
  b = 1
  color = red

  print *, 'Fortran code a=', a, ", b=", b, ", color=", color
  call c_integer(a, b, color)

end program
