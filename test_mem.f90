module s_mod
implicit none
private
public :: sfunc

contains

function sfunc(n) result(s)
! The purpose of this stupid function is to test a large automatic array.
integer, intent(in) :: n
real :: s
real :: x(n, n)
x = 1.0
s = sum(x)
end function sfunc

end module s_mod

program test_mem
use :: s_mod, only:sfunc
implicit none
integer :: i
integer, parameter :: n = 31
do i = 1, n
    write (*, *) 2**i, sfunc(2**i)
end do
end program test_mem
