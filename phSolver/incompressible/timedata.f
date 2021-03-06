      module timedata

      integer ntspts, freq, iterat, varcod
      integer iblkts
      real*8  tolpt
      logical exts

      integer,  allocatable :: statptts(:,:)
      real*8,  allocatable :: ptts(:,:)
      real*8,  allocatable :: parptts(:,:)
      real*8,  allocatable :: varts(:,:)

      integer,  allocatable :: iv_rank(:)
      integer,  allocatable :: ivarts(:)
      integer,  allocatable :: ivartsg(:)
      real*8,  allocatable :: vartssoln(:)
      real*8,  allocatable :: vartssolng(:)

      end module

      module pp_data

      integer numppnodes, ppfreq

      integer,  allocatable :: ppnodes(:,:)

      end module


c-----------------------------------------------------------------------
c allocate the arrays
c-----------------------------------------------------------------------


      subroutine sTD 

      use timedata
      include "common.h"

      allocate (statptts(ntspts,2))
      allocate (ptts(ntspts,nsd))
      allocate (parptts(ntspts,nsd))
      allocate (varts(ntspts,ndof))

      allocate (ivarts(ntspts*ndof))
      allocate (ivartsg(ntspts*ndof))
      allocate (iv_rank(ntspts))
      allocate (vartssoln(ntspts*ndof))
      allocate (vartssolng(ntspts*ndof))

      return
      end
c-----------------------------------------------------------------------
c delete the arrays
c-----------------------------------------------------------------------

      
      subroutine dTD 

      use timedata

      deallocate (ptts)
      deallocate (varts)
      deallocate (statptts)
      deallocate (parptts)

      deallocate (ivarts)
      deallocate (ivartsg)
      deallocate (iv_rank)
      deallocate (vartssoln)
      deallocate (vartssolng)

      return
      end
