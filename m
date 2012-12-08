Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9998E00559
	for <poky@yoctoproject.org>; Sat,  8 Dec 2012 10:34:26 -0800 (PST)
Received: by mail-lb0-f176.google.com with SMTP id k6so1280175lbo.35
	for <poky@yoctoproject.org>; Sat, 08 Dec 2012 10:34:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=fRiB9Dk3nKcZjsttLaWMjcjMdDPbLsDMT/jlm6s7S38=;
	b=rhhs9vJ+1r22KagLTCja77KnimRNwrWi7kzfm+lg9oMfUxjLoyOHU1aASQSUo5KzTB
	5ofLf7SDSvxtu4grx8vopIYBaoFKailkbg+Ox7XtHRkPPn92B2M4jA3vhiPMiUPYRCfx
	CCToOerLnC2KTvmaCPCICbVw8DnesR1A8vT6enJn31cco5K4FmhBgkuyRgx5dXS/cn9B
	pahkXlXci3KxsD/qIw6yp0FimHDt+4vTsA6sqLmTsvuKKEFaWzfEw5U5DqM7SYZzJSVe
	8TjhrLki4WhoLj8/DgHA+xRVsu0suWQ8XsarjawrxEi7GvQlFJzx2H+jGjB3EMuqPb55
	GhQg==
MIME-Version: 1.0
Received: by 10.112.47.38 with SMTP id a6mr4115242lbn.93.1354991665413; Sat,
	08 Dec 2012 10:34:25 -0800 (PST)
Received: by 10.114.77.164 with HTTP; Sat, 8 Dec 2012 10:34:25 -0800 (PST)
In-Reply-To: <50C3839B.9070001@pabigot.com>
References: <50C3839B.9070001@pabigot.com>
Date: Sat, 8 Dec 2012 13:34:25 -0500
Message-ID: <CADkTA4OaBhHa9_qEJt89u=Ehr2ovnuW2MCib_Xrv=W6BoXbVug@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: "Peter A. Bigot" <pab@pabigot.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: beagleboard invalid config in 1.3 danny branch
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 08 Dec 2012 18:34:27 -0000
Content-Type: multipart/alternative; boundary=bcaec554da04e3fe1404d05b94e0

--bcaec554da04e3fe1404d05b94e0
Content-Type: text/plain; charset=ISO-8859-1

On Sat, Dec 8, 2012 at 1:14 PM, Peter A. Bigot <pab@pabigot.com> wrote:

> This is mostly informative, unless it's because I'm doing something wrong
> in which case I'd appreciate a clue.
>
>
Hmm. I was also under the impression that we squashed all these, at least
the qemu* boards were clean.


