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
end module triangulator
