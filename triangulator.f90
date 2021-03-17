module triangulator
        use iso_c_binding
        implicit none
        include 'xypair.f'
        contains
                function getslope(p1, p2)
                        implicit none
                        real :: getslope
                        type(xypair_t), value :: p1, p2
                        getslope=((p2%y-p1%y)/(p2%x-p1%x))
                end function getslope
                function c_getslope(p1x, p1y, p2x, p2y) bind(C)
                        implicit none
                        real(c_double) :: c_getslope
                        real(c_double), value :: p1x, p1y, p2x, p2y
                        type(xypair_t) p1, p2;
                        p1%x=p1x
                        p1%y=p1y
                        p2%x=p2x
                        p2%y=p2y
                        c_getslope=getslope(p1, p2)
                end function c_getslope
end module triangulator
