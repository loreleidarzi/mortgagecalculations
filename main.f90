!P=principal
!I=APR
!L=loan length
!J=monthly interest
!N=number of months
!H=current interest
!C=principal for month
!Q=new principal


!monthly interest rate
J = (I / (12 * 100))

!total number of months
N = L * 12

!monthly payment
M = P * (J / (1 - (1 + J) ** (-N)))

do while (Q >=0)
    !calculate current monthly interest
    H = P * J
    !calculate principle for month
    C = M - H
    !calculate new principal
    Q = P - C
    !update principal
    P = Q
end do
