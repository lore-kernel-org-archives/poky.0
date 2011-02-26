Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 71FE64C80872
	for <poky@yoctoproject.org>; Fri, 25 Feb 2011 20:01:37 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwr19 with SMTP id 19so2075946iwr.35
	for <poky@yoctoproject.org>; Fri, 25 Feb 2011 18:01:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=NhLys8n9Kfw6MZnfj12uqi2UlqEb+hh+IV952IcfQW8=;
	b=Bz/nEqkukehIgGiawwUnRAIf9siBTF5Fkc2Izvmo0iw0TxdM/SWO3Rmi04VyhyTI6L
	Zc5A2a1C4/XI5fAk3RfLmF2QJBvx+BnP77VkNXJOQdlB73GXsCNl+bu2uO1FtUUZWGi2
	iKHGZwC102REb04dS7NUC6aOC4RGBw2zuxJ44=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=PREhOzwEkUqRKkc9qRIdYBURzbaXj51BoemdU9yg9GQTVQ4FrwHIBZ7WtpipVQhuRs
	knyhM7zdh/4IAnFvOE65jlGyNTQEFPo/E87Itv6NY042wnsKGhA2Jztb5c0SzDkFsq+d
	INB3QhYE4YMcoGe6ZWm2OqlYDT7U7ZpdqgXEI=
MIME-Version: 1.0
Received: by 10.231.37.76 with SMTP id w12mr3341939ibd.148.1298685696876; Fri,
	25 Feb 2011 18:01:36 -0800 (PST)
Received: by 10.231.160.79 with HTTP; Fri, 25 Feb 2011 18:01:36 -0800 (PST)
In-Reply-To: <b7da2f$qi40ao@fmsmga001.fm.intel.com>
References: <b7da2f$qi40ao@fmsmga001.fm.intel.com>
Date: Fri, 25 Feb 2011 21:01:36 -0500
Message-ID: <AANLkTimw3A0Gdc+=7aP_k7Gx-N-UztPwkozfC32OhWSU@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3][KERNEL 2.6.37] crownbay changes for 2.6.37
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
X-List-Received-Date: Sat, 26 Feb 2011 02:01:37 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Feb 25, 2011 at 7:36 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
>
> This patchset moves the necessary crownbay kernel code to 2.6.37
> and drops everything else that was upstreamed.
>
> Follow-on patches will re-add functionality that was temporarily
> removed from the EMGD driver.

I've got the changes staged, but I don't see any board configuration. Have
you been using the config from 2.6.34 ?

Bruce

