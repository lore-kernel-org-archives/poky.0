Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6EFF44C811C1
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 12:27:28 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 07 Dec 2010 10:27:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,311,1288594800"; d="scan'208";a="358350514"
Received: from unknown (HELO [10.255.13.237]) ([10.255.13.237])
	by azsmga001.ch.intel.com with ESMTP; 07 Dec 2010 10:27:24 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
In-Reply-To: <AANLkTin2L8a1RQe8+nQfqekJxd8W342Xc0jpJLdieo+r@mail.gmail.com>
References: <1291705675.2848.61.camel@elmorro>
	<AANLkTin2L8a1RQe8+nQfqekJxd8W342Xc0jpJLdieo+r@mail.gmail.com>
Date: Tue, 07 Dec 2010 12:27:44 -0600
Message-ID: <1291746464.2848.107.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 00/00][KERNEL] crownbay-meta: kernel drivers
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 07 Dec 2010 18:27:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-12-07 at 07:56 -0800, Bruce Ashfield wrote:
> On Tue, Dec 7, 2010 at 2:07 AM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> > This patchset provides EMGD 1.5 graphics and EG20T PCH kernel drivers
> > for the crownbay-meta layer.
> >
> > 00/00 because the patches are too big to post on the list - look at
> > the git branch directly to see them.
> 
> Tom,
> 
> Do you have a link to a board description ? I did  a quick search
> and didn't find quite what I was looking for. I just wanted to check
> the config options against a feature spec and/or block diagram.
> 
> I haven't checked your meta layer patch set yet, so you may
> have that information there.
> 

Hi Bruce,

Here's a link to the Crown Bay Development Kit:

http://download.intel.com/design/intarch/manuals/324213.pdf

It has references to datasheets and such for E6xx and EG20T, etc.

Let me know if you need pointers to any more specific docs...

Thanks,

Tom