> With this sequence:
>
>  git clone -b danny git://git.yoctoproject.org/**poky<http://git.yoctoproject.org/poky>
>  cd poky
>  . oe-init-build-env
>  MACHINE=beagleboard bitbake virtual/kernel
>
> which documents itself as:
>
> Build Configuration:
> BB_VERSION        = "1.16.0"
> TARGET_ARCH       = "arm"
> TARGET_OS         = "linux-gnueabi"
> MACHINE           = "beagleboard"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.3"
> TUNE_FEATURES     = "armv7a vfp neon cortexa8"
> TARGET_FPU        = "vfp-neon"
> meta
> meta-yocto
> meta-yocto-bsp    = "danny:**09031ac2fc0f30ec577ee823fc61ff**0e5d852e21"
>
> the build produces the following warning (with referenced file contents
> inserted):
>
> This BSP sets 4 invalid/obsolete kernel options.
> These config options are not offered anywhere within this kernel.
> The full list can be found in your kernel src dir at:
> meta/cfg/standard/beagleboard/**invalid.
>
> CONFIG_DISPLAY_SUPPORT
> CONFIG_USB_MUSB_HDRC_HCD
> CONFIG_USB_MUSB_OTG
> CONFIG_WL12XX_HT
>
> This BSP sets 4 kernel options that are possibly non-hardware related.
> The full list can be found in your kernel src dir at:
> meta/cfg/standard/beagleboard/**specified_non_hdw.cfg
>
> CONFIG_CC_OPTIMIZE_FOR_SIZE
> CONFIG_NET
> CONFIG_NETDEVICES
> CONFIG_PANEL_DVI
>
> WARNING: There were 8 hardware options requested that do not
>          have a corresponding value present in the final ".config" file.
>          This probably means you aren't getting the config you wanted.
> The full list can be found in your kernel src dir at:
> meta/cfg/standard/beagleboard/**mismatch.cfg
>
> Value requested for CONFIG_BACKLIGHT_CLASS_DEVICE not in final ".config"
> Requested value: "CONFIG_BACKLIGHT_CLASS_**DEVICE=y"
> Actual value set: ""
>
> Value requested for CONFIG_PANEL_SHARP_LS037V7DW01 not in final ".config"
> Requested value: "CONFIG_PANEL_SHARP_**LS037V7DW01=y"
> Actual value set: ""
>
> Value requested for CONFIG_USB_G_NCM not in final ".config"
> Requested value: "CONFIG_USB_G_NCM=y"
> Actual value set: "# CONFIG_USB_G_NCM is not set"
>
> Value requested for CONFIG_USB_MUSB_HDRC_HCD not in final ".config"
> Requested value: "CONFIG_USB_MUSB_HDRC_HCD=y"
> Actual value set: ""
>
> Value requested for CONFIG_USB_MUSB_OTG not in final ".config"
> Requested value: "CONFIG_USB_MUSB_OTG=y"
> Actual value set: ""
>
> Value requested for CONFIG_USB_OMAP not in final ".config"
> Requested value: "CONFIG_USB_OMAP=y"
> Actual value set: "# CONFIG_USB_OMAP is not set"
>
> Value requested for CONFIG_USB_OTG not in final ".config"
> Requested value: "CONFIG_USB_OTG=y"
> Actual value set: ""
>
> Value requested for CONFIG_WL12XX_HT not in final ".config"
> Requested value: "CONFIG_WL12XX_HT=y"
> Actual value set: ""
>
> Since beagleboard is a reference platform I had not expected these
> warnings.  I see in the archives discussion of a similar issue in the
> pre-release phases of 1.2.  I didn't try with "real" 1.3 but subsequent
> changes in danny don't seem relevant.
>
>
None of these should impact the runtime of the board, but they also
shouldn't
be present.

We are iterating the configs now in master for the LTSI update, I can have
a look
at them then, and any relevant changes can be backported to danny.


> There's also the following which is suspicious:
>
> find: warning: -path /prj/oe/poky/build/tmp/work/**beagleboard-poky-linux-
> **gnueabi/linux-yocto-3.4.11+**git1+**a201268353c030d9fafe00f2041976**
> f7437d9386_1+**449f7f520350700858f21a5554b81c**c8ad23267d-r4.3/linux/
> will not match anything because it ends with /.
>

This isn't the cause of the problem, but it is something that was fixed in
master.

Bruce


>
> Peter
>
> ______________________________**_________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.**org/listinfo/poky<https://lists.yoctoproject.org/listinfo/poky>
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--bcaec554da04e3fe1404d05b94e0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Sat, D=
ec 8, 2012 at 1:14 PM, Peter A. Bigot <span dir=3D"ltr">&lt;<a href=3D"mail=
to:pab@pabigot.com" target=3D"_blank">pab@pabigot.com</a>&gt;</span> wrote:=
<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex">

This is mostly informative, unless it&#39;s because I&#39;m doing something=
 wrong in which case I&#39;d appreciate a clue.<br>
<br></blockquote><div><br></div><div>Hmm. I was also under the impression t=
hat we squashed all these, at least</div><div>the qemu* boards were clean.<=
/div><div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">


With this sequence:<br>
<br>
=A0git clone -b danny git://<a href=3D"http://git.yoctoproject.org/poky" ta=
rget=3D"_blank">git.yoctoproject.org/<u></u>poky</a><br>
=A0cd poky<br>
=A0. oe-init-build-env<br>
=A0MACHINE=3Dbeagleboard bitbake virtual/kernel<br>
<br>
which documents itself as:<br>
<br>
Build Configuration:<br>
BB_VERSION =A0 =A0 =A0 =A0=3D &quot;1.16.0&quot;<br>
TARGET_ARCH =A0 =A0 =A0 =3D &quot;arm&quot;<br>
TARGET_OS =A0 =A0 =A0 =A0 =3D &quot;linux-gnueabi&quot;<br>
MACHINE =A0 =A0 =A0 =A0 =A0 =3D &quot;beagleboard&quot;<br>
DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;poky&quot;<br>
DISTRO_VERSION =A0 =A0=3D &quot;1.3&quot;<br>
TUNE_FEATURES =A0 =A0 =3D &quot;armv7a vfp neon cortexa8&quot;<br>
TARGET_FPU =A0 =A0 =A0 =A0=3D &quot;vfp-neon&quot;<br>
meta<br>
meta-yocto<br>
meta-yocto-bsp =A0 =A0=3D &quot;danny:<u></u>09031ac2fc0f30ec577ee823fc61ff=
<u></u>0e5d852e21&quot;<br>
<br>
the build produces the following warning (with referenced file contents ins=
erted):<br>
<br>
This BSP sets 4 invalid/obsolete kernel options.<br>
These config options are not offered anywhere within this kernel.<br>
The full list can be found in your kernel src dir at:<br>
meta/cfg/standard/beagleboard/<u></u>invalid.<br>
<br>
CONFIG_DISPLAY_SUPPORT<br>
CONFIG_USB_MUSB_HDRC_HCD<br>
CONFIG_USB_MUSB_OTG<br>
CONFIG_WL12XX_HT<br>
<br>
This BSP sets 4 kernel options that are possibly non-hardware related.<br>
The full list can be found in your kernel src dir at:<br>
meta/cfg/standard/beagleboard/<u></u>specified_non_hdw.cfg<br>
<br>
CONFIG_CC_OPTIMIZE_FOR_SIZE<br>
CONFIG_NET<br>
CONFIG_NETDEVICES<br>
CONFIG_PANEL_DVI<br>
<br>
WARNING: There were 8 hardware options requested that do not<br>
=A0 =A0 =A0 =A0 =A0have a corresponding value present in the final &quot;.c=
onfig&quot; file.<br>
=A0 =A0 =A0 =A0 =A0This probably means you aren&#39;t getting the config yo=
u wanted.<br>
The full list can be found in your kernel src dir at:<br>
meta/cfg/standard/beagleboard/<u></u>mismatch.cfg<br>
<br>
Value requested for CONFIG_BACKLIGHT_CLASS_DEVICE not in final &quot;.confi=
g&quot;<br>
Requested value: &quot;CONFIG_BACKLIGHT_CLASS_<u></u>DEVICE=3Dy&quot;<br>
Actual value set: &quot;&quot;<br>
<br>
Value requested for CONFIG_PANEL_SHARP_LS037V7DW01 not in final &quot;.conf=
ig&quot;<br>
Requested value: &quot;CONFIG_PANEL_SHARP_<u></u>LS037V7DW01=3Dy&quot;<br>
Actual value set: &quot;&quot;<br>
<br>
Value requested for CONFIG_USB_G_NCM not in final &quot;.config&quot;<br>
Requested value: &quot;CONFIG_USB_G_NCM=3Dy&quot;<br>
Actual value set: &quot;# CONFIG_USB_G_NCM is not set&quot;<br>
<br>
Value requested for CONFIG_USB_MUSB_HDRC_HCD not in final &quot;.config&quo=
t;<br>
Requested value: &quot;CONFIG_USB_MUSB_HDRC_HCD=3Dy&quot;<br>
Actual value set: &quot;&quot;<br>
<br>
Value requested for CONFIG_USB_MUSB_OTG not in final &quot;.config&quot;<br=
>
Requested value: &quot;CONFIG_USB_MUSB_OTG=3Dy&quot;<br>
Actual value set: &quot;&quot;<br>
<br>
Value requested for CONFIG_USB_OMAP not in final &quot;.config&quot;<br>
Requested value: &quot;CONFIG_USB_OMAP=3Dy&quot;<br>
Actual value set: &quot;# CONFIG_USB_OMAP is not set&quot;<br>
<br>
Value requested for CONFIG_USB_OTG not in final &quot;.config&quot;<br>
Requested value: &quot;CONFIG_USB_OTG=3Dy&quot;<br>
Actual value set: &quot;&quot;<br>
<br>
Value requested for CONFIG_WL12XX_HT not in final &quot;.config&quot;<br>
Requested value: &quot;CONFIG_WL12XX_HT=3Dy&quot;<br>
Actual value set: &quot;&quot;<br>
<br>
Since beagleboard is a reference platform I had not expected these warnings=
. =A0I see in the archives discussion of a similar issue in the pre-release=
 phases of 1.2. =A0I didn&#39;t try with &quot;real&quot; 1.3 but subsequen=
t changes in danny don&#39;t seem relevant.<br>


<br></blockquote><div><br></div><div>None of these should impact the runtim=
e of the board, but they also shouldn&#39;t</div><div>be present.=A0</div><=
div><br></div><div>We are iterating the configs now in master for the LTSI =
update, I can have a look</div>

<div>at them then, and any relevant changes can be backported to danny.</di=
v><div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex">
There&#39;s also the following which is suspicious:<br>
<br>
find: warning: -path /prj/oe/poky/build/tmp/work/<u></u>beagleboard-poky-li=
nux-<u></u>gnueabi/linux-yocto-3.4.11+<u></u>git1+<u></u>a201268353c030d9fa=
fe00f2041976<u></u>f7437d9386_1+<u></u>449f7f520350700858f21a5554b81c<u></u=
>c8ad23267d-r4.3/linux/ will not match anything because it ends with /.<br>

</blockquote><div><br></div><div>This isn&#39;t the cause of the problem, b=
ut it is something that was fixed in master.</div><div><br></div><div>Bruce=
</div><div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex">


<br>
Peter<br>
<br>
______________________________<u></u>_________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.<u></u>org/listinfo/poky</a><br>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>&quot;Thou s=
halt not follow the NULL pointer, for chaos and madness await thee at its e=
nd&quot;<br>
</div>

--bcaec554da04e3fe1404d05b94e0--
