Subject: Add systemd to poky-tiny distro
To: poky@lists.yoctoproject.org
From: "Jacob Avraham" <jacob.avraham@auto-talks.com>
X-Originating-Location: Ramat Gan, Tel Aviv, IL (62.90.32.217)
X-Originating-Platform: Windows Chrome 94
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 13 Oct 2021 03:19:04 -0700
Message-ID: <Ah8c.1634120344505385680.MDVn@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="QIUxQlwWgqptPvZZtQpW"

--QIUxQlwWgqptPvZZtQpW
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Can systemd be used as the init manager for poky-tiny distro?
I tried to use this poky-tiny derived distro:

#@NAME: poky-tiny-atlk
#@DESCRIPTION: Based on poky tiny distribution. Limited supported of packag=
es from poky distro.

require conf/distro/poky-tiny.conf

DISTRO =3D "poky-tiny-atlk"
TCLIBC =3D "glibc"
PREFERRED_PROVIDER_virtual/kernel =3D "linux-sta12xx"
DISTRO_FEATURES_append =3D " systemd "
DISTRO_FEATURES_remove =3D " wayland "
DISTRO_FEATURES_BACKFILL_CONSIDERED +=3D "sysvinit"

BUILDCFG_VARS +=3D "GCCVERSION"
BUILDCFG_VARS +=3D "PREFERRED_PROVIDER_virtual/kernel"

VIRTUAL-RUNTIME_init_manager =3D "systemd"
VIRTUAL-RUNTIME_initscripts =3D "systemd-compat-units"

DISTRO_FEATURES_LIBC =3D "ipv6 libc-backtrace libc-big-macros libc-bsd libc=
-cxx-tests libc-catgets libc-charsets libc-crypt \
libc-crypt-ufc libc-db-aliases libc-envz libc-fcvt libc-fmtmsg libc-fstab l=
ibc-ftraverse \
libc-getlogin libc-idn libc-inet libc-inet-anl libc-libm libc-locales libc-=
locale-code \
libc-memusage libc-nis libc-nsswitch libc-rcmd libc-rtld-debug libc-spawn l=
ibc-streams libc-sunrpc \
libc-utmp libc-utmpx libc-wordexp libc-posix-clang-wchar libc-posix-regexp =
libc-posix-regexp-glibc \
libc-posix-wchar-io"

But I don't see systemd files added to the image.
When I add systemd package to my image's=C2=A0PACKAGE_INSTALL variable, I g=
et the following error:
ERROR: glibc-locale-2.28-r0 do_package: QA Issue: glibc-locale: Files/direc=
tories were installed but not shipped in any package:
<a list of missing locales>

What am I doing wrong?
Thanks,
Jacob

--QIUxQlwWgqptPvZZtQpW
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Can systemd be used as the init manager for poky-tiny distro?<br />I tried =
to use this poky-tiny derived distro:<br /><br />
<div>#@NAME: poky-tiny-atlk</div>
<div>#@DESCRIPTION: Based on poky tiny distribution. Limited supported of p=
ackages from poky distro.</div>
<div>&nbsp;</div>
<div>require conf/distro/poky-tiny.conf<br /><br /></div>
<div>DISTRO =3D "poky-tiny-atlk"</div>
<div>TCLIBC =3D "glibc"</div>
<div>PREFERRED_PROVIDER_virtual/kernel =3D "linux-sta12xx"</div>
<div>DISTRO_FEATURES_append =3D " systemd "</div>
<div>DISTRO_FEATURES_remove =3D " wayland "</div>
<div>DISTRO_FEATURES_BACKFILL_CONSIDERED +=3D "sysvinit"</div>
<div>&nbsp;</div>
<div>BUILDCFG_VARS +=3D "GCCVERSION"</div>
<div>BUILDCFG_VARS +=3D "PREFERRED_PROVIDER_virtual/kernel"</div>
<div>&nbsp;</div>
<div>VIRTUAL-RUNTIME_init_manager =3D "systemd"</div>
<div>VIRTUAL-RUNTIME_initscripts =3D "systemd-compat-units"</div>
<div>&nbsp;</div>
<div>DISTRO_FEATURES_LIBC =3D "ipv6 libc-backtrace libc-big-macros libc-bsd=
 libc-cxx-tests libc-catgets libc-charsets libc-crypt \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;libc-crypt-ufc =
libc-db-aliases libc-envz libc-fcvt libc-fmtmsg libc-fstab libc-ftraverse \=
</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;libc-getlogin l=
ibc-idn libc-inet libc-inet-anl libc-libm libc-locales libc-locale-code \</=
div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;libc-memusage l=
ibc-nis libc-nsswitch libc-rcmd libc-rtld-debug libc-spawn libc-streams lib=
c-sunrpc \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;libc-utmp libc-=
utmpx libc-wordexp libc-posix-clang-wchar libc-posix-regexp libc-posix-rege=
xp-glibc \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;libc-posix-wcha=
r-io"</div>
<div><br />But I don't see systemd files added to the image.<br />When I ad=
d systemd package to my image's&nbsp;PACKAGE_INSTALL variable, I get the fo=
llowing error:<br />
<div>ERROR: glibc-locale-2.28-r0 do_package: QA Issue: glibc-locale: Files/=
directories were installed but not shipped in any package:</div>
<div>&lt;a list of missing locales&gt;<br /><br />What am I doing wrong?<br=
 />Thanks,<br />Jacob</div>
</div>

--QIUxQlwWgqptPvZZtQpW--
