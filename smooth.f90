subroutine smooth(n, x, y, itype, sigma)
    implicit none
    !---------------------------------------------------------------------------
    integer , parameter     :: DP=8
    integer , intent(in   ) :: n, itype
    real(DP), intent(inout) :: x(n)
    real(DP), intent(inout) :: y(n)
    real(DP), intent(in   ) :: sigma
    real(DP), allocatable   :: y1(:)
    !---------------------------------------------------------------------------
    integer                 :: i, j, ns, nt
    !---------------------------------------------------------------------------
    allocate(y1(n))
    !---------------------------------------------------------------------------
    !
    ns = int(sigma)
    nt = ns * 2 - 1
    !
    y1 = y
    if (itype==1) then
        do i=ns, n-ns+1
            do j=1, nt
                y1(i) = y1(i) + y(i+j-1) 
            end do 
        end do
    else if (itype==2) then
    !
    end if
    !---------------------------------------------------------------------------
    y = y1 / nt
    !---------------------------------------------------------------------------
    deallocate(y1)
    !---------------------------------------------------------------------------
    !
    return
end subroutine