>
> Pull URL: git://git.pokylinux.org/linux-yocto-2.6.37-contrib/tzanussi/cro=
wnbay-2.6.37
> =A0Branch: tzanussi/crownbay-2.6.37
> =A0Browse:
> http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=3Dtza=
nussi/crownbay-2.6.37
>
> Tom Zanussi (3):
> =A0crownbay: emgd 1.5 'Gold' driver
> =A0emgd: build fixups
> =A0emgd: changes needed for 2.6.37
>
> =A0drivers/gpu/drm/Kconfig =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0| =A0 =A09 +
> =A0drivers/gpu/drm/Makefile =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 | =A0 =A01 +
> =A0drivers/gpu/drm/emgd/COPYING =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 | =A0351 ++
> =A0drivers/gpu/drm/emgd/Makefile =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0| =A0271 ++
> =A0drivers/gpu/drm/emgd/emgd/cfg/config.h =A0 =A0 =A0 =A0 =A0 =A0 | =A011=
9 +
> =A0drivers/gpu/drm/emgd/emgd/cfg/config_default.h =A0 =A0 | =A0192 ++
> =A0drivers/gpu/drm/emgd/emgd/cfg/config_helper.c =A0 =A0 =A0| =A0234 ++
> =A0drivers/gpu/drm/emgd/emgd/cfg/personality.h =A0 =A0 =A0 =A0| =A0 44 +
> =A0.../gpu/drm/emgd/emgd/core/init/cmn/igd_global.c =A0 | =A0 37 +
> =A0.../gpu/drm/emgd/emgd/core/init/cmn/igd_gtt_init.c | =A0249 ++
> =A0drivers/gpu/drm/emgd/emgd/core/init/cmn/igd_init.c | =A0876 +++++
> =A0.../drm/emgd/emgd/core/init/cmn/init_dispatch.h =A0 =A0| =A0 58 +
> =A0drivers/gpu/drm/emgd/emgd/core/init/plb/init_plb.c | =A0453 +++
> =A0.../drm/emgd/emgd/core/init/plb/micro_init_plb.c =A0 | =A0620 ++++
> =A0drivers/gpu/drm/emgd/emgd/core/init/tnc/init_tnc.c | =A0547 +++
> =A0.../drm/emgd/emgd/core/init/tnc/micro_init_tnc.c =A0 | =A0877 +++++
> =A0drivers/gpu/drm/emgd/emgd/display/dsp/cmn/dsp.c =A0 =A0| 2351 ++++++++=
+++++
> =A0.../drm/emgd/emgd/display/dsp/cmn/dsp_dispatch.h =A0 | =A0 56 +
> =A0.../gpu/drm/emgd/emgd/display/dsp/plb/dsp_plb.c =A0 =A0| =A0659 ++++
> =A0.../gpu/drm/emgd/emgd/display/dsp/tnc/dsp_tnc.c =A0 =A0| =A0491 +++
> =A0.../gpu/drm/emgd/emgd/display/mode/cmn/igd_mode.c =A0| 2198 ++++++++++=
++
> =A0drivers/gpu/drm/emgd/emgd/display/mode/cmn/match.c | 1319 ++++++++
> =A0drivers/gpu/drm/emgd/emgd/display/mode/cmn/match.h | =A0 50 +
> =A0.../drm/emgd/emgd/display/mode/cmn/micro_mode.c =A0 =A0| 1645 ++++++++=
+
> =A0.../drm/emgd/emgd/display/mode/cmn/mode_dispatch.h | =A0328 ++
> =A0.../gpu/drm/emgd/emgd/display/mode/cmn/vga_mode.c =A0| 1286 +++++++
> =A0.../drm/emgd/emgd/display/mode/plb/clocks_plb.c =A0 =A0| =A0512 +++
> =A0.../emgd/emgd/display/mode/plb/micro_mode_plb.c =A0 =A0| 1376 ++++++++
> =A0.../gpu/drm/emgd/emgd/display/mode/plb/mode_plb.c =A0| 1849 ++++++++++
> =A0.../drm/emgd/emgd/display/mode/tnc/clocks_tnc.c =A0 =A0| =A0591 ++++
> =A0.../emgd/emgd/display/mode/tnc/micro_mode_tnc.c =A0 =A0| 2301 ++++++++=
+++++
> =A0.../gpu/drm/emgd/emgd/display/mode/tnc/mode_tnc.c =A0| 1908 ++++++++++=
+
> =A0drivers/gpu/drm/emgd/emgd/display/pd/cmn/pd.c =A0 =A0 =A0| =A0517 +++
> =A0.../gpu/drm/emgd/emgd/display/pi/cmn/displayid.c =A0 | 1059 ++++++
> =A0drivers/gpu/drm/emgd/emgd/display/pi/cmn/edid.c =A0 =A0| 1186 +++++++
> =A0.../drm/emgd/emgd/display/pi/cmn/i2c_dispatch.h =A0 =A0| =A0 71 +
> =A0drivers/gpu/drm/emgd/emgd/display/pi/cmn/igd_pi.c =A0| =A0261 ++
> =A0.../gpu/drm/emgd/emgd/display/pi/cmn/mode_table.c =A0| 2549 ++++++++++=
++++
> =A0.../gpu/drm/emgd/emgd/display/pi/cmn/pd_init_all.c | =A0200 ++
> =A0drivers/gpu/drm/emgd/emgd/display/pi/cmn/pi.c =A0 =A0 =A0| 1795 ++++++=
++++
> =A0drivers/gpu/drm/emgd/emgd/display/pi/plb/i2c_plb.c | =A0941 ++++++
> =A0.../drm/emgd/emgd/display/pi/tnc/i2c_bitbash_tnc.c | =A0589 ++++
> =A0.../drm/emgd/emgd/display/pi/tnc/i2c_gmbus_tnc.c =A0 | =A0926 +++++
> =A0drivers/gpu/drm/emgd/emgd/drm/bitmap_data.h =A0 =A0 =A0 =A0| =A0 26 +
> =A0drivers/gpu/drm/emgd/emgd/drm/drm_emgd_private.h =A0 | =A0139 +
> =A0drivers/gpu/drm/emgd/emgd/drm/emgd_drv.c =A0 =A0 =A0 =A0 =A0 | 1979 ++=
+++++++++
> =A0drivers/gpu/drm/emgd/emgd/drm/emgd_drv.h =A0 =A0 =A0 =A0 =A0 | =A0175 =
+
> =A0drivers/gpu/drm/emgd/emgd/drm/emgd_fb.c =A0 =A0 =A0 =A0 =A0 =A0| =A061=
8 ++++
> =A0drivers/gpu/drm/emgd/emgd/drm/emgd_interface.c =A0 =A0 | 2230 ++++++++=
++++
> =A0drivers/gpu/drm/emgd/emgd/drm/emgd_mmap.c =A0 =A0 =A0 =A0 =A0| =A0179 =
+
> =A0drivers/gpu/drm/emgd/emgd/drm/emgd_test_pvrsrv.c =A0 | 1365 ++++++++
> =A0drivers/gpu/drm/emgd/emgd/drm/splash_screen.c =A0 =A0 =A0| =A0106 +
> =A0drivers/gpu/drm/emgd/emgd/drm/splash_screen.h =A0 =A0 =A0| =A0 54 +
> =A0drivers/gpu/drm/emgd/emgd/drm/user_config.c =A0 =A0 =A0 =A0| =A0137 +
> =A0drivers/gpu/drm/emgd/emgd/drm/user_config.h =A0 =A0 =A0 =A0| =A0106 +
> =A0drivers/gpu/drm/emgd/emgd/gmm/gmm.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| =
=A0806 +++++
> =A0drivers/gpu/drm/emgd/emgd/gmm/gtt.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| =
=A0362 ++
> =A0drivers/gpu/drm/emgd/emgd/include/cmd.h =A0 =A0 =A0 =A0 =A0 =A0| =A0 4=
2 +
> =A0drivers/gpu/drm/emgd/emgd/include/context.h =A0 =A0 =A0 =A0| =A0246 ++
> =A0drivers/gpu/drm/emgd/emgd/include/debug.h =A0 =A0 =A0 =A0 =A0| =A0171 =
+
> =A0drivers/gpu/drm/emgd/emgd/include/decode.h =A0 =A0 =A0 =A0 | =A0 71 +
> =A0drivers/gpu/drm/emgd/emgd/include/dispatch.h =A0 =A0 =A0 | =A0 54 +
> =A0drivers/gpu/drm/emgd/emgd/include/dispatch_utils.h | =A0 73 +
> =A0drivers/gpu/drm/emgd/emgd/include/displayid.h =A0 =A0 =A0| =A0645 ++++
> =A0drivers/gpu/drm/emgd/emgd/include/dsp.h =A0 =A0 =A0 =A0 =A0 =A0| =A0 4=
7 +
> =A0drivers/gpu/drm/emgd/emgd/include/edid.h =A0 =A0 =A0 =A0 =A0 | =A0131 =
+
> =A0drivers/gpu/drm/emgd/emgd/include/general.h =A0 =A0 =A0 =A0| =A0 85 +
> =A0drivers/gpu/drm/emgd/emgd/include/instr_common.h =A0 | =A0 49 +
> =A0drivers/gpu/drm/emgd/emgd/include/intelpci.h =A0 =A0 =A0 | =A0 91 +
> =A0drivers/gpu/drm/emgd/emgd/include/math_fix.h =A0 =A0 =A0 | =A0 54 +
> =A0drivers/gpu/drm/emgd/emgd/include/memlist.h =A0 =A0 =A0 =A0| =A0145 +
> =A0drivers/gpu/drm/emgd/emgd/include/memory.h =A0 =A0 =A0 =A0 | =A0416 ++=
+
> =A0drivers/gpu/drm/emgd/emgd/include/mode.h =A0 =A0 =A0 =A0 =A0 | =A0306 =
++
> =A0drivers/gpu/drm/emgd/emgd/include/mode_access.h =A0 =A0| =A0 53 +
> =A0drivers/gpu/drm/emgd/emgd/include/module_init.h =A0 =A0| =A0104 +
> =A0drivers/gpu/drm/emgd/emgd/include/msvdx.h =A0 =A0 =A0 =A0 =A0| =A0234 =
++
> =A0drivers/gpu/drm/emgd/emgd/include/pci.h =A0 =A0 =A0 =A0 =A0 =A0| =A025=
2 ++
> =A0drivers/gpu/drm/emgd/emgd/include/pd.h =A0 =A0 =A0 =A0 =A0 =A0 | =A076=
6 +++++
> =A0drivers/gpu/drm/emgd/emgd/include/pd_init.h =A0 =A0 =A0 =A0| =A0192 ++
> =A0drivers/gpu/drm/emgd/emgd/include/pi.h =A0 =A0 =A0 =A0 =A0 =A0 | =A0 8=
6 +
> =A0drivers/gpu/drm/emgd/emgd/include/plb/appcontext.h | =A0 62 +
> =A0drivers/gpu/drm/emgd/emgd/include/plb/cmd.h =A0 =A0 =A0 =A0| =A0499 ++=
+
> =A0drivers/gpu/drm/emgd/emgd/include/plb/context.h =A0 =A0| =A0190 ++
> =A0drivers/gpu/drm/emgd/emgd/include/plb/instr.h =A0 =A0 =A0| =A0225 ++
> =A0drivers/gpu/drm/emgd/emgd/include/plb/mi.h =A0 =A0 =A0 =A0 | =A0 72 +
> =A0drivers/gpu/drm/emgd/emgd/include/plb/regs.h =A0 =A0 =A0 | =A0727 ++++
> =A0drivers/gpu/drm/emgd/emgd/include/plb/sgx.h =A0 =A0 =A0 =A0| =A0212 ++
> =A0drivers/gpu/drm/emgd/emgd/include/plb/state3d.h =A0 =A0| =A0393 +++
> =A0.../gpu/drm/emgd/emgd/include/plb/state3d_plb.h =A0 =A0| 1294 +++++++
> =A0drivers/gpu/drm/emgd/emgd/include/psb_regs.h =A0 =A0 =A0 | =A0659 ++++
> =A0drivers/gpu/drm/emgd/emgd/include/rb.h =A0 =A0 =A0 =A0 =A0 =A0 | =A018=
7 +
> =A0drivers/gpu/drm/emgd/emgd/include/reset.h =A0 =A0 =A0 =A0 =A0| =A0 38 =
+
> =A0drivers/gpu/drm/emgd/emgd/include/sched.h =A0 =A0 =A0 =A0 =A0| =A0196 =
++
> =A0drivers/gpu/drm/emgd/emgd/include/state2d.h =A0 =A0 =A0 =A0| =A0 64 +
> =A0drivers/gpu/drm/emgd/emgd/include/tnc/appcontext.h | =A0 35 +
> =A0drivers/gpu/drm/emgd/emgd/include/tnc/cmd.h =A0 =A0 =A0 =A0| =A0 34 +
> =A0drivers/gpu/drm/emgd/emgd/include/tnc/context.h =A0 =A0| =A0 32 +
> =A0drivers/gpu/drm/emgd/emgd/include/tnc/igd_tnc_wa.h | =A0 93 +
> =A0drivers/gpu/drm/emgd/emgd/include/tnc/instr.h =A0 =A0 =A0| =A0 41 +
> =A0drivers/gpu/drm/emgd/emgd/include/tnc/mi.h =A0 =A0 =A0 =A0 | =A0 36 +
> =A0drivers/gpu/drm/emgd/emgd/include/tnc/regs.h =A0 =A0 =A0 | =A0868 ++++=
+
> =A0drivers/gpu/drm/emgd/emgd/include/tnc/sgx.h =A0 =A0 =A0 =A0| =A0 31 +
> =A0drivers/gpu/drm/emgd/emgd/include/tnc/state3d.h =A0 =A0| =A0 38 +
> =A0.../gpu/drm/emgd/emgd/include/tnc/state3d_plb.h =A0 =A0| =A0 33 +
> =A0drivers/gpu/drm/emgd/emgd/include/topaz.h =A0 =A0 =A0 =A0 =A0| =A0205 =
++
> =A0drivers/gpu/drm/emgd/emgd/include/utils.h =A0 =A0 =A0 =A0 =A0| =A0169 =
+
> =A0drivers/gpu/drm/emgd/emgd/include/vga.h =A0 =A0 =A0 =A0 =A0 =A0| =A010=
2 +
> =A0drivers/gpu/drm/emgd/emgd/oal/src/math_fix.c =A0 =A0 =A0 | =A0133 +
> =A0drivers/gpu/drm/emgd/emgd/oal/src/memmap.c =A0 =A0 =A0 =A0 | =A0 50 +
> =A0drivers/gpu/drm/emgd/emgd/oal/src/pci.c =A0 =A0 =A0 =A0 =A0 =A0| =A027=
2 ++
> =A0drivers/gpu/drm/emgd/emgd/pal/Makefile.include =A0 =A0 | =A0 49 +
> =A0drivers/gpu/drm/emgd/emgd/pal/lpd/lpd.c =A0 =A0 =A0 =A0 =A0 =A0| =A010=
9 +
> =A0drivers/gpu/drm/emgd/emgd/pal/lpd/pd_print.h =A0 =A0 =A0 | =A0 66 +
> =A0drivers/gpu/drm/emgd/emgd/pal/lvds/lvds.c =A0 =A0 =A0 =A0 =A0| 1546 ++=
+++++++
> =A0drivers/gpu/drm/emgd/emgd/pal/lvds/lvds.h =A0 =A0 =A0 =A0 =A0| =A0165 =
+
> =A0drivers/gpu/drm/emgd/emgd/pal/sdvo/sdvo.def =A0 =A0 =A0 =A0| =A0 =A05 =
+
> =A0drivers/gpu/drm/emgd/emgd/pal/sdvo/sdvo_attr.c =A0 =A0 | 1458 ++++++++
> =A0drivers/gpu/drm/emgd/emgd/pal/sdvo/sdvo_attr.h =A0 =A0 | =A0136 +
> =A0drivers/gpu/drm/emgd/emgd/pal/sdvo/sdvo_hdmi.c =A0 =A0 | =A0519 +++
> =A0drivers/gpu/drm/emgd/emgd/pal/sdvo/sdvo_hdmi.h =A0 =A0 | =A0177 +
> =A0drivers/gpu/drm/emgd/emgd/pal/sdvo/sdvo_intf.c =A0 =A0 | =A0696 ++++
> =A0drivers/gpu/drm/emgd/emgd/pal/sdvo/sdvo_intf.h =A0 =A0 | =A0481 +++
> =A0drivers/gpu/drm/emgd/emgd/pal/sdvo/sdvo_port.c =A0 =A0 | 3536 ++++++++=
++++++++++++
> =A0drivers/gpu/drm/emgd/emgd/pal/sdvo/sdvo_port.h =A0 =A0 | =A0 62 +
> =A0.../state/appcontext/cmn/appcontext_dispatch.h =A0 =A0 | =A0 51 +
> =A0.../emgd/state/appcontext/cmn/igd_appcontext.c =A0 =A0 | =A0149 +
> =A0.../emgd/state/appcontext/plb/appcontext_plb.c =A0 =A0 | =A0209 ++
> =A0.../gpu/drm/emgd/emgd/state/power/cmn/igd_pwr.c =A0 =A0| =A0290 ++
> =A0.../drm/emgd/emgd/state/power/cmn/pwr_dispatch.h =A0 | =A0 52 +
> =A0.../gpu/drm/emgd/emgd/state/power/plb/pwr_plb.c =A0 =A0| =A0124 +
> =A0drivers/gpu/drm/emgd/emgd/state/reg/cmn/reg.c =A0 =A0 =A0| =A0346 ++
> =A0.../gpu/drm/emgd/emgd/state/reg/cmn/reg_dispatch.h | =A0 65 +
> =A0drivers/gpu/drm/emgd/emgd/state/reg/plb/reg_plb.c =A0| 1034 ++++++
> =A0drivers/gpu/drm/emgd/emgd/state/reg/tnc/reg_tnc.c =A0| 1112 ++++++
> =A0drivers/gpu/drm/emgd/emgd/utils/math_fix.c =A0 =A0 =A0 =A0 | =A0133 +
> =A0drivers/gpu/drm/emgd/emgd/utils/memmap.c =A0 =A0 =A0 =A0 =A0 | =A0 50 =
+
> =A0drivers/gpu/drm/emgd/emgd/utils/pci.c =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0=
272 ++
> =A0drivers/gpu/drm/emgd/emgd/video/msvdx/msvdx.c =A0 =A0 =A0| =A0841 ++++=
+
> =A0drivers/gpu/drm/emgd/emgd/video/msvdx/msvdx_init.c | =A0742 ++++
> =A0drivers/gpu/drm/emgd/emgd/video/msvdx/msvdx_pvr.c =A0| =A0310 ++
> =A0drivers/gpu/drm/emgd/emgd/video/msvdx/msvdx_pvr.h =A0| =A0 54 +
> =A0.../gpu/drm/emgd/emgd/video/overlay/cmn/igd_ovl.c =A0| =A0452 +++
> =A0.../drm/emgd/emgd/video/overlay/cmn/micro_ovl.c =A0 =A0| =A0160 +
> =A0.../drm/emgd/emgd/video/overlay/cmn/ovl_coeff.c =A0 =A0| 1122 +++++++
> =A0.../drm/emgd/emgd/video/overlay/cmn/ovl_coeff.h =A0 =A0| =A0 40 +
> =A0.../drm/emgd/emgd/video/overlay/cmn/ovl_dispatch.h | =A0 52 +
> =A0.../gpu/drm/emgd/emgd/video/overlay/cmn/ovl_virt.h | =A0 85 +
> =A0.../emgd/emgd/video/overlay/plb/micro_ovl_plb.c =A0 =A0| 1706 ++++++++=
++
> =A0.../gpu/drm/emgd/emgd/video/overlay/plb/ovl2_plb.c | =A0536 +++
> =A0.../gpu/drm/emgd/emgd/video/overlay/plb/ovl2_plb.h | =A0 50 +
> =A0.../emgd/emgd/video/overlay/plb/ovl2_regs_plb.h =A0 =A0| =A0 70 +
> =A0.../gpu/drm/emgd/emgd/video/overlay/plb/ovl_plb.c =A0| 2165 ++++++++++=
++
> =A0.../emgd/emgd/video/overlay/plb/ovl_plb_cache.c =A0 =A0| =A0315 ++
> =A0.../emgd/emgd/video/overlay/plb/ovl_plb_cache.h =A0 =A0| =A0155 +
> =A0.../drm/emgd/emgd/video/overlay/plb/ovl_regs_plb.h | =A0180 +
> =A0.../emgd/emgd/video/overlay/tnc/micro_ovl_tnc.c =A0 =A0| 1708 ++++++++=
++
> =A0.../emgd/emgd/video/overlay/tnc/ovl2_regs_tnc.h =A0 =A0| =A0 70 +
> =A0.../gpu/drm/emgd/emgd/video/overlay/tnc/ovl2_tnc.c | =A0462 +++
> =A0.../gpu/drm/emgd/emgd/video/overlay/tnc/ovl2_tnc.h | =A0 50 +
> =A0.../drm/emgd/emgd/video/overlay/tnc/ovl_regs_tnc.h | =A0185 +
> =A0.../gpu/drm/emgd/emgd/video/overlay/tnc/ovl_tnc.c =A0| 2106 ++++++++++=
++
> =A0.../emgd/emgd/video/overlay/tnc/ovl_tnc_cache.c =A0 =A0| =A0241 ++
> =A0.../emgd/emgd/video/overlay/tnc/ovl_tnc_cache.h =A0 =A0| =A0157 +
> =A0drivers/gpu/drm/emgd/emgd/video/topaz/topaz.c =A0 =A0 =A0| =A0314 ++
> =A0drivers/gpu/drm/emgd/emgd/video/topaz/topaz_hdr.h =A0| =A0123 +
> =A0drivers/gpu/drm/emgd/emgd/video/topaz/topaz_init.c | 1093 ++++++
> =A0drivers/gpu/drm/emgd/include/emgd_drm.h =A0 =A0 =A0 =A0 =A0 =A0| =A076=
0 +++++
> =A0drivers/gpu/drm/emgd/include/emgd_shared.h =A0 =A0 =A0 =A0 | =A0 93 +
> =A0drivers/gpu/drm/emgd/include/gart.h =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| =
=A0 33 +
> =A0drivers/gpu/drm/emgd/include/igd.h =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | 1=
469 ++++++++
> =A0drivers/gpu/drm/emgd/include/igd_2d.h =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0=
375 +++
> =A0drivers/gpu/drm/emgd/include/igd_appcontext.h =A0 =A0 =A0| =A0 74 +
> =A0drivers/gpu/drm/emgd/include/igd_blend.h =A0 =A0 =A0 =A0 =A0 | =A0 75 =
+
> =A0drivers/gpu/drm/emgd/include/igd_debug.h =A0 =A0 =A0 =A0 =A0 | =A0 66 =
+
> =A0drivers/gpu/drm/emgd/include/igd_errno.h =A0 =A0 =A0 =A0 =A0 | =A0 48 =
+
> =A0drivers/gpu/drm/emgd/include/igd_gart.h =A0 =A0 =A0 =A0 =A0 =A0| =A0 7=
2 +
> =A0drivers/gpu/drm/emgd/include/igd_gmm.h =A0 =A0 =A0 =A0 =A0 =A0 | =A037=
4 +++
> =A0drivers/gpu/drm/emgd/include/igd_init.h =A0 =A0 =A0 =A0 =A0 =A0| =A083=
4 +++++
> =A0drivers/gpu/drm/emgd/include/igd_interrupt.h =A0 =A0 =A0 | =A0295 ++
> =A0drivers/gpu/drm/emgd/include/igd_mode.h =A0 =A0 =A0 =A0 =A0 =A0| =A089=
6 +++++
> =A0drivers/gpu/drm/emgd/include/igd_ovl.h =A0 =A0 =A0 =A0 =A0 =A0 | =A030=
5 ++
> =A0drivers/gpu/drm/emgd/include/igd_pd.h =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0=
497 +++
> =A0drivers/gpu/drm/emgd/include/igd_pi.h =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0=
132 +
> =A0drivers/gpu/drm/emgd/include/igd_pwr.h =A0 =A0 =A0 =A0 =A0 =A0 | =A0 6=
0 +
> =A0drivers/gpu/drm/emgd/include/igd_rb.h =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0=
 94 +
