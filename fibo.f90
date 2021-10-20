module fibonacci
  implicit none
  
  interface fib
     module procedure fib
  end interface fib

  contains 
  
  recursive function fib (n)  result (fnum) 
    integer, intent(in)  :: n
    integer :: fnum
    if (n<2) then 
       fnum = n
    else
       fnum = fib(n-1) + fib(n-2)
    endif
  end function fib

end module fibonacci