> Cheers,
> 
> Bruce
> 
> >
> > Pull URL: git://git.pokylinux.org/linux-2.6-windriver-contrib.git
> >  Branch: tzanussi/crownbay-standard
> >  Browse: http://git.pokylinux.org/cgit.cgi/linux-2.6-windriver-contrib/log/?h=tzanussi/crownbay-standard
> >
> > Thanks,
> >    Tom Zanussi <tom.zanussi@intel.com>
> >
> > Tom Zanussi (15):
> >  crownbay: emgd 1.5 'Gold' driver
> >  emgd: build fixups
> >  eg20t: Add official 2.6.33 pch_uart patch
> >  eg20t: Add official 2.6.33 pch_dma patch
> >  eg20t: Fix pch_dma compile error
> >  eg20t: Add official 2.6.33 pch_spi patch
> >  eg20t: Fix 2.6.34 pch_dma compile error
> >  eg20t: Add official 2.6.33 pch_phub patch
> >  eg20t: Add official 2.6.33 pch_gbe patch
> >  eg20t: Add official 2.6.33 pch_usbdev patch
> >  eg20t: Add official 2.6.33 pch_i2c patch
> >  eg20t: Add official 2.6.33 pch_gpio patch
> >  eg20t: Fix 2.6.34 pch_gpio patch reject
> >  eg20t: Add official 2.6.33 pch_ieee1588 patch
> >  eg20t: Add official 2.6.33 pch_can patch
> >
> >  Documentation/ioctl/ioctl-number.txt               |    2 +
> >  drivers/char/Kconfig                               |   18 +
> >  drivers/char/Makefile                              |    4 +
> >  drivers/char/pch_ieee1588/Makefile                 |    3 +
> >  drivers/char/pch_ieee1588/pch_1588.c               | 3882 +++++++++++++++++++
> >  drivers/char/pch_ieee1588/pch_1588.h               |  527 +++
> >  drivers/char/pch_phub/Makefile                     |    3 +
> >  drivers/char/pch_phub/pch_phub.c                   |  800 ++++
> >  drivers/char/pch_phub/pch_phub.h                   |   48 +
> >  drivers/dma/Kconfig                                |    9 +
> >  drivers/dma/Makefile                               |    1 +
> >  drivers/dma/pch_dma.c                              | 2519 ++++++++++++
> >  drivers/dma/pch_dma.h                              |  153 +
> >  drivers/gpio/Kconfig                               |    9 +
> >  drivers/gpio/Makefile                              |    3 +-
> >  drivers/gpio/Makefile.rej                          |    7 +
> >  drivers/gpio/pch_gpio.c                            |  901 +++++
> >  drivers/gpio/pch_gpio.h                            |  245 ++
> >  drivers/gpu/drm/Kconfig                            |    9 +
> >  drivers/gpu/drm/Makefile                           |    1 +
> >  drivers/gpu/drm/emgd/COPYING                       |  351 ++
> >  drivers/gpu/drm/emgd/Makefile                      |  271 ++
> >  drivers/gpu/drm/emgd/emgd/cfg/config.h             |  119 +
> >  drivers/gpu/drm/emgd/emgd/cfg/config_default.h     |  192 +
> >  drivers/gpu/drm/emgd/emgd/cfg/config_helper.c      |  234 ++
> >  drivers/gpu/drm/emgd/emgd/cfg/personality.h        |   44 +
> >  .../gpu/drm/emgd/emgd/core/init/cmn/igd_global.c   |   37 +
> >  .../gpu/drm/emgd/emgd/core/init/cmn/igd_gtt_init.c |  249 ++
> >  drivers/gpu/drm/emgd/emgd/core/init/cmn/igd_init.c |  876 +++++
> >  .../drm/emgd/emgd/core/init/cmn/init_dispatch.h    |   58 +
> >  drivers/gpu/drm/emgd/emgd/core/init/plb/init_plb.c |  453 +++
> >  .../drm/emgd/emgd/core/init/plb/micro_init_plb.c   |  620 +++
> >  drivers/gpu/drm/emgd/emgd/core/init/tnc/init_tnc.c |  547 +++
> >  .../drm/emgd/emgd/core/init/tnc/micro_init_tnc.c   |  877 +++++
> >  drivers/gpu/drm/emgd/emgd/display/dsp/cmn/dsp.c    | 2351 +++++++++++
> >  .../drm/emgd/emgd/display/dsp/cmn/dsp_dispatch.h   |   56 +
> >  .../gpu/drm/emgd/emgd/display/dsp/plb/dsp_plb.c    |  659 ++++
> >  .../gpu/drm/emgd/emgd/display/dsp/tnc/dsp_tnc.c    |  491 +++
> >  .../gpu/drm/emgd/emgd/display/mode/cmn/igd_mode.c  | 2198 +++++++++++
> >  drivers/gpu/drm/emgd/emgd/display/mode/cmn/match.c | 1319 +++++++
> >  drivers/gpu/drm/emgd/emgd/display/mode/cmn/match.h |   50 +
> >  .../drm/emgd/emgd/display/mode/cmn/micro_mode.c    | 1645 ++++++++
> >  .../drm/emgd/emgd/display/mode/cmn/mode_dispatch.h |  328 ++
> >  .../gpu/drm/emgd/emgd/display/mode/cmn/vga_mode.c  | 1286 ++++++
> >  .../drm/emgd/emgd/display/mode/plb/clocks_plb.c    |  512 +++
> >  .../emgd/emgd/display/mode/plb/micro_mode_plb.c    | 1376 +++++++
> >  .../gpu/drm/emgd/emgd/display/mode/plb/mode_plb.c  | 1849 +++++++++
> >  .../drm/emgd/emgd/display/mode/tnc/clocks_tnc.c    |  591 +++
> >  .../emgd/emgd/display/mode/tnc/micro_mode_tnc.c    | 2301 +++++++++++
> >  .../gpu/drm/emgd/emgd/display/mode/tnc/mode_tnc.c  | 1908 +++++++++
> >  drivers/gpu/drm/emgd/emgd/display/pd/cmn/pd.c      |  517 +++
> >  .../gpu/drm/emgd/emgd/display/pi/cmn/displayid.c   | 1059 +++++
> >  drivers/gpu/drm/emgd/emgd/display/pi/cmn/edid.c    | 1186 ++++++
> >  .../drm/emgd/emgd/display/pi/cmn/i2c_dispatch.h    |   71 +
> >  drivers/gpu/drm/emgd/emgd/display/pi/cmn/igd_pi.c  |  261 ++
> >  .../gpu/drm/emgd/emgd/display/pi/cmn/mode_table.c  | 2549 ++++++++++++
> >  .../gpu/drm/emgd/emgd/display/pi/cmn/pd_init_all.c |  200 +
> >  drivers/gpu/drm/emgd/emgd/display/pi/cmn/pi.c      | 1795 +++++++++
> >  drivers/gpu/drm/emgd/emgd/display/pi/plb/i2c_plb.c |  941 +++++
> >  .../drm/emgd/emgd/display/pi/tnc/i2c_bitbash_tnc.c |  589 +++
> >  .../drm/emgd/emgd/display/pi/tnc/i2c_gmbus_tnc.c   |  926 +++++
> >  drivers/gpu/drm/emgd/emgd/drm/bitmap_data.h        |   26 +
> >  drivers/gpu/drm/emgd/emgd/drm/drm_emgd_private.h   |  139 +
> >  drivers/gpu/drm/emgd/emgd/drm/emgd_drv.c           | 1981 ++++++++++
> >  drivers/gpu/drm/emgd/emgd/drm/emgd_drv.h           |  175 +
> >  drivers/gpu/drm/emgd/emgd/drm/emgd_fb.c            |  626 +++
> >  drivers/gpu/drm/emgd/emgd/drm/emgd_interface.c     | 2230 +++++++++++
> >  drivers/gpu/drm/emgd/emgd/drm/emgd_mmap.c          |  179 +
> >  drivers/gpu/drm/emgd/emgd/drm/emgd_test_pvrsrv.c   | 1365 +++++++
> >  drivers/gpu/drm/emgd/emgd/drm/splash_screen.c      |  106 +
> >  drivers/gpu/drm/emgd/emgd/drm/splash_screen.h      |   54 +
> >  drivers/gpu/drm/emgd/emgd/drm/user_config.c        |  137 +
> >  drivers/gpu/drm/emgd/emgd/drm/user_config.h        |  106 +
> >  drivers/gpu/drm/emgd/emgd/gmm/gmm.c                |  806 ++++
> >  drivers/gpu/drm/emgd/emgd/gmm/gtt.c                |  362 ++
> >  drivers/gpu/drm/emgd/emgd/include/cmd.h            |   42 +
> >  drivers/gpu/drm/emgd/emgd/include/context.h        |  246 ++
> >  drivers/gpu/drm/emgd/emgd/include/debug.h          |  171 +
> >  drivers/gpu/drm/emgd/emgd/include/decode.h         |   71 +
> >  drivers/gpu/drm/emgd/emgd/include/dispatch.h       |   54 +
> >  drivers/gpu/drm/emgd/emgd/include/dispatch_utils.h |   73 +
> >  drivers/gpu/drm/emgd/emgd/include/displayid.h      |  645 ++++
> >  drivers/gpu/drm/emgd/emgd/include/dsp.h            |   47 +
> >  drivers/gpu/drm/emgd/emgd/include/edid.h           |  131 +
> >  drivers/gpu/drm/emgd/emgd/include/general.h        |   85 +
> >  drivers/gpu/drm/emgd/emgd/include/instr_common.h   |   49 +
> >  drivers/gpu/drm/emgd/emgd/include/intelpci.h       |   91 +
> >  drivers/gpu/drm/emgd/emgd/include/math_fix.h       |   54 +
> >  drivers/gpu/drm/emgd/emgd/include/memlist.h        |  145 +
> >  drivers/gpu/drm/emgd/emgd/include/memory.h         |  416 ++
> >  drivers/gpu/drm/emgd/emgd/include/mode.h           |  306 ++
> >  drivers/gpu/drm/emgd/emgd/include/mode_access.h    |   53 +
> >  drivers/gpu/drm/emgd/emgd/include/module_init.h    |  104 +
> >  drivers/gpu/drm/emgd/emgd/include/msvdx.h          |  234 ++
> >  drivers/gpu/drm/emgd/emgd/include/pci.h            |  252 ++
> >  drivers/gpu/drm/emgd/emgd/include/pd.h             |  766 ++++
> >  drivers/gpu/drm/emgd/emgd/include/pd_init.h        |  192 +
> >  drivers/gpu/drm/emgd/emgd/include/pi.h             |   86 +
> >  drivers/gpu/drm/emgd/emgd/include/plb/appcontext.h |   62 +
> >  drivers/gpu/drm/emgd/emgd/include/plb/cmd.h        |  499 +++
> >  drivers/gpu/drm/emgd/emgd/include/plb/context.h    |  190 +
> >  drivers/gpu/drm/emgd/emgd/include/plb/instr.h      |  225 ++
> >  drivers/gpu/drm/emgd/emgd/include/plb/mi.h         |   72 +
> >  drivers/gpu/drm/emgd/emgd/include/plb/regs.h       |  727 ++++
> >  drivers/gpu/drm/emgd/emgd/include/plb/sgx.h        |  212 +
> >  drivers/gpu/drm/emgd/emgd/include/plb/state3d.h    |  393 ++
> >  .../gpu/drm/emgd/emgd/include/plb/state3d_plb.h    | 1294 +++++++
> >  drivers/gpu/drm/emgd/emgd/include/psb_regs.h       |  659 ++++
> >  drivers/gpu/drm/emgd/emgd/include/rb.h             |  187 +
> >  drivers/gpu/drm/emgd/emgd/include/reset.h          |   38 +
> >  drivers/gpu/drm/emgd/emgd/include/sched.h          |  196 +
> >  drivers/gpu/drm/emgd/emgd/include/state2d.h        |   64 +
> >  drivers/gpu/drm/emgd/emgd/include/tnc/appcontext.h |   35 +
> >  drivers/gpu/drm/emgd/emgd/include/tnc/cmd.h        |   34 +
> >  drivers/gpu/drm/emgd/emgd/include/tnc/context.h    |   32 +
> >  drivers/gpu/drm/emgd/emgd/include/tnc/igd_tnc_wa.h |   93 +
> >  drivers/gpu/drm/emgd/emgd/include/tnc/instr.h      |   41 +
> >  drivers/gpu/drm/emgd/emgd/include/tnc/mi.h         |   36 +
> >  drivers/gpu/drm/emgd/emgd/include/tnc/regs.h       |  868 +++++
> >  drivers/gpu/drm/emgd/emgd/include/tnc/sgx.h        |   31 +
> >  drivers/gpu/drm/emgd/emgd/include/tnc/state3d.h    |   38 +
> >  .../gpu/drm/emgd/emgd/include/tnc/state3d_plb.h    |   33 +
> >  drivers/gpu/drm/emgd/emgd/include/topaz.h          |  205 +
> >  drivers/gpu/drm/emgd/emgd/include/utils.h          |  169 +
> >  drivers/gpu/drm/emgd/emgd/include/vga.h            |  102 +
> >  drivers/gpu/drm/emgd/emgd/oal/src/math_fix.c       |  133 +
> >  drivers/gpu/drm/emgd/emgd/oal/src/memmap.c         |   50 +
> >  drivers/gpu/drm/emgd/emgd/oal/src/pci.c            |  272 ++
> >  drivers/gpu/drm/emgd/emgd/pal/Makefile.include     |   49 +
> >  drivers/gpu/drm/emgd/emgd/pal/lpd/lpd.c            |  109 +
> >  drivers/gpu/drm/emgd/emgd/pal/lpd/pd_print.h       |   66 +
> >  drivers/gpu/drm/emgd/emgd/pal/lvds/lvds.c          | 1546 ++++++++
> >  drivers/gpu/drm/emgd/emgd/pal/lvds/lvds.h          |  165 +
> >  drivers/gpu/drm/emgd/emgd/pal/sdvo/sdvo.def        |    5 +
> >  drivers/gpu/drm/emgd/emgd/pal/sdvo/sdvo_attr.c     | 1458 +++++++
> >  drivers/gpu/drm/emgd/emgd/pal/sdvo/sdvo_attr.h     |  136 +
> >  drivers/gpu/drm/emgd/emgd/pal/sdvo/sdvo_hdmi.c     |  519 +++
> >  drivers/gpu/drm/emgd/emgd/pal/sdvo/sdvo_hdmi.h     |  177 +
> >  drivers/gpu/drm/emgd/emgd/pal/sdvo/sdvo_intf.c     |  696 ++++
> >  drivers/gpu/drm/emgd/emgd/pal/sdvo/sdvo_intf.h     |  481 +++
> >  drivers/gpu/drm/emgd/emgd/pal/sdvo/sdvo_port.c     | 3536 +++++++++++++++++
> >  drivers/gpu/drm/emgd/emgd/pal/sdvo/sdvo_port.h     |   62 +
> >  .../state/appcontext/cmn/appcontext_dispatch.h     |   51 +
> >  .../emgd/state/appcontext/cmn/igd_appcontext.c     |  149 +
> >  .../emgd/state/appcontext/plb/appcontext_plb.c     |  209 +
> >  .../gpu/drm/emgd/emgd/state/power/cmn/igd_pwr.c    |  290 ++
> >  .../drm/emgd/emgd/state/power/cmn/pwr_dispatch.h   |   52 +
> >  .../gpu/drm/emgd/emgd/state/power/plb/pwr_plb.c    |  124 +
> >  drivers/gpu/drm/emgd/emgd/state/reg/cmn/reg.c      |  346 ++
> >  .../gpu/drm/emgd/emgd/state/reg/cmn/reg_dispatch.h |   65 +
> >  drivers/gpu/drm/emgd/emgd/state/reg/plb/reg_plb.c  | 1034 +++++
> >  drivers/gpu/drm/emgd/emgd/state/reg/tnc/reg_tnc.c  | 1112 ++++++
> >  drivers/gpu/drm/emgd/emgd/utils/math_fix.c         |  133 +
> >  drivers/gpu/drm/emgd/emgd/utils/memmap.c           |   50 +
> >  drivers/gpu/drm/emgd/emgd/utils/pci.c              |  272 ++
> >  drivers/gpu/drm/emgd/emgd/video/msvdx/msvdx.c      |  841 ++++
> >  drivers/gpu/drm/emgd/emgd/video/msvdx/msvdx_init.c |  742 ++++
> >  drivers/gpu/drm/emgd/emgd/video/msvdx/msvdx_pvr.c  |  310 ++
> >  drivers/gpu/drm/emgd/emgd/video/msvdx/msvdx_pvr.h  |   54 +
> >  .../gpu/drm/emgd/emgd/video/overlay/cmn/igd_ovl.c  |  452 +++
> >  .../drm/emgd/emgd/video/overlay/cmn/micro_ovl.c    |  160 +
> >  .../drm/emgd/emgd/video/overlay/cmn/ovl_coeff.c    | 1122 ++++++
> >  .../drm/emgd/emgd/video/overlay/cmn/ovl_coeff.h    |   40 +
> >  .../drm/emgd/emgd/video/overlay/cmn/ovl_dispatch.h |   52 +
> >  .../gpu/drm/emgd/emgd/video/overlay/cmn/ovl_virt.h |   85 +
> >  .../emgd/emgd/video/overlay/plb/micro_ovl_plb.c    | 1706 ++++++++
> >  .../gpu/drm/emgd/emgd/video/overlay/plb/ovl2_plb.c |  536 +++
> >  .../gpu/drm/emgd/emgd/video/overlay/plb/ovl2_plb.h |   50 +
> >  .../emgd/emgd/video/overlay/plb/ovl2_regs_plb.h    |   70 +
> >  .../gpu/drm/emgd/emgd/video/overlay/plb/ovl_plb.c  | 2165 +++++++++++
> >  .../emgd/emgd/video/overlay/plb/ovl_plb_cache.c    |  315 ++
> >  .../emgd/emgd/video/overlay/plb/ovl_plb_cache.h    |  155 +
> >  .../drm/emgd/emgd/video/overlay/plb/ovl_regs_plb.h |  180 +
> >  .../emgd/emgd/video/overlay/tnc/micro_ovl_tnc.c    | 1708 ++++++++
> >  .../emgd/emgd/video/overlay/tnc/ovl2_regs_tnc.h    |   70 +
> >  .../gpu/drm/emgd/emgd/video/overlay/tnc/ovl2_tnc.c |  462 +++
> >  .../gpu/drm/emgd/emgd/video/overlay/tnc/ovl2_tnc.h |   50 +
> >  .../drm/emgd/emgd/video/overlay/tnc/ovl_regs_tnc.h |  185 +
> >  .../gpu/drm/emgd/emgd/video/overlay/tnc/ovl_tnc.c  | 2106 ++++++++++
> >  .../emgd/emgd/video/overlay/tnc/ovl_tnc_cache.c    |  241 ++
> >  .../emgd/emgd/video/overlay/tnc/ovl_tnc_cache.h    |  157 +
> >  drivers/gpu/drm/emgd/emgd/video/topaz/topaz.c      |  314 ++
> >  drivers/gpu/drm/emgd/emgd/video/topaz/topaz_hdr.h  |  123 +
> >  drivers/gpu/drm/emgd/emgd/video/topaz/topaz_init.c | 1093 ++++++
> >  drivers/gpu/drm/emgd/include/emgd_drm.h            |  760 ++++
> >  drivers/gpu/drm/emgd/include/emgd_shared.h         |   93 +
> >  drivers/gpu/drm/emgd/include/gart.h                |   33 +
> >  drivers/gpu/drm/emgd/include/igd.h                 | 1469 +++++++
> >  drivers/gpu/drm/emgd/include/igd_2d.h              |  375 ++
> >  drivers/gpu/drm/emgd/include/igd_appcontext.h      |   74 +
> >  drivers/gpu/drm/emgd/include/igd_blend.h           |   75 +
> >  drivers/gpu/drm/emgd/include/igd_debug.h           |   66 +
> >  drivers/gpu/drm/emgd/include/igd_errno.h           |   48 +
> >  drivers/gpu/drm/emgd/include/igd_gart.h            |   72 +
> >  drivers/gpu/drm/emgd/include/igd_gmm.h             |  374 ++
> >  drivers/gpu/drm/emgd/include/igd_init.h            |  834 ++++
> >  drivers/gpu/drm/emgd/include/igd_interrupt.h       |  295 ++
> >  drivers/gpu/drm/emgd/include/igd_mode.h            |  896 +++++
> >  drivers/gpu/drm/emgd/include/igd_ovl.h             |  305 ++
> >  drivers/gpu/drm/emgd/include/igd_pd.h              |  497 +++
> >  drivers/gpu/drm/emgd/include/igd_pi.h              |  132 +
> >  drivers/gpu/drm/emgd/include/igd_pwr.h             |   60 +
> >  drivers/gpu/drm/emgd/include/igd_rb.h              |   94 +
> >  drivers/gpu/drm/emgd/include/igd_render.h          |  508 +++
> >  drivers/gpu/drm/emgd/include/igd_reset.h           |   50 +
> >  drivers/gpu/drm/emgd/include/igd_version.h         |   36 +
> >  drivers/gpu/drm/emgd/include/igd_vga.h             |   60 +
> >  drivers/gpu/drm/emgd/include/io.h                  |  417 ++
> >  drivers/gpu/drm/emgd/include/memmap.h              |   99 +
> >  drivers/gpu/drm/emgd/pvr/include4/dbgdrvif.h       |  267 ++
> >  drivers/gpu/drm/emgd/pvr/include4/img_defs.h       |  108 +
> >  drivers/gpu/drm/emgd/pvr/include4/img_types.h      |  128 +
> >  drivers/gpu/drm/emgd/pvr/include4/ioctldef.h       |   98 +
> >  drivers/gpu/drm/emgd/pvr/include4/pdumpdefs.h      |   99 +
> >  drivers/gpu/drm/emgd/pvr/include4/pvr_debug.h      |  127 +
> >  drivers/gpu/drm/emgd/pvr/include4/pvrmodule.h      |   31 +
> >  drivers/gpu/drm/emgd/pvr/include4/pvrversion.h     |   38 +
> >  drivers/gpu/drm/emgd/pvr/include4/regpaths.h       |   43 +
> >  drivers/gpu/drm/emgd/pvr/include4/services.h       |  870 +++++
> >  drivers/gpu/drm/emgd/pvr/include4/servicesext.h    |  648 ++++
> >  drivers/gpu/drm/emgd/pvr/include4/sgx_options.h    |  224 ++
> >  drivers/gpu/drm/emgd/pvr/include4/sgxapi_km.h      |  327 ++
> >  drivers/gpu/drm/emgd/pvr/include4/sgxscript.h      |   81 +
> >  .../services4/3rdparty/emgd_displayclass/emgd_dc.c | 2680 +++++++++++++
> >  .../services4/3rdparty/emgd_displayclass/emgd_dc.h |  335 ++
> >  .../3rdparty/emgd_displayclass/emgd_dc_linux.c     |  148 +
> >  .../services4/include/env/linux/pvr_drm_shared.h   |   63 +
> >  .../drm/emgd/pvr/services4/include/kernelbuffer.h  |   60 +
> >  .../drm/emgd/pvr/services4/include/kerneldisplay.h |  156 +
> >  .../drm/emgd/pvr/services4/include/pvr_bridge.h    | 1383 +++++++
> >  .../drm/emgd/pvr/services4/include/pvr_bridge_km.h |  288 ++
> >  .../gpu/drm/emgd/pvr/services4/include/pvrmmap.h   |   36 +
> >  .../drm/emgd/pvr/services4/include/pvrsrv_errors.h |  193 +
> >  .../drm/emgd/pvr/services4/include/servicesint.h   |  276 ++
> >  .../drm/emgd/pvr/services4/include/sgx_bridge.h    |  477 +++
> >  .../drm/emgd/pvr/services4/include/sgx_mkif_km.h   |  334 ++
> >  .../gpu/drm/emgd/pvr/services4/include/sgxinfo.h   |  288 ++
> >  .../services4/srvkm/bridged/bridged_pvr_bridge.c   | 3413 ++++++++++++++++
> >  .../services4/srvkm/bridged/bridged_pvr_bridge.h   |  231 ++
> >  .../pvr/services4/srvkm/bridged/bridged_support.c  |   85 +
> >  .../pvr/services4/srvkm/bridged/bridged_support.h  |   43 +
> >  .../srvkm/bridged/sgx/bridged_sgx_bridge.c         | 2514 ++++++++++++
> >  .../srvkm/bridged/sgx/bridged_sgx_bridge.h         |   42 +
> >  .../pvr/services4/srvkm/common/buffer_manager.c    | 2073 ++++++++++
> >  .../emgd/pvr/services4/srvkm/common/deviceclass.c  | 2003 ++++++++++
> >  .../emgd/pvr/services4/srvkm/common/devicemem.c    | 1456 +++++++
> >  .../drm/emgd/pvr/services4/srvkm/common/handle.c   | 1549 ++++++++
> >  .../gpu/drm/emgd/pvr/services4/srvkm/common/hash.c |  463 +++
> >  .../drm/emgd/pvr/services4/srvkm/common/lists.c    |   99 +
> >  .../gpu/drm/emgd/pvr/services4/srvkm/common/mem.c  |  151 +
> >  .../emgd/pvr/services4/srvkm/common/mem_debug.c    |  250 ++
> >  .../drm/emgd/pvr/services4/srvkm/common/metrics.c  |  160 +
> >  .../emgd/pvr/services4/srvkm/common/pdump_common.c | 1727 +++++++++
> >  .../drm/emgd/pvr/services4/srvkm/common/perproc.c  |  283 ++
> >  .../drm/emgd/pvr/services4/srvkm/common/power.c    |  747 ++++
> >  .../drm/emgd/pvr/services4/srvkm/common/pvrsrv.c   | 1198 ++++++
> >  .../drm/emgd/pvr/services4/srvkm/common/queue.c    | 1165 ++++++
> >  .../gpu/drm/emgd/pvr/services4/srvkm/common/ra.c   | 1871 +++++++++
> >  .../drm/emgd/pvr/services4/srvkm/common/resman.c   |  717 ++++
> >  .../drm/emgd/pvr/services4/srvkm/devices/sgx/mmu.c | 2776 +++++++++++++
> >  .../drm/emgd/pvr/services4/srvkm/devices/sgx/mmu.h |  139 +
> >  .../drm/emgd/pvr/services4/srvkm/devices/sgx/pb.c  |  458 +++
> >  .../services4/srvkm/devices/sgx/sgx_bridge_km.h    |  147 +
> >  .../pvr/services4/srvkm/devices/sgx/sgxconfig.h    |  165 +
> >  .../pvr/services4/srvkm/devices/sgx/sgxinfokm.h    |  352 ++
> >  .../emgd/pvr/services4/srvkm/devices/sgx/sgxinit.c | 2271 +++++++++++
> >  .../emgd/pvr/services4/srvkm/devices/sgx/sgxkick.c |  744 ++++
> >  .../pvr/services4/srvkm/devices/sgx/sgxpower.c     |  469 +++
> >  .../pvr/services4/srvkm/devices/sgx/sgxreset.c     |  489 +++
> >  .../pvr/services4/srvkm/devices/sgx/sgxtransfer.c  |  549 +++
> >  .../pvr/services4/srvkm/devices/sgx/sgxutils.c     |  994 +++++
> >  .../pvr/services4/srvkm/devices/sgx/sgxutils.h     |   99 +
> >  .../emgd/pvr/services4/srvkm/env/linux/env_data.h  |   66 +
> >  .../pvr/services4/srvkm/env/linux/env_perproc.h    |   56 +
> >  .../drm/emgd/pvr/services4/srvkm/env/linux/event.c |  273 ++
> >  .../drm/emgd/pvr/services4/srvkm/env/linux/event.h |   32 +
> >  .../pvr/services4/srvkm/env/linux/kbuild/Makefile  |  153 +
> >  .../emgd/pvr/services4/srvkm/env/linux/linkage.h   |   61 +
> >  .../drm/emgd/pvr/services4/srvkm/env/linux/lock.h  |   32 +
> >  .../drm/emgd/pvr/services4/srvkm/env/linux/mm.c    | 2385 ++++++++++++
> >  .../drm/emgd/pvr/services4/srvkm/env/linux/mm.h    |  331 ++
> >  .../drm/emgd/pvr/services4/srvkm/env/linux/mmap.c  | 1157 ++++++
> >  .../drm/emgd/pvr/services4/srvkm/env/linux/mmap.h  |  107 +
> >  .../emgd/pvr/services4/srvkm/env/linux/module.c    |  764 ++++
> >  .../drm/emgd/pvr/services4/srvkm/env/linux/mutex.c |  136 +
> >  .../drm/emgd/pvr/services4/srvkm/env/linux/mutex.h |   70 +
> >  .../emgd/pvr/services4/srvkm/env/linux/mutils.c    |  133 +
> >  .../emgd/pvr/services4/srvkm/env/linux/mutils.h    |  101 +
> >  .../emgd/pvr/services4/srvkm/env/linux/osfunc.c    | 2558 ++++++++++++
> >  .../emgd/pvr/services4/srvkm/env/linux/osperproc.c |  113 +
> >  .../drm/emgd/pvr/services4/srvkm/env/linux/pdump.c |  662 ++++
> >  .../pvr/services4/srvkm/env/linux/private_data.h   |   67 +
> >  .../drm/emgd/pvr/services4/srvkm/env/linux/proc.c  |  970 +++++
> >  .../drm/emgd/pvr/services4/srvkm/env/linux/proc.h  |  115 +
> >  .../pvr/services4/srvkm/env/linux/pvr_bridge_k.c   |  651 ++++
> >  .../emgd/pvr/services4/srvkm/env/linux/pvr_debug.c |  426 ++
> >  .../emgd/pvr/services4/srvkm/env/linux/pvr_drm.c   |  309 ++
> >  .../emgd/pvr/services4/srvkm/env/linux/pvr_drm.h   |   69 +
> >  .../emgd/pvr/services4/srvkm/hwdefs/sgx535defs.h   |  637 +++
> >  .../emgd/pvr/services4/srvkm/hwdefs/sgx540defs.h   |  590 +++
> >  .../emgd/pvr/services4/srvkm/hwdefs/sgx545defs.h   |  832 ++++
> >  .../drm/emgd/pvr/services4/srvkm/hwdefs/sgxdefs.h  |   82 +
> >  .../emgd/pvr/services4/srvkm/hwdefs/sgxerrata.h    |  307 ++
> >  .../pvr/services4/srvkm/hwdefs/sgxfeaturedefs.h    |  164 +
> >  .../drm/emgd/pvr/services4/srvkm/hwdefs/sgxmmu.h   |   79 +
> >  .../pvr/services4/srvkm/include/buffer_manager.h   |  218 ++
> >  .../drm/emgd/pvr/services4/srvkm/include/device.h  |  278 ++
> >  .../drm/emgd/pvr/services4/srvkm/include/handle.h  |  382 ++
> >  .../drm/emgd/pvr/services4/srvkm/include/hash.h    |   73 +
> >  .../drm/emgd/pvr/services4/srvkm/include/lists.h   |  176 +
> >  .../drm/emgd/pvr/services4/srvkm/include/metrics.h |  130 +
> >  .../drm/emgd/pvr/services4/srvkm/include/osfunc.h  |  487 +++
> >  .../emgd/pvr/services4/srvkm/include/osperproc.h   |   76 +
> >  .../emgd/pvr/services4/srvkm/include/pdump_km.h    |  452 +++
> >  .../pvr/services4/srvkm/include/pdump_osfunc.h     |  137 +
> >  .../drm/emgd/pvr/services4/srvkm/include/perproc.h |  110 +
> >  .../drm/emgd/pvr/services4/srvkm/include/power.h   |  120 +
> >  .../drm/emgd/pvr/services4/srvkm/include/queue.h   |  119 +
> >  .../gpu/drm/emgd/pvr/services4/srvkm/include/ra.h  |  155 +
> >  .../drm/emgd/pvr/services4/srvkm/include/resman.h  |  113 +
> >  .../pvr/services4/srvkm/include/services_headers.h |   49 +
> >  .../drm/emgd/pvr/services4/srvkm/include/srvkm.h   |   69 +
> >  .../emgd/pvr/services4/system/common/sysconfig.c   | 1612 ++++++++
> >  .../emgd/pvr/services4/system/common/sysutils.c    |   30 +
> >  .../emgd/pvr/services4/system/include/oemfuncs.h   |   72 +
> >  .../services4/system/include/sys_pvr_drm_shared.h  |   38 +
> >  .../emgd/pvr/services4/system/include/syscommon.h  |   31 +
> >  .../emgd/pvr/services4/system/include/sysconfig.h  |  330 ++
> >  .../emgd/pvr/services4/system/include/sysinfo.h    |   43 +
> >  .../emgd/pvr/services4/system/include/syslocal.h   |   84 +
> >  .../drm/emgd/pvr/services4/system/plb/sysconfig.c  |   50 +
> >  .../gpu/drm/emgd/pvr/services4/system/plb/sysplb.h |   37 +
> >  .../drm/emgd/pvr/services4/system/tnc/sysconfig.c  |   50 +
> >  .../gpu/drm/emgd/pvr/services4/system/tnc/systnc.h |   40 +
> >  .../emgd/pvr/tools/intern/debug/client/linuxsrv.h  |   48 +
> >  .../tools/intern/debug/dbgdriv/common/dbgdriv.c    | 2076 ++++++++++
> >  .../tools/intern/debug/dbgdriv/common/dbgdriv.h    |  116 +
> >  .../tools/intern/debug/dbgdriv/common/hostfunc.h   |   58 +
> >  .../pvr/tools/intern/debug/dbgdriv/common/hotkey.c |  135 +
> >  .../pvr/tools/intern/debug/dbgdriv/common/hotkey.h |   60 +
> >  .../pvr/tools/intern/debug/dbgdriv/common/ioctl.c  |  371 ++
> >  .../pvr/tools/intern/debug/dbgdriv/common/ioctl.h  |   87 +
> >  .../tools/intern/debug/dbgdriv/linux/hostfunc.c    |  302 ++
> >  .../intern/debug/dbgdriv/linux/kbuild/Makefile     |   35 +
> >  .../pvr/tools/intern/debug/dbgdriv/linux/main.c    |  298 ++
> >  .../debug/dbgdriv/linux/makefile.linux.common      |   40 +
> >  drivers/i2c/busses/Kconfig                         |    8 +
> >  drivers/i2c/busses/Makefile                        |    3 +
> >  drivers/i2c/busses/i2c-pch.c                       |  910 +++++
> >  drivers/i2c/busses/i2c-pch.h                       |  147 +
> >  drivers/i2c/i2c-dev.c                              |   21 +
> >  drivers/net/Kconfig                                |    5 +
> >  drivers/net/Makefile                               |    1 +
> >  drivers/net/can/Kconfig                            |    8 +
> >  drivers/net/can/Makefile                           |    1 +
> >  drivers/net/can/pch_can.c                          | 4077 ++++++++++++++++++++
> >  drivers/net/can/pch_can.h                          |  438 +++
> >  drivers/net/pch_gbe/Makefile                       |    6 +
> >  drivers/net/pch_gbe/pch_debug.h                    |   57 +
> >  drivers/net/pch_gbe/pch_gbe.h                      |  230 ++
> >  drivers/net/pch_gbe/pch_gbe_api.c                  |  575 +++
> >  drivers/net/pch_gbe/pch_gbe_api.h                  |  227 ++
> >  drivers/net/pch_gbe/pch_gbe_defines.h              |  345 ++
> >  drivers/net/pch_gbe/pch_gbe_ethtool.c              | 1197 ++++++
> >  drivers/net/pch_gbe/pch_gbe_hw.h                   |  249 ++
> >  drivers/net/pch_gbe/pch_gbe_mac.c                  |  519 +++
> >  drivers/net/pch_gbe/pch_gbe_mac.h                  |  119 +
> >  drivers/net/pch_gbe/pch_gbe_main.c                 | 2974 ++++++++++++++
> >  drivers/net/pch_gbe/pch_gbe_nvm.c                  |   49 +
> >  drivers/net/pch_gbe/pch_gbe_nvm.h                  |   37 +
> >  drivers/net/pch_gbe/pch_gbe_osdep.h                |   75 +
> >  drivers/net/pch_gbe/pch_gbe_param.c                |  594 +++
> >  drivers/net/pch_gbe/pch_gbe_pci_ids.h              |   37 +
> >  drivers/net/pch_gbe/pch_gbe_phy.c                  |  495 +++
> >  drivers/net/pch_gbe/pch_gbe_phy.h                  |  136 +
> >  drivers/net/pch_gbe/pch_gbe_plat.c                 |  168 +
> >  drivers/net/pch_gbe/pch_gbe_regs.h                 |  351 ++
> >  drivers/serial/8250.c                              |  796 ++++-
> >  drivers/serial/8250_pch.h                          |   58 +
> >  drivers/serial/8250_pci.c                          |  225 ++-
> >  drivers/serial/Kconfig                             |   15 +
> >  drivers/serial/Makefile                            |   10 +
> >  drivers/spi/Kconfig                                |   26 +
> >  drivers/spi/Makefile                               |    4 +
> >  drivers/spi/pch_spi.h                              |  177 +
> >  drivers/spi/pch_spi_main.c                         | 1824 +++++++++
> >  drivers/spi/pch_spi_platform_devices.c             |   56 +
> >  drivers/usb/gadget/Kconfig                         |   16 +
> >  drivers/usb/gadget/Makefile                        |    5 +
> >  drivers/usb/gadget/gadget_chips.h                  |   10 +
> >  drivers/usb/gadget/pch_udc.c                       | 3558 +++++++++++++++++
> >  drivers/usb/gadget/pch_udc.h                       |  515 +++
> >  392 files changed, 185552 insertions(+), 14 deletions(-)
> >  create mode 100644 drivers/char/pch_ieee1588/Makefile
> >  create mode 100644 drivers/char/pch_ieee1588/pch_1588.c
> >  create mode 100644 drivers/char/pch_ieee1588/pch_1588.h
> >  create mode 100644 drivers/char/pch_phub/Makefile
> >  create mode 100644 drivers/char/pch_phub/pch_phub.c
> >  create mode 100644 drivers/char/pch_phub/pch_phub.h
> >  create mode 100644 drivers/dma/pch_dma.c
> >  create mode 100644 drivers/dma/pch_dma.h
> >  create mode 100644 drivers/gpio/Makefile.rej
> >  create mode 100644 drivers/gpio/pch_gpio.c
> >  create mode 100644 drivers/gpio/pch_gpio.h
> >  create mode 100644 drivers/gpu/drm/emgd/COPYING
> >  create mode 100644 drivers/gpu/drm/emgd/Makefile
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/cfg/config.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/cfg/config_default.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/cfg/config_helper.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/cfg/personality.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/core/init/cmn/igd_global.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/core/init/cmn/igd_gtt_init.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/core/init/cmn/igd_init.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/core/init/cmn/init_dispatch.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/core/init/plb/init_plb.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/core/init/plb/micro_init_plb.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/core/init/tnc/init_tnc.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/core/init/tnc/micro_init_tnc.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/display/dsp/cmn/dsp.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/display/dsp/cmn/dsp_dispatch.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/display/dsp/plb/dsp_plb.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/display/dsp/tnc/dsp_tnc.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/display/mode/cmn/igd_mode.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/display/mode/cmn/match.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/display/mode/cmn/match.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/display/mode/cmn/micro_mode.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/display/mode/cmn/mode_dispatch.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/display/mode/cmn/vga_mode.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/display/mode/plb/clocks_plb.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/display/mode/plb/micro_mode_plb.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/display/mode/plb/mode_plb.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/display/mode/tnc/clocks_tnc.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/display/mode/tnc/micro_mode_tnc.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/display/mode/tnc/mode_tnc.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/display/pd/cmn/pd.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/display/pi/cmn/displayid.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/display/pi/cmn/edid.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/display/pi/cmn/i2c_dispatch.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/display/pi/cmn/igd_pi.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/display/pi/cmn/mode_table.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/display/pi/cmn/pd_init_all.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/display/pi/cmn/pi.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/display/pi/plb/i2c_plb.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/display/pi/tnc/i2c_bitbash_tnc.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/display/pi/tnc/i2c_gmbus_tnc.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/drm/bitmap_data.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/drm/drm_emgd_private.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/drm/emgd_drv.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/drm/emgd_drv.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/drm/emgd_fb.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/drm/emgd_interface.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/drm/emgd_mmap.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/drm/emgd_test_pvrsrv.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/drm/splash_screen.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/drm/splash_screen.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/drm/user_config.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/drm/user_config.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/gmm/gmm.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/gmm/gtt.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/cmd.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/context.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/debug.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/decode.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/dispatch.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/dispatch_utils.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/displayid.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/dsp.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/edid.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/general.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/instr_common.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/intelpci.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/math_fix.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/memlist.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/memory.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/mode.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/mode_access.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/module_init.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/msvdx.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/pci.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/pd.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/pd_init.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/pi.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/plb/appcontext.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/plb/cmd.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/plb/context.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/plb/instr.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/plb/mi.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/plb/regs.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/plb/sgx.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/plb/state3d.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/plb/state3d_plb.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/psb_regs.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/rb.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/reset.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/sched.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/state2d.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/tnc/appcontext.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/tnc/cmd.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/tnc/context.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/tnc/igd_tnc_wa.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/tnc/instr.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/tnc/mi.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/tnc/regs.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/tnc/sgx.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/tnc/state3d.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/tnc/state3d_plb.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/topaz.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/utils.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/include/vga.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/oal/src/math_fix.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/oal/src/memmap.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/oal/src/pci.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/pal/Makefile.include
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/pal/lpd/lpd.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/pal/lpd/pd_print.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/pal/lvds/lvds.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/pal/lvds/lvds.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/pal/sdvo/sdvo.def
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/pal/sdvo/sdvo_attr.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/pal/sdvo/sdvo_attr.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/pal/sdvo/sdvo_hdmi.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/pal/sdvo/sdvo_hdmi.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/pal/sdvo/sdvo_intf.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/pal/sdvo/sdvo_intf.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/pal/sdvo/sdvo_port.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/pal/sdvo/sdvo_port.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/state/appcontext/cmn/appcontext_dispatch.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/state/appcontext/cmn/igd_appcontext.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/state/appcontext/plb/appcontext_plb.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/state/power/cmn/igd_pwr.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/state/power/cmn/pwr_dispatch.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/state/power/plb/pwr_plb.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/state/reg/cmn/reg.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/state/reg/cmn/reg_dispatch.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/state/reg/plb/reg_plb.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/state/reg/tnc/reg_tnc.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/utils/math_fix.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/utils/memmap.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/utils/pci.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/video/msvdx/msvdx.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/video/msvdx/msvdx_init.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/video/msvdx/msvdx_pvr.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/video/msvdx/msvdx_pvr.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/cmn/igd_ovl.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/cmn/micro_ovl.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/cmn/ovl_coeff.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/cmn/ovl_coeff.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/cmn/ovl_dispatch.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/cmn/ovl_virt.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/plb/micro_ovl_plb.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/plb/ovl2_plb.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/plb/ovl2_plb.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/plb/ovl2_regs_plb.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/plb/ovl_plb.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/plb/ovl_plb_cache.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/plb/ovl_plb_cache.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/plb/ovl_regs_plb.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/tnc/micro_ovl_tnc.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/tnc/ovl2_regs_tnc.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/tnc/ovl2_tnc.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/tnc/ovl2_tnc.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/tnc/ovl_regs_tnc.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/tnc/ovl_tnc.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/tnc/ovl_tnc_cache.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/tnc/ovl_tnc_cache.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/video/topaz/topaz.c
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/video/topaz/topaz_hdr.h
> >  create mode 100644 drivers/gpu/drm/emgd/emgd/video/topaz/topaz_init.c
> >  create mode 100644 drivers/gpu/drm/emgd/include/emgd_drm.h
> >  create mode 100644 drivers/gpu/drm/emgd/include/emgd_shared.h
> >  create mode 100644 drivers/gpu/drm/emgd/include/gart.h
> >  create mode 100644 drivers/gpu/drm/emgd/include/igd.h
> >  create mode 100644 drivers/gpu/drm/emgd/include/igd_2d.h
> >  create mode 100644 drivers/gpu/drm/emgd/include/igd_appcontext.h
> >  create mode 100644 drivers/gpu/drm/emgd/include/igd_blend.h
> >  create mode 100644 drivers/gpu/drm/emgd/include/igd_debug.h
> >  create mode 100644 drivers/gpu/drm/emgd/include/igd_errno.h
> >  create mode 100644 drivers/gpu/drm/emgd/include/igd_gart.h
> >  create mode 100644 drivers/gpu/drm/emgd/include/igd_gmm.h
> >  create mode 100644 drivers/gpu/drm/emgd/include/igd_init.h
> >  create mode 100644 drivers/gpu/drm/emgd/include/igd_interrupt.h
> >  create mode 100644 drivers/gpu/drm/emgd/include/igd_mode.h
> >  create mode 100644 drivers/gpu/drm/emgd/include/igd_ovl.h
> >  create mode 100644 drivers/gpu/drm/emgd/include/igd_pd.h
> >  create mode 100644 drivers/gpu/drm/emgd/include/igd_pi.h
> >  create mode 100644 drivers/gpu/drm/emgd/include/igd_pwr.h
> >  create mode 100644 drivers/gpu/drm/emgd/include/igd_rb.h
> >  create mode 100644 drivers/gpu/drm/emgd/include/igd_render.h
> >  create mode 100644 drivers/gpu/drm/emgd/include/igd_reset.h
> >  create mode 100644 drivers/gpu/drm/emgd/include/igd_version.h
> >  create mode 100644 drivers/gpu/drm/emgd/include/igd_vga.h
> >  create mode 100644 drivers/gpu/drm/emgd/include/io.h
> >  create mode 100644 drivers/gpu/drm/emgd/include/memmap.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/include4/dbgdrvif.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/include4/img_defs.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/include4/img_types.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/include4/ioctldef.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/include4/pdumpdefs.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/include4/pvr_debug.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/include4/pvrmodule.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/include4/pvrversion.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/include4/regpaths.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/include4/services.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/include4/servicesext.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/include4/sgx_options.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/include4/sgxapi_km.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/include4/sgxscript.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/3rdparty/emgd_displayclass/emgd_dc.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/3rdparty/emgd_displayclass/emgd_dc.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/3rdparty/emgd_displayclass/emgd_dc_linux.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/include/env/linux/pvr_drm_shared.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/include/kernelbuffer.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/include/kerneldisplay.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/include/pvr_bridge.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/include/pvr_bridge_km.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/include/pvrmmap.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/include/pvrsrv_errors.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/include/servicesint.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/include/sgx_bridge.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/include/sgx_mkif_km.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/include/sgxinfo.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/bridged/bridged_pvr_bridge.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/bridged/bridged_pvr_bridge.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/bridged/bridged_support.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/bridged/bridged_support.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/bridged/sgx/bridged_sgx_bridge.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/bridged/sgx/bridged_sgx_bridge.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/common/buffer_manager.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/common/deviceclass.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/common/devicemem.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/common/handle.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/common/hash.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/common/lists.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/common/mem.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/common/mem_debug.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/common/metrics.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/common/pdump_common.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/common/perproc.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/common/power.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/common/pvrsrv.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/common/queue.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/common/ra.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/common/resman.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/devices/sgx/mmu.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/devices/sgx/mmu.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/devices/sgx/pb.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/devices/sgx/sgx_bridge_km.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/devices/sgx/sgxconfig.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/devices/sgx/sgxinfokm.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/devices/sgx/sgxinit.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/devices/sgx/sgxkick.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/devices/sgx/sgxpower.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/devices/sgx/sgxreset.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/devices/sgx/sgxtransfer.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/devices/sgx/sgxutils.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/devices/sgx/sgxutils.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/env_data.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/env_perproc.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/event.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/event.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/kbuild/Makefile
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/linkage.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/lock.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/mm.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/mm.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/mmap.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/mmap.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/module.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/mutex.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/mutex.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/mutils.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/mutils.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/osfunc.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/osperproc.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/pdump.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/private_data.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/proc.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/proc.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/pvr_bridge_k.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/pvr_debug.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/pvr_drm.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/pvr_drm.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/hwdefs/sgx535defs.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/hwdefs/sgx540defs.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/hwdefs/sgx545defs.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/hwdefs/sgxdefs.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/hwdefs/sgxerrata.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/hwdefs/sgxfeaturedefs.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/hwdefs/sgxmmu.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/include/buffer_manager.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/include/device.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/include/handle.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/include/hash.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/include/lists.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/include/metrics.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/include/osfunc.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/include/osperproc.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/include/pdump_km.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/include/pdump_osfunc.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/include/perproc.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/include/power.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/include/queue.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/include/ra.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/include/resman.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/include/services_headers.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/include/srvkm.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/system/common/sysconfig.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/system/common/sysutils.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/system/include/oemfuncs.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/system/include/sys_pvr_drm_shared.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/system/include/syscommon.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/system/include/sysconfig.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/system/include/sysinfo.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/system/include/syslocal.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/system/plb/sysconfig.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/system/plb/sysplb.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/system/tnc/sysconfig.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/services4/system/tnc/systnc.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/tools/intern/debug/client/linuxsrv.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/tools/intern/debug/dbgdriv/common/dbgdriv.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/tools/intern/debug/dbgdriv/common/dbgdriv.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/tools/intern/debug/dbgdriv/common/hostfunc.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/tools/intern/debug/dbgdriv/common/hotkey.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/tools/intern/debug/dbgdriv/common/hotkey.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/tools/intern/debug/dbgdriv/common/ioctl.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/tools/intern/debug/dbgdriv/common/ioctl.h
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/tools/intern/debug/dbgdriv/linux/hostfunc.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/tools/intern/debug/dbgdriv/linux/kbuild/Makefile
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/tools/intern/debug/dbgdriv/linux/main.c
> >  create mode 100644 drivers/gpu/drm/emgd/pvr/tools/intern/debug/dbgdriv/linux/makefile.linux.common
> >  create mode 100644 drivers/i2c/busses/i2c-pch.c
> >  create mode 100644 drivers/i2c/busses/i2c-pch.h
> >  create mode 100644 drivers/net/can/pch_can.c
> >  create mode 100644 drivers/net/can/pch_can.h
> >  create mode 100644 drivers/net/pch_gbe/Makefile
> >  create mode 100644 drivers/net/pch_gbe/pch_debug.h
> >  create mode 100644 drivers/net/pch_gbe/pch_gbe.h
> >  create mode 100644 drivers/net/pch_gbe/pch_gbe_api.c
> >  create mode 100644 drivers/net/pch_gbe/pch_gbe_api.h
> >  create mode 100644 drivers/net/pch_gbe/pch_gbe_defines.h
> >  create mode 100644 drivers/net/pch_gbe/pch_gbe_ethtool.c
> >  create mode 100644 drivers/net/pch_gbe/pch_gbe_hw.h
> >  create mode 100644 drivers/net/pch_gbe/pch_gbe_mac.c
> >  create mode 100644 drivers/net/pch_gbe/pch_gbe_mac.h
> >  create mode 100644 drivers/net/pch_gbe/pch_gbe_main.c
> >  create mode 100644 drivers/net/pch_gbe/pch_gbe_nvm.c
> >  create mode 100644 drivers/net/pch_gbe/pch_gbe_nvm.h
> >  create mode 100644 drivers/net/pch_gbe/pch_gbe_osdep.h
> >  create mode 100644 drivers/net/pch_gbe/pch_gbe_param.c
> >  create mode 100644 drivers/net/pch_gbe/pch_gbe_pci_ids.h
> >  create mode 100644 drivers/net/pch_gbe/pch_gbe_phy.c
> >  create mode 100644 drivers/net/pch_gbe/pch_gbe_phy.h
> >  create mode 100644 drivers/net/pch_gbe/pch_gbe_plat.c
> >  create mode 100644 drivers/net/pch_gbe/pch_gbe_regs.h
> >  create mode 100644 drivers/serial/8250_pch.h
> >  create mode 100644 drivers/spi/pch_spi.h
> >  create mode 100644 drivers/spi/pch_spi_main.c
> >  create mode 100644 drivers/spi/pch_spi_platform_devices.c
> >  create mode 100644 drivers/usb/gadget/pch_udc.c
> >  create mode 100644 drivers/usb/gadget/pch_udc.h
> >
> >
> >
> >
> 
> 
> 
> --
> "Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end"