> =A0drivers/gpu/drm/emgd/include/igd_render.h =A0 =A0 =A0 =A0 =A0| =A0508 =
+++
> =A0drivers/gpu/drm/emgd/include/igd_reset.h =A0 =A0 =A0 =A0 =A0 | =A0 50 =
+
> =A0drivers/gpu/drm/emgd/include/igd_version.h =A0 =A0 =A0 =A0 | =A0 36 +
> =A0drivers/gpu/drm/emgd/include/igd_vga.h =A0 =A0 =A0 =A0 =A0 =A0 | =A0 6=
0 +
> =A0drivers/gpu/drm/emgd/include/io.h =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0|=
 =A0417 +++
> =A0drivers/gpu/drm/emgd/include/memmap.h =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0=
 99 +
> =A0drivers/gpu/drm/emgd/pvr/include4/dbgdrvif.h =A0 =A0 =A0 | =A0267 ++
> =A0drivers/gpu/drm/emgd/pvr/include4/img_defs.h =A0 =A0 =A0 | =A0108 +
> =A0drivers/gpu/drm/emgd/pvr/include4/img_types.h =A0 =A0 =A0| =A0128 +
> =A0drivers/gpu/drm/emgd/pvr/include4/ioctldef.h =A0 =A0 =A0 | =A0 98 +
> =A0drivers/gpu/drm/emgd/pvr/include4/pdumpdefs.h =A0 =A0 =A0| =A0 99 +
> =A0drivers/gpu/drm/emgd/pvr/include4/pvr_debug.h =A0 =A0 =A0| =A0127 +
> =A0drivers/gpu/drm/emgd/pvr/include4/pvrmodule.h =A0 =A0 =A0| =A0 31 +
> =A0drivers/gpu/drm/emgd/pvr/include4/pvrversion.h =A0 =A0 | =A0 38 +
> =A0drivers/gpu/drm/emgd/pvr/include4/regpaths.h =A0 =A0 =A0 | =A0 43 +
> =A0drivers/gpu/drm/emgd/pvr/include4/services.h =A0 =A0 =A0 | =A0870 ++++=
+
> =A0drivers/gpu/drm/emgd/pvr/include4/servicesext.h =A0 =A0| =A0648 ++++
> =A0drivers/gpu/drm/emgd/pvr/include4/sgx_options.h =A0 =A0| =A0224 ++
> =A0drivers/gpu/drm/emgd/pvr/include4/sgxapi_km.h =A0 =A0 =A0| =A0327 ++
> =A0drivers/gpu/drm/emgd/pvr/include4/sgxscript.h =A0 =A0 =A0| =A0 81 +
> =A0.../services4/3rdparty/emgd_displayclass/emgd_dc.c | 2680 ++++++++++++=
+++
> =A0.../services4/3rdparty/emgd_displayclass/emgd_dc.h | =A0335 ++
> =A0.../3rdparty/emgd_displayclass/emgd_dc_linux.c =A0 =A0 | =A0148 +
> =A0.../services4/include/env/linux/pvr_drm_shared.h =A0 | =A0 63 +
> =A0.../drm/emgd/pvr/services4/include/kernelbuffer.h =A0| =A0 60 +
> =A0.../drm/emgd/pvr/services4/include/kerneldisplay.h | =A0156 +
> =A0.../drm/emgd/pvr/services4/include/pvr_bridge.h =A0 =A0| 1383 ++++++++
> =A0.../drm/emgd/pvr/services4/include/pvr_bridge_km.h | =A0288 ++
> =A0.../gpu/drm/emgd/pvr/services4/include/pvrmmap.h =A0 | =A0 36 +
> =A0.../drm/emgd/pvr/services4/include/pvrsrv_errors.h | =A0193 ++
> =A0.../drm/emgd/pvr/services4/include/servicesint.h =A0 | =A0276 ++
> =A0.../drm/emgd/pvr/services4/include/sgx_bridge.h =A0 =A0| =A0477 +++
> =A0.../drm/emgd/pvr/services4/include/sgx_mkif_km.h =A0 | =A0334 ++
> =A0.../gpu/drm/emgd/pvr/services4/include/sgxinfo.h =A0 | =A0288 ++
> =A0.../services4/srvkm/bridged/bridged_pvr_bridge.c =A0 | 3413 ++++++++++=
+++++++++
> =A0.../services4/srvkm/bridged/bridged_pvr_bridge.h =A0 | =A0231 ++
> =A0.../pvr/services4/srvkm/bridged/bridged_support.c =A0| =A0 85 +
> =A0.../pvr/services4/srvkm/bridged/bridged_support.h =A0| =A0 43 +
> =A0.../srvkm/bridged/sgx/bridged_sgx_bridge.c =A0 =A0 =A0 =A0 | 2514 ++++=
++++++++++
> =A0.../srvkm/bridged/sgx/bridged_sgx_bridge.h =A0 =A0 =A0 =A0 | =A0 42 +
> =A0.../pvr/services4/srvkm/common/buffer_manager.c =A0 =A0| 2073 ++++++++=
++++
> =A0.../emgd/pvr/services4/srvkm/common/deviceclass.c =A0| 2003 ++++++++++=
+
> =A0.../emgd/pvr/services4/srvkm/common/devicemem.c =A0 =A0| 1456 ++++++++
> =A0.../drm/emgd/pvr/services4/srvkm/common/handle.c =A0 | 1549 +++++++++
> =A0.../gpu/drm/emgd/pvr/services4/srvkm/common/hash.c | =A0463 +++
> =A0.../drm/emgd/pvr/services4/srvkm/common/lists.c =A0 =A0| =A0 99 +
> =A0.../gpu/drm/emgd/pvr/services4/srvkm/common/mem.c =A0| =A0151 +
> =A0.../emgd/pvr/services4/srvkm/common/mem_debug.c =A0 =A0| =A0250 ++
> =A0.../drm/emgd/pvr/services4/srvkm/common/metrics.c =A0| =A0160 +
> =A0.../emgd/pvr/services4/srvkm/common/pdump_common.c | 1727 ++++++++++
> =A0.../drm/emgd/pvr/services4/srvkm/common/perproc.c =A0| =A0283 ++
> =A0.../drm/emgd/pvr/services4/srvkm/common/power.c =A0 =A0| =A0747 +++++
> =A0.../drm/emgd/pvr/services4/srvkm/common/pvrsrv.c =A0 | 1198 +++++++
> =A0.../drm/emgd/pvr/services4/srvkm/common/queue.c =A0 =A0| 1165 +++++++
> =A0.../gpu/drm/emgd/pvr/services4/srvkm/common/ra.c =A0 | 1871 ++++++++++=
+
> =A0.../drm/emgd/pvr/services4/srvkm/common/resman.c =A0 | =A0717 ++++
> =A0.../drm/emgd/pvr/services4/srvkm/devices/sgx/mmu.c | 2776 ++++++++++++=
+++
> =A0.../drm/emgd/pvr/services4/srvkm/devices/sgx/mmu.h | =A0139 +
> =A0.../drm/emgd/pvr/services4/srvkm/devices/sgx/pb.c =A0| =A0458 +++
> =A0.../services4/srvkm/devices/sgx/sgx_bridge_km.h =A0 =A0| =A0147 +
> =A0.../pvr/services4/srvkm/devices/sgx/sgxconfig.h =A0 =A0| =A0165 +
> =A0.../pvr/services4/srvkm/devices/sgx/sgxinfokm.h =A0 =A0| =A0352 ++
> =A0.../emgd/pvr/services4/srvkm/devices/sgx/sgxinit.c | 2271 ++++++++++++=
+
> =A0.../emgd/pvr/services4/srvkm/devices/sgx/sgxkick.c | =A0744 ++++
> =A0.../pvr/services4/srvkm/devices/sgx/sgxpower.c =A0 =A0 | =A0469 +++
> =A0.../pvr/services4/srvkm/devices/sgx/sgxreset.c =A0 =A0 | =A0489 +++
> =A0.../pvr/services4/srvkm/devices/sgx/sgxtransfer.c =A0| =A0549 +++
> =A0.../pvr/services4/srvkm/devices/sgx/sgxutils.c =A0 =A0 | =A0994 ++++++
> =A0.../pvr/services4/srvkm/devices/sgx/sgxutils.h =A0 =A0 | =A0 99 +
> =A0.../emgd/pvr/services4/srvkm/env/linux/env_data.h =A0| =A0 66 +
> =A0.../pvr/services4/srvkm/env/linux/env_perproc.h =A0 =A0| =A0 56 +
> =A0.../drm/emgd/pvr/services4/srvkm/env/linux/event.c | =A0273 ++
> =A0.../drm/emgd/pvr/services4/srvkm/env/linux/event.h | =A0 32 +
> =A0.../pvr/services4/srvkm/env/linux/kbuild/Makefile =A0| =A0153 +
> =A0.../emgd/pvr/services4/srvkm/env/linux/linkage.h =A0 | =A0 61 +
> =A0.../drm/emgd/pvr/services4/srvkm/env/linux/lock.h =A0| =A0 32 +
> =A0.../drm/emgd/pvr/services4/srvkm/env/linux/mm.c =A0 =A0| 2385 ++++++++=
+++++
> =A0.../drm/emgd/pvr/services4/srvkm/env/linux/mm.h =A0 =A0| =A0331 ++
> =A0.../drm/emgd/pvr/services4/srvkm/env/linux/mmap.c =A0| 1157 +++++++
> =A0.../drm/emgd/pvr/services4/srvkm/env/linux/mmap.h =A0| =A0107 +
> =A0.../emgd/pvr/services4/srvkm/env/linux/module.c =A0 =A0| =A0764 +++++
> =A0.../drm/emgd/pvr/services4/srvkm/env/linux/mutex.c | =A0136 +
> =A0.../drm/emgd/pvr/services4/srvkm/env/linux/mutex.h | =A0 70 +
> =A0.../emgd/pvr/services4/srvkm/env/linux/mutils.c =A0 =A0| =A0133 +
> =A0.../emgd/pvr/services4/srvkm/env/linux/mutils.h =A0 =A0| =A0101 +
> =A0.../emgd/pvr/services4/srvkm/env/linux/osfunc.c =A0 =A0| 2558 ++++++++=
++++++
> =A0.../emgd/pvr/services4/srvkm/env/linux/osperproc.c | =A0113 +
> =A0.../drm/emgd/pvr/services4/srvkm/env/linux/pdump.c | =A0662 ++++
> =A0.../pvr/services4/srvkm/env/linux/private_data.h =A0 | =A0 67 +
> =A0.../drm/emgd/pvr/services4/srvkm/env/linux/proc.c =A0| =A0970 ++++++
> =A0.../drm/emgd/pvr/services4/srvkm/env/linux/proc.h =A0| =A0115 +
> =A0.../pvr/services4/srvkm/env/linux/pvr_bridge_k.c =A0 | =A0651 ++++
> =A0.../emgd/pvr/services4/srvkm/env/linux/pvr_debug.c | =A0426 +++
> =A0.../emgd/pvr/services4/srvkm/env/linux/pvr_drm.c =A0 | =A0309 ++
> =A0.../emgd/pvr/services4/srvkm/env/linux/pvr_drm.h =A0 | =A0 69 +
> =A0.../emgd/pvr/services4/srvkm/hwdefs/sgx535defs.h =A0 | =A0637 ++++
> =A0.../emgd/pvr/services4/srvkm/hwdefs/sgx540defs.h =A0 | =A0590 ++++
> =A0.../emgd/pvr/services4/srvkm/hwdefs/sgx545defs.h =A0 | =A0832 +++++
> =A0.../drm/emgd/pvr/services4/srvkm/hwdefs/sgxdefs.h =A0| =A0 82 +
> =A0.../emgd/pvr/services4/srvkm/hwdefs/sgxerrata.h =A0 =A0| =A0307 ++
> =A0.../pvr/services4/srvkm/hwdefs/sgxfeaturedefs.h =A0 =A0| =A0164 +
> =A0.../drm/emgd/pvr/services4/srvkm/hwdefs/sgxmmu.h =A0 | =A0 79 +
> =A0.../pvr/services4/srvkm/include/buffer_manager.h =A0 | =A0218 ++
> =A0.../drm/emgd/pvr/services4/srvkm/include/device.h =A0| =A0278 ++
> =A0.../drm/emgd/pvr/services4/srvkm/include/handle.h =A0| =A0382 +++
> =A0.../drm/emgd/pvr/services4/srvkm/include/hash.h =A0 =A0| =A0 73 +
> =A0.../drm/emgd/pvr/services4/srvkm/include/lists.h =A0 | =A0176 +
> =A0.../drm/emgd/pvr/services4/srvkm/include/metrics.h | =A0130 +
> =A0.../drm/emgd/pvr/services4/srvkm/include/osfunc.h =A0| =A0487 +++
> =A0.../emgd/pvr/services4/srvkm/include/osperproc.h =A0 | =A0 76 +
> =A0.../emgd/pvr/services4/srvkm/include/pdump_km.h =A0 =A0| =A0452 +++
> =A0.../pvr/services4/srvkm/include/pdump_osfunc.h =A0 =A0 | =A0137 +
> =A0.../drm/emgd/pvr/services4/srvkm/include/perproc.h | =A0110 +
> =A0.../drm/emgd/pvr/services4/srvkm/include/power.h =A0 | =A0120 +
> =A0.../drm/emgd/pvr/services4/srvkm/include/queue.h =A0 | =A0119 +
> =A0.../gpu/drm/emgd/pvr/services4/srvkm/include/ra.h =A0| =A0155 +
> =A0.../drm/emgd/pvr/services4/srvkm/include/resman.h =A0| =A0113 +
> =A0.../pvr/services4/srvkm/include/services_headers.h | =A0 49 +
> =A0.../drm/emgd/pvr/services4/srvkm/include/srvkm.h =A0 | =A0 69 +
> =A0.../emgd/pvr/services4/system/common/sysconfig.c =A0 | 1612 +++++++++
> =A0.../emgd/pvr/services4/system/common/sysutils.c =A0 =A0| =A0 30 +
> =A0.../emgd/pvr/services4/system/include/oemfuncs.h =A0 | =A0 72 +
> =A0.../services4/system/include/sys_pvr_drm_shared.h =A0| =A0 38 +
> =A0.../emgd/pvr/services4/system/include/syscommon.h =A0| =A0 31 +
> =A0.../emgd/pvr/services4/system/include/sysconfig.h =A0| =A0330 ++
> =A0.../emgd/pvr/services4/system/include/sysinfo.h =A0 =A0| =A0 43 +
> =A0.../emgd/pvr/services4/system/include/syslocal.h =A0 | =A0 84 +
> =A0.../drm/emgd/pvr/services4/system/plb/sysconfig.c =A0| =A0 50 +
> =A0.../gpu/drm/emgd/pvr/services4/system/plb/sysplb.h | =A0 37 +
> =A0.../drm/emgd/pvr/services4/system/tnc/sysconfig.c =A0| =A0 50 +
> =A0.../gpu/drm/emgd/pvr/services4/system/tnc/systnc.h | =A0 40 +
> =A0.../emgd/pvr/tools/intern/debug/client/linuxsrv.h =A0| =A0 48 +
> =A0.../tools/intern/debug/dbgdriv/common/dbgdriv.c =A0 =A0| 2076 ++++++++=
++++
> =A0.../tools/intern/debug/dbgdriv/common/dbgdriv.h =A0 =A0| =A0116 +
> =A0.../tools/intern/debug/dbgdriv/common/hostfunc.h =A0 | =A0 58 +
> =A0.../pvr/tools/intern/debug/dbgdriv/common/hotkey.c | =A0135 +
> =A0.../pvr/tools/intern/debug/dbgdriv/common/hotkey.h | =A0 60 +
> =A0.../pvr/tools/intern/debug/dbgdriv/common/ioctl.c =A0| =A0371 ++
> =A0.../pvr/tools/intern/debug/dbgdriv/common/ioctl.h =A0| =A0 87 +
> =A0.../tools/intern/debug/dbgdriv/linux/hostfunc.c =A0 =A0| =A0302 ++
> =A0.../intern/debug/dbgdriv/linux/kbuild/Makefile =A0 =A0 | =A0 35 +
> =A0.../pvr/tools/intern/debug/dbgdriv/linux/main.c =A0 =A0| =A0298 ++
> =A0.../debug/dbgdriv/linux/makefile.linux.common =A0 =A0 =A0| =A0 40 +
> =A0328 files changed, 155068 insertions(+), 0 deletions(-)
> =A0create mode 100644 drivers/gpu/drm/emgd/COPYING
> =A0create mode 100644 drivers/gpu/drm/emgd/Makefile
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/cfg/config.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/cfg/config_default.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/cfg/config_helper.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/cfg/personality.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/core/init/cmn/igd_global.=
c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/core/init/cmn/igd_gtt_ini=
t.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/core/init/cmn/igd_init.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/core/init/cmn/init_dispat=
ch.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/core/init/plb/init_plb.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/core/init/plb/micro_init_=
plb.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/core/init/tnc/init_tnc.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/core/init/tnc/micro_init_=
tnc.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/display/dsp/cmn/dsp.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/display/dsp/cmn/dsp_dispa=
tch.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/display/dsp/plb/dsp_plb.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/display/dsp/tnc/dsp_tnc.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/display/mode/cmn/igd_mode=
.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/display/mode/cmn/match.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/display/mode/cmn/match.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/display/mode/cmn/micro_mo=
de.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/display/mode/cmn/mode_dis=
patch.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/display/mode/cmn/vga_mode=
.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/display/mode/plb/clocks_p=
lb.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/display/mode/plb/micro_mo=
de_plb.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/display/mode/plb/mode_plb=
.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/display/mode/tnc/clocks_t=
nc.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/display/mode/tnc/micro_mo=
de_tnc.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/display/mode/tnc/mode_tnc=
.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/display/pd/cmn/pd.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/display/pi/cmn/displayid.=
c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/display/pi/cmn/edid.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/display/pi/cmn/i2c_dispat=
ch.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/display/pi/cmn/igd_pi.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/display/pi/cmn/mode_table=
.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/display/pi/cmn/pd_init_al=
l.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/display/pi/cmn/pi.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/display/pi/plb/i2c_plb.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/display/pi/tnc/i2c_bitbas=
h_tnc.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/display/pi/tnc/i2c_gmbus_=
tnc.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/drm/bitmap_data.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/drm/drm_emgd_private.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/drm/emgd_drv.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/drm/emgd_drv.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/drm/emgd_fb.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/drm/emgd_interface.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/drm/emgd_mmap.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/drm/emgd_test_pvrsrv.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/drm/splash_screen.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/drm/splash_screen.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/drm/user_config.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/drm/user_config.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/gmm/gmm.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/gmm/gtt.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/cmd.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/context.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/debug.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/decode.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/dispatch.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/dispatch_utils.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/displayid.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/dsp.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/edid.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/general.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/instr_common.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/intelpci.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/math_fix.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/memlist.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/memory.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/mode.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/mode_access.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/module_init.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/msvdx.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/pci.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/pd.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/pd_init.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/pi.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/plb/appcontext.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/plb/cmd.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/plb/context.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/plb/instr.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/plb/mi.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/plb/regs.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/plb/sgx.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/plb/state3d.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/plb/state3d_plb.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/psb_regs.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/rb.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/reset.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/sched.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/state2d.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/tnc/appcontext.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/tnc/cmd.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/tnc/context.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/tnc/igd_tnc_wa.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/tnc/instr.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/tnc/mi.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/tnc/regs.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/tnc/sgx.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/tnc/state3d.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/tnc/state3d_plb.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/topaz.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/utils.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/include/vga.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/oal/src/math_fix.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/oal/src/memmap.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/oal/src/pci.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/pal/Makefile.include
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/pal/lpd/lpd.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/pal/lpd/pd_print.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/pal/lvds/lvds.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/pal/lvds/lvds.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/pal/sdvo/sdvo.def
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/pal/sdvo/sdvo_attr.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/pal/sdvo/sdvo_attr.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/pal/sdvo/sdvo_hdmi.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/pal/sdvo/sdvo_hdmi.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/pal/sdvo/sdvo_intf.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/pal/sdvo/sdvo_intf.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/pal/sdvo/sdvo_port.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/pal/sdvo/sdvo_port.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/state/appcontext/cmn/appc=
ontext_dispatch.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/state/appcontext/cmn/igd_=
appcontext.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/state/appcontext/plb/appc=
ontext_plb.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/state/power/cmn/igd_pwr.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/state/power/cmn/pwr_dispa=
tch.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/state/power/plb/pwr_plb.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/state/reg/cmn/reg.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/state/reg/cmn/reg_dispatc=
h.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/state/reg/plb/reg_plb.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/state/reg/tnc/reg_tnc.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/utils/math_fix.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/utils/memmap.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/utils/pci.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/video/msvdx/msvdx.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/video/msvdx/msvdx_init.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/video/msvdx/msvdx_pvr.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/video/msvdx/msvdx_pvr.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/cmn/igd_ovl=
.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/cmn/micro_o=
vl.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/cmn/ovl_coe=
ff.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/cmn/ovl_coe=
ff.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/cmn/ovl_dis=
patch.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/cmn/ovl_vir=
t.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/plb/micro_o=
vl_plb.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/plb/ovl2_pl=
b.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/plb/ovl2_pl=
b.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/plb/ovl2_re=
gs_plb.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/plb/ovl_plb=
.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/plb/ovl_plb=
_cache.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/plb/ovl_plb=
_cache.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/plb/ovl_reg=
s_plb.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/tnc/micro_o=
vl_tnc.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/tnc/ovl2_re=
gs_tnc.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/tnc/ovl2_tn=
c.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/tnc/ovl2_tn=
c.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/tnc/ovl_reg=
s_tnc.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/tnc/ovl_tnc=
.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/tnc/ovl_tnc=
_cache.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/video/overlay/tnc/ovl_tnc=
_cache.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/video/topaz/topaz.c
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/video/topaz/topaz_hdr.h
> =A0create mode 100644 drivers/gpu/drm/emgd/emgd/video/topaz/topaz_init.c
> =A0create mode 100644 drivers/gpu/drm/emgd/include/emgd_drm.h
> =A0create mode 100644 drivers/gpu/drm/emgd/include/emgd_shared.h
> =A0create mode 100644 drivers/gpu/drm/emgd/include/gart.h
> =A0create mode 100644 drivers/gpu/drm/emgd/include/igd.h
> =A0create mode 100644 drivers/gpu/drm/emgd/include/igd_2d.h
> =A0create mode 100644 drivers/gpu/drm/emgd/include/igd_appcontext.h
> =A0create mode 100644 drivers/gpu/drm/emgd/include/igd_blend.h
> =A0create mode 100644 drivers/gpu/drm/emgd/include/igd_debug.h
> =A0create mode 100644 drivers/gpu/drm/emgd/include/igd_errno.h
> =A0create mode 100644 drivers/gpu/drm/emgd/include/igd_gart.h
> =A0create mode 100644 drivers/gpu/drm/emgd/include/igd_gmm.h
> =A0create mode 100644 drivers/gpu/drm/emgd/include/igd_init.h
> =A0create mode 100644 drivers/gpu/drm/emgd/include/igd_interrupt.h
> =A0create mode 100644 drivers/gpu/drm/emgd/include/igd_mode.h
> =A0create mode 100644 drivers/gpu/drm/emgd/include/igd_ovl.h
> =A0create mode 100644 drivers/gpu/drm/emgd/include/igd_pd.h
> =A0create mode 100644 drivers/gpu/drm/emgd/include/igd_pi.h
> =A0create mode 100644 drivers/gpu/drm/emgd/include/igd_pwr.h
> =A0create mode 100644 drivers/gpu/drm/emgd/include/igd_rb.h
> =A0create mode 100644 drivers/gpu/drm/emgd/include/igd_render.h
> =A0create mode 100644 drivers/gpu/drm/emgd/include/igd_reset.h
> =A0create mode 100644 drivers/gpu/drm/emgd/include/igd_version.h
> =A0create mode 100644 drivers/gpu/drm/emgd/include/igd_vga.h
> =A0create mode 100644 drivers/gpu/drm/emgd/include/io.h
> =A0create mode 100644 drivers/gpu/drm/emgd/include/memmap.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/include4/dbgdrvif.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/include4/img_defs.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/include4/img_types.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/include4/ioctldef.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/include4/pdumpdefs.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/include4/pvr_debug.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/include4/pvrmodule.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/include4/pvrversion.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/include4/regpaths.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/include4/services.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/include4/servicesext.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/include4/sgx_options.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/include4/sgxapi_km.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/include4/sgxscript.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/3rdparty/emgd_di=
splayclass/emgd_dc.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/3rdparty/emgd_di=
splayclass/emgd_dc.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/3rdparty/emgd_di=
splayclass/emgd_dc_linux.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/include/env/linu=
x/pvr_drm_shared.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/include/kernelbu=
ffer.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/include/kerneldi=
splay.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/include/pvr_brid=
ge.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/include/pvr_brid=
ge_km.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/include/pvrmmap.=
h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/include/pvrsrv_e=
rrors.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/include/services=
int.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/include/sgx_brid=
ge.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/include/sgx_mkif=
_km.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/include/sgxinfo.=
h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/bridged/br=
idged_pvr_bridge.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/bridged/br=
idged_pvr_bridge.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/bridged/br=
idged_support.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/bridged/br=
idged_support.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/bridged/sg=
x/bridged_sgx_bridge.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/bridged/sg=
x/bridged_sgx_bridge.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/common/buf=
fer_manager.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/common/dev=
iceclass.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/common/dev=
icemem.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/common/han=
dle.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/common/has=
h.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/common/lis=
ts.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/common/mem=
.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/common/mem=
_debug.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/common/met=
rics.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/common/pdu=
mp_common.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/common/per=
proc.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/common/pow=
er.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/common/pvr=
srv.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/common/que=
ue.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/common/ra.=
c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/common/res=
man.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/devices/sg=
x/mmu.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/devices/sg=
x/mmu.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/devices/sg=
x/pb.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/devices/sg=
x/sgx_bridge_km.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/devices/sg=
x/sgxconfig.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/devices/sg=
x/sgxinfokm.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/devices/sg=
x/sgxinit.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/devices/sg=
x/sgxkick.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/devices/sg=
x/sgxpower.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/devices/sg=
x/sgxreset.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/devices/sg=
x/sgxtransfer.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/devices/sg=
x/sgxutils.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/devices/sg=
x/sgxutils.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/=
env_data.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/=
env_perproc.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/=
event.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/=
event.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/=
kbuild/Makefile
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/=
linkage.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/=
lock.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/=
mm.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/=
mm.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/=
mmap.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/=
mmap.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/=
module.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/=
mutex.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/=
mutex.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/=
mutils.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/=
mutils.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/=
osfunc.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/=
osperproc.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/=
pdump.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/=
private_data.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/=
proc.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/=
proc.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/=
pvr_bridge_k.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/=
pvr_debug.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/=
pvr_drm.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/env/linux/=
pvr_drm.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/hwdefs/sgx=
535defs.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/hwdefs/sgx=
540defs.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/hwdefs/sgx=
545defs.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/hwdefs/sgx=
defs.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/hwdefs/sgx=
errata.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/hwdefs/sgx=
featuredefs.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/hwdefs/sgx=
mmu.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/include/bu=
ffer_manager.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/include/de=
vice.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/include/ha=
ndle.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/include/ha=
sh.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/include/li=
sts.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/include/me=
trics.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/include/os=
func.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/include/os=
perproc.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/include/pd=
ump_km.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/include/pd=
ump_osfunc.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/include/pe=
rproc.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/include/po=
wer.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/include/qu=
eue.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/include/ra=
.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/include/re=
sman.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/include/se=
rvices_headers.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/srvkm/include/sr=
vkm.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/system/common/sy=
sconfig.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/system/common/sy=
sutils.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/system/include/o=
emfuncs.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/system/include/s=
ys_pvr_drm_shared.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/system/include/s=
yscommon.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/system/include/s=
ysconfig.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/system/include/s=
ysinfo.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/system/include/s=
yslocal.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/system/plb/sysco=
nfig.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/system/plb/syspl=
b.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/system/tnc/sysco=
nfig.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/services4/system/tnc/systn=
c.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/tools/intern/debug/client/=
linuxsrv.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/tools/intern/debug/dbgdriv=
/common/dbgdriv.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/tools/intern/debug/dbgdriv=
/common/dbgdriv.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/tools/intern/debug/dbgdriv=
/common/hostfunc.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/tools/intern/debug/dbgdriv=
/common/hotkey.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/tools/intern/debug/dbgdriv=
/common/hotkey.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/tools/intern/debug/dbgdriv=
/common/ioctl.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/tools/intern/debug/dbgdriv=
/common/ioctl.h
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/tools/intern/debug/dbgdriv=
/linux/hostfunc.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/tools/intern/debug/dbgdriv=
/linux/kbuild/Makefile
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/tools/intern/debug/dbgdriv=
/linux/main.c
> =A0create mode 100644 drivers/gpu/drm/emgd/pvr/tools/intern/debug/dbgdriv=
/linux/makefile.linux.common
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

