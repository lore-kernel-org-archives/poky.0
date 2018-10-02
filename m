Return-Path: <stangerm2@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DDEF4E00B3E; Tue,  2 Oct 2018 07:45:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (stangerm2[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com
	[209.85.210.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 096FBE00B18
	for <poky@yoctoproject.org>; Tue,  2 Oct 2018 07:44:58 -0700 (PDT)
Received: by mail-ot1-f42.google.com with SMTP id i12-v6so2151094otl.1
	for <poky@yoctoproject.org>; Tue, 02 Oct 2018 07:44:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=b9csPDgKP6/DdHxRKYvkP55+N+m4t3SfTVljLaRz3mk=;
	b=juIXZIRdGQqYae3QpkhMNPWNAejmvPsuX1q+IJ8RtSYtAithhootJKc3ecW12wiRlQ
	rHb+IuY9dMcfq1YqQnReOSiIgAvz0nu57N9swM2T8VaHp7uo4MO6wh1l3+yLq7fp28Xv
	mF4nq8RYH2H2FrOHiwZDLn7YPBtdMKRZnZMLpQcD+/9RX/tDw0STiS9XEyEjsWWFR7rk
	iZuFca0ydwUwFHdGkiLU6/1I30juH9ZiyqsT+2XUan2hYljToJwzIBxZtLZl/4NE6g6w
	PA/Ve7VTlNTKXJJnAOGkRGt5Sl0J1p9Uim/JW7pjLCeB6G6a16KQOVHYztedLo0cT/xc
	+r3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=b9csPDgKP6/DdHxRKYvkP55+N+m4t3SfTVljLaRz3mk=;
	b=UI82j/gh1Rh90Lf7ZMm7oVlBGRSfs3WWRQg+3+VeLy0jx8jDKjYJA7LC2J7KhmWYRn
	eUrvsCRSD2pR9dIi7YCojo7W/MCvzj3hnuxyQ4ABK6OAb8c09obu01QSRN+8PRdmTIMH
	x8i0ZtINW9quJcvERalUFSr38D+cglBZYPY+2Gcw0XVuKd1UAZYKu5OjhHjnR/PCPVJ5
	33duSveSOEN0cCOFE2CKPbDsUcJtrJwgyW9cPU5nsd5LuxObrfmUginlQPBQWZ8ujMDs
	NmdPWWn3WQXppwXVm/Ckwm0JkELzOJ+mCUlqQpgxi3VkZorIKftVOzd3SIoYi11bEEWc
	7bvQ==
X-Gm-Message-State: ABuFfog8sCOXTexJdGEP1wN/k+V0ZNp4s+FbXp0tDa+94TCfeJcKfEdZ
	02xcK0tJrCI+wasK4v054N5VFcMxhgbwml9r7Q==
X-Google-Smtp-Source: ACcGV61tiG5QYlocyzVL3A+F/ctcXiSpB//J+Mewk7khLP+FUQ0NfB/WtStmhw3pwfWzBlCpJGW+hBkulporEs0nocU=
X-Received: by 2002:a9d:40f4:: with SMTP id
	t49-v6mr9421740oti.70.1538491498156; 
	Tue, 02 Oct 2018 07:44:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAGni2MjmZ0+njY+d4R3v8w7wYZgr=BNX8RnhEjPSfXegNH_Nng@mail.gmail.com>
	<CAJTo0LbjZTA__97C5vt24V80ssXm8eZXHg4ZeN_d1FrU8ZtCZQ@mail.gmail.com>
	<CAGni2MjOGuOnzKtPb883NPGV06xmmrrpdBAyMN6SxHyqfPtRVw@mail.gmail.com>
	<CAJTo0LYB5rm_d0VFN+TnrRy2c4f1on86cM60Tm9yru6E9AXxuQ@mail.gmail.com>
	<CAGni2MjLkvOASyD=+yDrVLr2nCisq57a3KoKkhD8xVbu2CvDSQ@mail.gmail.com>
	<CAMKF1sp2dp7BeP4z4n7tBnH08o+0gsGtxJdm-pLAwumj_2rx5A@mail.gmail.com>
	<CAGni2Mhd2O_fBkgZH6rh+UGZfVugSsOtM1pdtxe9TYQcQy7P+A@mail.gmail.com>
	<CAJTo0LZKHHAbg_cwqo0=tvcbd8VeU=2KGU6ZV0T4KhrcpXq+fg@mail.gmail.com>
In-Reply-To: <CAJTo0LZKHHAbg_cwqo0=tvcbd8VeU=2KGU6ZV0T4KhrcpXq+fg@mail.gmail.com>
From: matthew stanger <stangerm2@gmail.com>
Date: Tue, 2 Oct 2018 08:44:21 -0600
Message-ID: <CAGni2MhuW81k=DtE-mQ+Lk2VS2drFhEdSLbKkup9dvpJwqaKig@mail.gmail.com>
To: ross.burton@intel.com
Cc: poky@yoctoproject.org
Subject: Re: Systemd on Sumo without python3(runtime)
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
X-List-Received-Date: Tue, 02 Oct 2018 14:45:00 -0000
Content-Type: multipart/alternative; boundary="0000000000003cd84f05773ff7b6"

--0000000000003cd84f05773ff7b6
Content-Type: text/plain; charset="UTF-8"

>
> Can you check if some .py file is slipping into libxml2 package ?

I extracted all the .ipks for libxml2, including dev/dbg/doc, and nothing
had .py files.

Have you checked *the contents of the image*

Yes, I've gone over it many times and I'm sure there is no direct
delectation for Py3 in the image.

Here's my extremely simple build image:
### START OF local.conf
# Yocto Project 2.5 Poky distribution [sumo] branch
LICENSE_FLAGS_WHITELIST = "commercial"

DISTRO_FEATURES = "ext2 pam ipv6 usbhost ${DISTRO_FEATURES_LIBC}"
DISTRO_FEATURES_BACKFILL_CONSIDERED += "pulseaudio"

PREFERRED_PROVIDER_jpeg = "libjpeg-turbo"
PREFERRED_PROVIDER_jpeg-native = "libjpeg-turbo-native"
PREFERRED_PROVIDER_udev = "eudev"

# use systemd
DISTRO_FEATURES_append = " systemd"
DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit"
VIRTUAL-RUNTIME_init_manager = "systemd"
VIRTUAL-RUNTIME_initscripts = "systemd-compat-units"

MACHINE_FEATURES_remove = "apm"
IMAGE_FSTYPES = "tar.xz"

MACHINE = "raspberrypi3"

KERNEL_IMAGETYPE = "zImage"

DISABLE_OVERSCAN = "1"
ENABLE_UART = "1"
ENABLE_RPI3_SERIAL_CONSOLE = "1"
SERIAL_CONSOLE = "115200 ttyAMA0"

DL_DIR = "${HOME}/rpi/build/downloads"
SSTATE_DIR = "${HOME}/rpi/build/sstate-cache"
TMPDIR = "${HOME}/rpi/build/tmp"

DISTRO = "poky"
PACKAGE_CLASSES = "package_ipk"

SDKMACHINE = "x86_64"

INHERIT += "extrausers"
EXTRA_USERS_PARAMS = "usermod -P stripped root; "

USER_CLASSES = "image-mklibs image-prelink"
PATCHRESOLVE = "noop"
RM_OLD_IMAGE = "1"
INHERIT += "rm_work"
CONF_VERSION = "1"

#Turn off python3 for any packages that have it configurable
#PACKAGECONFIG_remove = "python"


### START OF image.bb
SUMMARY = "Min RPi Image"
LICENSE = "MIT"

IMAGE_FEATURES += "package-management"
IMAGE_LINGUAS = "en-us"

inherit image

DEPENDS += "bcm2835-bootfiles"

CORE_OS = " \
    kernel-modules \
    openssh openssh-keygen openssh-sftp-server \
    packagegroup-core-boot \
    term-prompt \
    tzdata \
"
IMAGE_INSTALL += " \
    ${CORE_OS} \
"

set_local_timezone() {
    ln -sf /usr/share/zoneinfo/EST5EDT ${IMAGE_ROOTFS}/etc/localtime
}

disable_bootlogd() {
    echo BOOTLOGD_ENABLE=no > ${IMAGE_ROOTFS}/etc/default/bootlogd
}

ROOTFS_POSTPROCESS_COMMAND += " \
    set_local_timezone ; \
    disable_bootlogd ; \
 "

export IMAGE_BASENAME = "pine41-image"


On Tue, Oct 2, 2018 at 5:19 AM Burton, Ross <ross.burton@intel.com> wrote:

> The packages generated by libxml2 include libxml2 (depends on libc and
> libz) and libxml2-python (depends on python3).  Again, it's fine for a
> target Python 3 to be built as that doesn't mean it will be installed
> in your image.
>
> Have you checked *the contents of the image* instead of looking at the
> build dependencies?
>
> Ross
> On Tue, 2 Oct 2018 at 04:20, matthew stanger <stangerm2@gmail.com> wrote:
> >
> > Just to leave a clean paper trail. It was the
> > 'IMAGE_FEATURES+=package-managment' in my local.conf, thus 'opkg'
> > needing (configurable)Py3 indirectly, and not systemd:
> >   "opkg" -> "libarchive"
> >   "libarchive" -> "libxml2"
> >   "libxml2" -> "python3"
> >
> > With libxml2 being marked clearly in openembedded for Py3
> > (https://layers.openembedded.org/layerindex/recipe/80796/).
> >
> > Cheers,
> > On Mon, Oct 1, 2018 at 10:10 AM Khem Raj <raj.khem@gmail.com> wrote:
> > >
> > > On Mon, Oct 1, 2018 at 8:34 AM matthew stanger <stangerm2@gmail.com>
> wrote:
> > > >
> > > > Ahh thanks, that explains that. I'm not aware that I'm pulling in Py3
> > > > as part of my image but I must be somewhere. I'm just using a trimmed
> > > > version of the console-image.bb of the Raspberry Pi meta-layer by
> > > > Scott Ellis (
> https://github.com/jumpnow/meta-rpi/blob/sumo/images/console-image.bb)
> > > > where I changed out sysvinit for systemd in the local.conf and am
> only
> > > > building the $(CORE_OS) targets [kernel-modules, openssh
> > > > openssh-keygen openssh-sftp-server, packagegroup-core-boot,
> > > > term-prompt, tzdata], so I'm not sure where the Py3 part is being
> set.
> > > > I know you're busy so what would be the best way in this case for me
> > > > to track down where this is set?
> > >
> > > Generally its better to start of a known smaller images preferably
> > > from OE-core and then build on top by
> > > adding your own needs, building up is easier than tearing down in this
> > > case. The image you are basing of has a lot of stuff which can pull in
> > > py3 especially the dev packages.
> > >
> > > to sort out your case. enable buildhistory, then go into buildhistory
> folder.
> > > e.g. buildhistory/images/qemux86/musl/core-image-sato
> > > and then inspect depends-nokernel-nolibc-noupdate-nomodules.dot
> > > especially look for "python3" in RHS of -> marker
> > >
> > > that will give you the package on LHS which is asking for python3 then
> you
> > > can walk backwards from there.
> > >
> > > > On Mon, Oct 1, 2018 at 9:05 AM Burton, Ross <ross.burton@intel.com>
> wrote:
> > > > >
> > > > > Well, -g shows you *build* dependencies, not target.  Build
> > > > > dependencies are recipes, whereas target dependencies will be
> > > > > packages.
> > > > >
> > > > > I see systemd just depending on update-alternatives-opkg, part of
> > > > > opkg-utils but without the Python dependency.
> > > > >
> > > > > Have you demonstrated that Py3 is part of your *images*?
> > > > >
> > > > > Ross
> > > > > On Mon, 1 Oct 2018 at 15:55, matthew stanger <stangerm2@gmail.com>
> wrote:
> > > > > >
> > > > > > Hi Ross,
> > > > > >
> > > > > > Thanks for the reply. It seems running 'bitbake -g systemd'
> yields:
> > > > > > "systemd" -> "opkg-utils"
> > > > > > "opkg-utils" -> "python3"
> > > > > >
> > > > > > I actually used a previous ML post about this from you to
> address that
> > > > > > aspect (
> https://lists.yoctoproject.org/pipermail/poky/2016-January/010342.html).
> > > > > > However I still don't understand why opkg-utils are listed as
> > > > > > dependencies for systemd. I do have opkg as part of my image via
> > > > > > 'IMAGE_FEATURES+=package-managment' but I thought they should be
> > > > > > unrelated in this context?
> > > > > > On Mon, Oct 1, 2018 at 4:59 AM Burton, Ross <
> ross.burton@intel.com> wrote:
> > > > > > >
> > > > > > > On Sun, 30 Sep 2018 at 20:02, matthew stanger <
> stangerm2@gmail.com> wrote:
> > > > > > > > I'm having trouble removing python3 from being installed as
> a runtime
> > > > > > > > package using the Sumo branch. Per the systemd(v237) build
> > > > > > > > spec's(https://github.com/systemd/systemd/blob/v237/README)
> line 167
> > > > > > > > there isn't runtime requirements for python3, only build
> time.
> > > > > > > >
> > > > > > > > It looks to me when running a .dot on the systemd
> dependencies that
> > > > > > > > python3 is being pulled in by 'meson' as a non'-native'
> dependency,
> > > > > > > > but this is where I'm lost. Could anyone clarify the logic
> here on how
> > > > > > > > to trim python3 to a native only dependency for systemd? Or
> is there
> > > > > > > > something fundamental I'm missing?
> > > > > > >
> > > > > > > Looking at the recipe I don't see where a Python 3 dependency
> comes
> > > > > > > from.  Have you verified that it's coming from systemd?
> > > > > > >
> > > > > > > Ross
> > > > --
> > > > _______________________________________________
> > > > poky mailing list
> > > > poky@yoctoproject.org
> > > > https://lists.yoctoproject.org/listinfo/poky
>

--0000000000003cd84f05773ff7b6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Can you =
check if some .py file is slipping into libxml2 package ?</blockquote>I ext=
racted all the .ipks for libxml2, including dev/dbg/doc, and nothing had .p=
y files.<div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Ha=
ve you checked *the contents of the image*=C2=A0=C2=A0</blockquote><div>Yes=
, I&#39;ve gone over it many times and I&#39;m sure there is no direct dele=
ctation for Py3 in the image.</div><div><br></div><div>Here&#39;s my extrem=
ely simple build image:</div><div>### START OF local.conf<br># Yocto Projec=
t 2.5 Poky distribution [sumo] branch<br>LICENSE_FLAGS_WHITELIST =3D &quot;=
commercial&quot;<br><br>DISTRO_FEATURES =3D &quot;ext2 pam ipv6 usbhost ${D=
ISTRO_FEATURES_LIBC}&quot;<br>DISTRO_FEATURES_BACKFILL_CONSIDERED +=3D &quo=
t;pulseaudio&quot;<br><br>PREFERRED_PROVIDER_jpeg =3D &quot;libjpeg-turbo&q=
uot;<br>PREFERRED_PROVIDER_jpeg-native =3D &quot;libjpeg-turbo-native&quot;=
<br>PREFERRED_PROVIDER_udev =3D &quot;eudev&quot;<br><br># use systemd<br>D=
ISTRO_FEATURES_append =3D &quot; systemd&quot;<br>DISTRO_FEATURES_BACKFILL_=
CONSIDERED +=3D &quot;sysvinit&quot;<br>VIRTUAL-RUNTIME_init_manager =3D &q=
uot;systemd&quot;<br>VIRTUAL-RUNTIME_initscripts =3D &quot;systemd-compat-u=
nits&quot;<br><br>MACHINE_FEATURES_remove =3D &quot;apm&quot;<br>IMAGE_FSTY=
PES =3D &quot;tar.xz&quot;<br><br></div><div>MACHINE =3D &quot;raspberrypi3=
&quot;<br><br>KERNEL_IMAGETYPE =3D &quot;zImage&quot;<br><br>DISABLE_OVERSC=
AN =3D &quot;1&quot;<br>ENABLE_UART =3D &quot;1&quot;<br>ENABLE_RPI3_SERIAL=
_CONSOLE =3D &quot;1&quot;<br>SERIAL_CONSOLE =3D &quot;115200 ttyAMA0&quot;=
<br><br>DL_DIR =3D &quot;${HOME}/rpi/build/downloads&quot;<br>SSTATE_DIR =
=3D &quot;${HOME}/rpi/build/sstate-cache&quot;<br>TMPDIR =3D &quot;${HOME}/=
rpi/build/tmp&quot;<br><br>DISTRO =3D &quot;poky&quot;<br>PACKAGE_CLASSES =
=3D &quot;package_ipk&quot;<br><br>SDKMACHINE =3D &quot;x86_64&quot;<br><br=
>INHERIT +=3D &quot;extrausers&quot;<br>EXTRA_USERS_PARAMS =3D &quot;usermo=
d -P stripped root; &quot;<br><br>USER_CLASSES =3D &quot;image-mklibs image=
-prelink&quot;<br>PATCHRESOLVE =3D &quot;noop&quot;<br>RM_OLD_IMAGE =3D &qu=
ot;1&quot;<br>INHERIT +=3D &quot;rm_work&quot;<br>CONF_VERSION =3D &quot;1&=
quot;<br><br>#Turn off python3 for any packages that have it configurable<b=
r>#PACKAGECONFIG_remove =3D &quot;python&quot;<br></div><div><br></div><div=
><br></div><div>### START OF <a href=3D"http://image.bb">image.bb</a></div>=
<div>SUMMARY =3D &quot;Min RPi Image&quot;<br>LICENSE =3D &quot;MIT&quot;<b=
r><br>IMAGE_FEATURES +=3D &quot;package-management&quot;<br>IMAGE_LINGUAS =
=3D &quot;en-us&quot;<br><br>inherit image<br><br>DEPENDS +=3D &quot;bcm283=
5-bootfiles&quot;<br><br>CORE_OS =3D &quot; \<br>=C2=A0 =C2=A0 kernel-modul=
es \<br>=C2=A0 =C2=A0 openssh openssh-keygen openssh-sftp-server \<br>=C2=
=A0 =C2=A0 packagegroup-core-boot \<br>=C2=A0 =C2=A0 term-prompt \<br>=C2=
=A0 =C2=A0 tzdata \<br>&quot;<br>IMAGE_INSTALL +=3D &quot; \<br>=C2=A0 =C2=
=A0 ${CORE_OS} \<br>&quot;<br><br>set_local_timezone() {<br>=C2=A0 =C2=A0 l=
n -sf /usr/share/zoneinfo/EST5EDT ${IMAGE_ROOTFS}/etc/localtime<br>}<br><br=
>disable_bootlogd() {<br>=C2=A0 =C2=A0 echo BOOTLOGD_ENABLE=3Dno &gt; ${IMA=
GE_ROOTFS}/etc/default/bootlogd<br>}<br><br>ROOTFS_POSTPROCESS_COMMAND +=3D=
 &quot; \<br>=C2=A0 =C2=A0 set_local_timezone ; \<br>=C2=A0 =C2=A0 disable_=
bootlogd ; \<br>=C2=A0&quot;<br><br>export IMAGE_BASENAME =3D &quot;pine41-=
image&quot;=C2=A0=C2=A0<br></div></div><br><br><div class=3D"gmail_quote"><=
div dir=3D"ltr">On Tue, Oct 2, 2018 at 5:19 AM Burton, Ross &lt;<a href=3D"=
mailto:ross.burton@intel.com">ross.burton@intel.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex">The packages generated by libxml2 include l=
ibxml2 (depends on libc and<br>
libz) and libxml2-python (depends on python3).=C2=A0 Again, it&#39;s fine f=
or a<br>
target Python 3 to be built as that doesn&#39;t mean it will be installed<b=
r>
in your image.<br>
<br>
Have you checked *the contents of the image* instead of looking at the<br>
build dependencies?<br>
<br>
Ross<br>
On Tue, 2 Oct 2018 at 04:20, matthew stanger &lt;<a href=3D"mailto:stangerm=
2@gmail.com" target=3D"_blank">stangerm2@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Just to leave a clean paper trail. It was the<br>
&gt; &#39;IMAGE_FEATURES+=3Dpackage-managment&#39; in my local.conf, thus &=
#39;opkg&#39;<br>
&gt; needing (configurable)Py3 indirectly, and not systemd:<br>
&gt;=C2=A0 =C2=A0&quot;opkg&quot; -&gt; &quot;libarchive&quot;<br>
&gt;=C2=A0 =C2=A0&quot;libarchive&quot; -&gt; &quot;libxml2&quot;<br>
&gt;=C2=A0 =C2=A0&quot;libxml2&quot; -&gt; &quot;python3&quot;<br>
&gt;<br>
&gt; With libxml2 being marked clearly in openembedded for Py3<br>
&gt; (<a href=3D"https://layers.openembedded.org/layerindex/recipe/80796/" =
rel=3D"noreferrer" target=3D"_blank">https://layers.openembedded.org/layeri=
ndex/recipe/80796/</a>).<br>
&gt;<br>
&gt; Cheers,<br>
&gt; On Mon, Oct 1, 2018 at 10:10 AM Khem Raj &lt;<a href=3D"mailto:raj.khe=
m@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; On Mon, Oct 1, 2018 at 8:34 AM matthew stanger &lt;<a href=3D"mai=
lto:stangerm2@gmail.com" target=3D"_blank">stangerm2@gmail.com</a>&gt; wrot=
e:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Ahh thanks, that explains that. I&#39;m not aware that I&#39=
;m pulling in Py3<br>
&gt; &gt; &gt; as part of my image but I must be somewhere. I&#39;m just us=
ing a trimmed<br>
&gt; &gt; &gt; version of the <a href=3D"http://console-image.bb" rel=3D"no=
referrer" target=3D"_blank">console-image.bb</a> of the Raspberry Pi meta-l=
ayer by<br>
&gt; &gt; &gt; Scott Ellis (<a href=3D"https://github.com/jumpnow/meta-rpi/=
blob/sumo/images/console-image.bb" rel=3D"noreferrer" target=3D"_blank">htt=
ps://github.com/jumpnow/meta-rpi/blob/sumo/images/console-image.bb</a>)<br>
&gt; &gt; &gt; where I changed out sysvinit for systemd in the local.conf a=
nd am only<br>
&gt; &gt; &gt; building the $(CORE_OS) targets [kernel-modules, openssh<br>
&gt; &gt; &gt; openssh-keygen openssh-sftp-server, packagegroup-core-boot,<=
br>
&gt; &gt; &gt; term-prompt, tzdata], so I&#39;m not sure where the Py3 part=
 is being set.<br>
&gt; &gt; &gt; I know you&#39;re busy so what would be the best way in this=
 case for me<br>
&gt; &gt; &gt; to track down where this is set?<br>
&gt; &gt;<br>
&gt; &gt; Generally its better to start of a known smaller images preferabl=
y<br>
&gt; &gt; from OE-core and then build on top by<br>
&gt; &gt; adding your own needs, building up is easier than tearing down in=
 this<br>
&gt; &gt; case. The image you are basing of has a lot of stuff which can pu=
ll in<br>
&gt; &gt; py3 especially the dev packages.<br>
&gt; &gt;<br>
&gt; &gt; to sort out your case. enable buildhistory, then go into buildhis=
tory folder.<br>
&gt; &gt; e.g. buildhistory/images/qemux86/musl/core-image-sato<br>
&gt; &gt; and then inspect depends-nokernel-nolibc-noupdate-nomodules.dot<b=
r>
&gt; &gt; especially look for &quot;python3&quot; in RHS of -&gt; marker<br=
>
&gt; &gt;<br>
&gt; &gt; that will give you the package on LHS which is asking for python3=
 then you<br>
&gt; &gt; can walk backwards from there.<br>
&gt; &gt;<br>
&gt; &gt; &gt; On Mon, Oct 1, 2018 at 9:05 AM Burton, Ross &lt;<a href=3D"m=
ailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt=
; wrote:<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Well, -g shows you *build* dependencies, not target.=C2=
=A0 Build<br>
&gt; &gt; &gt; &gt; dependencies are recipes, whereas target dependencies w=
ill be<br>
&gt; &gt; &gt; &gt; packages.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; I see systemd just depending on update-alternatives-opk=
g, part of<br>
&gt; &gt; &gt; &gt; opkg-utils but without the Python dependency.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Have you demonstrated that Py3 is part of your *images*=
?<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; Ross<br>
&gt; &gt; &gt; &gt; On Mon, 1 Oct 2018 at 15:55, matthew stanger &lt;<a hre=
f=3D"mailto:stangerm2@gmail.com" target=3D"_blank">stangerm2@gmail.com</a>&=
gt; wrote:<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; Hi Ross,<br>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; Thanks for the reply. It seems running &#39;bitbak=
e -g systemd&#39; yields:<br>
&gt; &gt; &gt; &gt; &gt; &quot;systemd&quot; -&gt; &quot;opkg-utils&quot;<b=
r>
&gt; &gt; &gt; &gt; &gt; &quot;opkg-utils&quot; -&gt; &quot;python3&quot;<b=
r>
&gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; I actually used a previous ML post about this from=
 you to address that<br>
&gt; &gt; &gt; &gt; &gt; aspect (<a href=3D"https://lists.yoctoproject.org/=
pipermail/poky/2016-January/010342.html" rel=3D"noreferrer" target=3D"_blan=
k">https://lists.yoctoproject.org/pipermail/poky/2016-January/010342.html</=
a>).<br>
&gt; &gt; &gt; &gt; &gt; However I still don&#39;t understand why opkg-util=
s are listed as<br>
&gt; &gt; &gt; &gt; &gt; dependencies for systemd. I do have opkg as part o=
f my image via<br>
&gt; &gt; &gt; &gt; &gt; &#39;IMAGE_FEATURES+=3Dpackage-managment&#39; but =
I thought they should be<br>
&gt; &gt; &gt; &gt; &gt; unrelated in this context?<br>
&gt; &gt; &gt; &gt; &gt; On Mon, Oct 1, 2018 at 4:59 AM Burton, Ross &lt;<a=
 href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.=
com</a>&gt; wrote:<br>
&gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; On Sun, 30 Sep 2018 at 20:02, matthew stanger=
 &lt;<a href=3D"mailto:stangerm2@gmail.com" target=3D"_blank">stangerm2@gma=
il.com</a>&gt; wrote:<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; I&#39;m having trouble removing python3 =
from being installed as a runtime<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; package using the Sumo branch. Per the s=
ystemd(v237) build<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; spec&#39;s(<a href=3D"https://github.com=
/systemd/systemd/blob/v237/README" rel=3D"noreferrer" target=3D"_blank">htt=
ps://github.com/systemd/systemd/blob/v237/README</a>) line 167<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; there isn&#39;t runtime requirements for=
 python3, only build time.<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; It looks to me when running a .dot on th=
e systemd dependencies that<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; python3 is being pulled in by &#39;meson=
&#39; as a non&#39;-native&#39; dependency,<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; but this is where I&#39;m lost. Could an=
yone clarify the logic here on how<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; to trim python3 to a native only depende=
ncy for systemd? Or is there<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; something fundamental I&#39;m missing?<b=
r>
&gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; Looking at the recipe I don&#39;t see where a=
 Python 3 dependency comes<br>
&gt; &gt; &gt; &gt; &gt; &gt; from.=C2=A0 Have you verified that it&#39;s c=
oming from systemd?<br>
&gt; &gt; &gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; &gt; &gt; Ross<br>
&gt; &gt; &gt; --<br>
&gt; &gt; &gt; _______________________________________________<br>
&gt; &gt; &gt; poky mailing list<br>
&gt; &gt; &gt; <a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">p=
oky@yoctoproject.org</a><br>
&gt; &gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/p=
oky</a><br>
</blockquote></div>

--0000000000003cd84f05773ff7b6--
