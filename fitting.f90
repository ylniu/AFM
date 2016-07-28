PROGRAM fitting
	INTEGER :: a(3) = (/1,2,3/), b(2, 3) = reshape([ 1, 2, 3, 4, 5, 6],[2,3])
	logical :: la(2), lb(2), lc(2)
	la=.true.
	lb=.false.
	la(1) = .false.
	lb(2) = .true.
	lc = la .and. lb
! 	write(*,*) lc(1)
! 	write(*,*) lc(2)
	WRITE(*,*) shape(SPREAD(A, 1, 2))            ! "1 1"
	WRITE(*,*) shape(SPREAD(A, 2, 4))            ! "1 1"
	WRITE(*,*) shape(SPREAD(A, 2, 2))            ! "1 1"
! 	WRITE(*,*) SPREAD(B, 1, 3)            ! "1 1 2 2"
! 	WRITE(*,*) SPREAD(B, 2, 3)            ! "1 1 2 2"
END PROGRAM
