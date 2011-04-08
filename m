Return-Path: <akshat.embedded@gmail.com>
Received: from mail-qy0-f169.google.com (mail-qy0-f169.google.com
	[209.85.216.169])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4CA994C802F2
	for <poky@yoctoproject.org>; Fri,  8 Apr 2011 08:46:53 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qyk2 with SMTP id 2so4749327qyk.14
	for <poky@yoctoproject.org>; Fri, 08 Apr 2011 06:46:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=E8av5YIRtxVs5ARLa59woDsGR90WTNsozHGXWVdI+pg=;
	b=Aj4Yl2YFTckMoWHncUMfxxXS5IJKRi8HA6YUZDBiNXOqhifHIYVpd0rA0CkoBx+Pce
	fTIhR3+dlqKQBKIox5Y6RJ+4Kd/7z/fpHf0Aqm1+R3EiMK9xV8lQcJd2gb3jDQPcs+ii
	i8QOGNS+IZkqSspA7paUZexQQAWdR/UvGRVFA=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=AyCv6gIsiG1rBrri0/SLRSXnUhDYo9/uSREQpSrB83QD/4EA0kClNI3RUqJFLBJopO
	W2y/wq9P3u4IAO+uRF6PHTw/qsGvTBxNLkn+8TvpJXDwatsXFh/iSEdOuTYEZ+AxHN4t
	Wb8bGnMxev5gQIIJsg7kWjJ9NKtSwz+YpWDBA=
MIME-Version: 1.0
Received: by 10.229.51.134 with SMTP id d6mr1833317qcg.89.1302270412414; Fri,
	08 Apr 2011 06:46:52 -0700 (PDT)
Received: by 10.229.84.69 with HTTP; Fri, 8 Apr 2011 06:46:52 -0700 (PDT)
In-Reply-To: <BANLkTinY9yzN-uR1vK_em9hX2R_2is9E7A@mail.gmail.com>
References: <AANLkTi=KYP7eC05UOX3as0A6xFZE31VQXPZL3ehrwzuh@mail.gmail.com>
	<4D96996C.7010601@intel.com> <20110402074649.GA27265@jama.jama.net>
	<4D96E6C5.5010800@intel.com>
	<BANLkTinY9yzN-uR1vK_em9hX2R_2is9E7A@mail.gmail.com>
Date: Fri, 8 Apr 2011 19:16:52 +0530
Message-ID: <BANLkTi=a3=uGk2Sd0TO1otDjj9NcJ0dY7g@mail.gmail.com>
From: Akshat Saha <akshat.embedded@gmail.com>
To: chinmaya hoshing <cahoshing@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: Error while trying to pull xcb with X11
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
X-List-Received-Date: Fri, 08 Apr 2011 13:46:53 -0000
Content-Type: multipart/alternative; boundary=001485e7c82a555f9004a06875c7

--001485e7c82a555f9004a06875c7
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am also facing the same error, I made the following changes in libx11.inc
as well as libx11_1.3.4.bb

- EXTRA_OECONF += "--with-keysymdef=${STAGING_INCDIR}/X11/keysymdef.h"
+ EXTRA_OECONF += "*--with-xcb *
--with-keysymdef=${STAGING_INCDIR}/X11/keysymdef.h"
*+ EXTRA_OECONF_native += "--without-xcb"
+ EXTRA_OECONF_nativesdk += "--without-xcb*
*
*
But the error is still there, from the error log i observer that while
compiling for libx11-native instead of using *"EXTRA_OECONF_native"* as
expected, it is taking arguments from *"EXTRA_OECONF"* only.
The error log is as follows:


NOTE: Executing autoreconf --verbose --install --force --exclude=autopoint
-I
/home/sct/laverne-4.0.1/build/tmp/work/i686-linux/libx11-native-1_1.3.4-r0/libX11-1.3.4/m4/
-I/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/aclocal-1.11
-I /home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/aclocal
autoreconf: Entering directory `.'
autoreconf: configure.ac: not using Gettext
autoreconf: running: aclocal -I
/home/sct/laverne-4.0.1/build/tmp/work/i686-linux/libx11-native-1_1.3.4-r0/libX11-1.3.4/m4/
-I
/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/aclocal-1.11
-I /home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/aclocal
-I
/home/sct/laverne-4.0.1/build/tmp/work/i686-linux/libx11-native-1_1.3.4-r0/libX11-1.3.4/m4/
-I
/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/aclocal-1.11
-I /home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/aclocal
--force -I m4
autoreconf: configure.ac: tracing
autoreconf: running: libtoolize --copy --force
libtoolize: putting auxiliary files in `.'.
libtoolize: copying file `./ltmain.sh'
libtoolize: putting macros in AC_CONFIG_MACRO_DIR, `m4'.
libtoolize: copying file `m4/libtool.m4'
libtoolize: copying file `m4/ltoptions.m4'
libtoolize: copying file `m4/ltsugar.m4'
libtoolize: copying file `m4/ltversion.m4'
libtoolize: copying file `m4/lt~obsolete.m4'
autoreconf: running:
/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/bin/autoconf
--include=/home/sct/laverne-4.0.1/build/tmp/work/i686-linux/libx11-native-1_1.3.4-r0/libX11-1.3.4/m4/
--include=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/aclocal-1.11
--include=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/aclocal
--force --warnings=cross
autoreconf: running:
/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/bin/autoheader
--include=/home/sct/laverne-4.0.1/build/tmp/work/i686-linux/libx11-native-1_1.3.4-r0/libX11-1.3.4/m4/
--include=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/aclocal-1.11
--include=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/aclocal
--force --warnings=cross
autoreconf: running: automake --foreign --add-missing --copy --force-missing
--warnings=cross
automake: unknown warning category `cross'
autoreconf: running: gnu-configize
autoreconf: Leaving directory `.'
NOTE: Running
/home/sct/laverne-4.0.1/build/tmp/work/i686-linux/libx11-native-1_1.3.4-r0/libX11-1.3.4/configure
                 --build=i686-linux           --host=i686-linux
--target=i686-linux
--prefix=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr
--exec_prefix=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr
      --bindir=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/bin

--sbindir=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/sbin

--libexecdir=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/libexec

--datadir=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share

--sysconfdir=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/etc

--sharedstatedir=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/com

--localstatedir=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/var

--libdir=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/lib

--includedir=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/include

--oldincludedir=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/include

--infodir=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/info

--mandir=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/man
            --enable-malloc0returnsnull
--with-keysymdef=/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/include/X11/keysymdef.h
*--with-xcb*             ...
checking build system type... i686-pc-linux-gnu
checking host system type... i686-pc-linux-gnu
:
:
:
checking minix/config.h usability... no
checking minix/config.h presence... no
checking for minix/config.h... no
checking whether it is safe to define __EXTENSIONS__... yes
checking for gcc option to accept ISO C99... -std=gnu99
checking for i686-linux-pkg-config... no
checking for pkg-config...
/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/bin/pkg-config
checking pkg-config is at least version 0.9.0... yes
checking for a sed that does not truncate output... /bin/sed
checking whether to build functional specifications... yes
checking for groff... /usr/bin/groff
checking for /usr/bin/groff -ms macros... no
checking for /usr/bin/groff -mm macros... no
checking for gs... /usr/bin/gs
checking for pnmtopng... no
checking for psselect... no
configure: WARNING: grohtml dependencies not found - HTML Documentation
skipped. Refer to grohtml man pages
:
:
*checking whether to use XCB... (cached) yes*
checking for i686-linux-pkg-config... (cached)
/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/bin/pkg-config
checking pkg-config is at least version 0.9.0... yes
:
:
checking if loadable i18n module support should be enabled... no
checking if loadable Xcursor library support should be enabled... yes
checking for ANSI C header files... (cached) yes
checking sys/select.h usability... yes
checking sys/select.h presence... yes
checking for sys/select.h... yes
checking for strtol... yes
checking for issetugid... no
checking for getresuid... yes
checking for shmat... yes
checking for launchd... no
checking for getpwuid_r in -lc... yes
checking for pthread_self in -lc... yes
checking for poll... yes
/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/include/X11/keysymdef.h
checking if XLOCALEDIR support should be enabled... yes
checking for BIGFONT... yes
checking for stdlib.h... (cached) yes
checking for unistd.h... (cached) yes
checking for sys/param.h... yes
checking for getpagesize... yes
checking for working mmap... yes
checking for nl_langinfo... yes
*checking for X11... no*
*configure: error: Package requirements (xproto >= 7.0.13 xextproto xtrans
xcb >= 1.1.92 kbproto inputproto) were not met:

No package 'xcb' found
*
Consider adjusting the PKG_CONFIG_PATH environment variable if you
installed software in a non-standard prefix.

Alternatively, you may set the environment variables X11_CFLAGS
and X11_LIBS to avoid the need to call pkg-config.
See the pkg-config man page for more details.
FATAL: oe_runconf failed
ERROR: Task failed: ('function do_configure failed',
'/home/sct/laverne-4.0.1/build/tmp/work/i686-linux/libx11-native-1_1.3.4-r0/temp/log.do_configure.24052')

Can any one suggest, what am i doing wrong or how can this error be solved.

On Tue, Apr 5, 2011 at 2:33 PM, chinmaya hoshing <cahoshing@gmail.com>wrote:

> Hi,
>
> Thanks for the reply Yu Ke.I have made changes as per said by you,but still
> getting the same error
> Regarding the Error no xcb found in libx11 library
> Following is the my libx11 bb file : --
>
> +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
> require libx11.inc
>
> LICENSE = "MIT & MIT-style & BSD"
> LIC_FILES_CHKSUM = "file://COPYING;md5=bf75bfe4d05068311b5e6862d4b5f2c5"
>
> PE = "1"
> PR = "r0"
>
> SRC_URI += "file://x11_disable_makekeys.patch \
>             file://nodolt.patch \
>             file://include_fix.patch"
>
> DEPENDS += "bigreqsproto xproto xextproto xtrans libxau xcmiscproto \
>             libxdmcp xf86bigfontproto kbproto inputproto xproto-native
> gettext"
>
> EXTRA_OECONF += "--with-xcb"
> EXTRA_OECONF_native += "--without-xcb"
>
> BBCLASSEXTEND = "native nativesdk"
>
> +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>
> But stiil getting the same error :--
>
> | checking for sys/param.h... yes
> | checking for getpagesize... yes
> | checking for working mmap... yes
> | checking for nl_langinfo... yes
> | checking for X11... no
> | configure: error: Package requirements (xproto >= 7.0.13 xextproto xtrans
> xcb >= 1.1.92 kbproto inputproto) were not met:
> |
> | No package 'xcb' found
> |
> | Consider adjusting the PKG_CONFIG_PATH environment variable if you
> | installed software in a non-standard prefix.
> |
> | Alternatively, you may set the environment variables X11_CFLAGS
> | and X11_LIBS to avoid the need to call pkg-config.
> | See the pkg-config man page for more details.
> | FATAL: oe_runconf failed
> | ERROR: Task failed: ('function do_configure failed',
> '/home/sct/laverne_git/laverne-4.0.1/build/tmp/work/x86_64-linux/libx11-native-1_1.3.4-r0/temp/log.do_configure.16900')
> NOTE: package libx11-native-1_1.3.4-r0: task do_configure: Failed
> ERROR: Task 20
> (virtual:native:/home/sct/laverne_git/laverne-4.0.1/meta/recipes-graphics/xorg-lib/
> libx11_1.3.4.bb, do_configure) failed with 1
> ERROR:
> 'virtual:native:/home/sct/laverne_git/laverne-4.0.1/meta/recipes-graphics/xorg-lib/
> libx11_1.3.4.bb' failed
>
> Chinmaya
>
> On Sat, Apr 2, 2011 at 2:35 PM, Yu Ke <ke.yu@intel.com> wrote:
>
>> on 2011-4-2 15:46, Martin Jansa wrote:
>>
>>> On Sat, Apr 02, 2011 at 11:35:08AM +0800, Yu Ke wrote:
>>>
>>>> on 2011-4-1 17:43, chinmaya hoshing wrote:
>>>>
>>>>> Hi,
>>>>>
>>>>> I am trying to get X11 with libxcb file so accordingly I changed in the
>>>>> bb file of libx11,also I have included libxcb and xcb-utils as runtime
>>>>> dependencies
>>>>>
>>>>> Initially it was in libx11 bb file :--
>>>>> EXTRA_OECONF += "--without-xcb"
>>>>> I changed it to
>>>>> EXTRA_OECONF += "--with-xcb"
>>>>>
>>>>> Following is the error I get :-
>>>>> checking for unistd.h... (cached) yes
>>>>> | checking for sys/param.h... yes
>>>>> | checking for getpagesize... yes
>>>>> | checking for working mmap... yes
>>>>> | checking for nl_langinfo... yes
>>>>> | checking for X11... no
>>>>> | configure: error: Package requirements (xproto>= 7.0.13 xextproto
>>>>> xtrans xcb>= 1.1.92 kbproto inputproto) were not met:
>>>>> |
>>>>> | No package 'xcb' found
>>>>> |
>>>>> | Consider adjusting the PKG_CONFIG_PATH environment variable if you
>>>>> | installed software in a non-standard prefix.
>>>>> |
>>>>> | Alternatively, you may set the environment variables X11_CFLAGS
>>>>> | and X11_LIBS to avoid the need to call pkg-config.
>>>>> | See the pkg-config man page for more details.
>>>>> | FATAL: oe_runconf failed
>>>>> | ERROR: Task failed: ('function do_configure failed',
>>>>>
>>>>> '/home/laverne-4.0.1/build/tmp/work/x86_64-linux/libx11-native-1_1.3.4-r0/temp/log.do_configure.13755')
>>>>> NOTE: package libx11-native-1_1.3.4-r0: task do_configure: Failed
>>>>> ERROR: Task 3573
>>>>> (virtual:native:/home/laverne-4.0.1/meta/recipes-graphics/xorg-lib/
>>>>> libx11_1.3.4.bb
>>>>> <http://libx11_1.3.4.bb>, do_configure) failed with 1
>>>>> ERROR:
>>>>> 'virtual:native:/home/laverne-4.0.1/meta/recipes-graphics/xorg-lib/
>>>>> libx11_1.3.4.bb
>>>>> <http://libx11_1.3.4.bb>' failed
>>>>>
>>>>> I have libxcb_1.6 version ,also xproto is libxproto_7.0.17
>>>>>
>>>>> Please can  you help me to find the solution for it.
>>>>>
>>>>> Chinmaya
>>>>>
>>>>>
>>>>>
>>>> I see it is libx11-native do_configure failure, and the xcb-native is
>>>> missing. that make sense because xcb recipes does not have BBCLASSEXTEND
>>>> = "native nativesdk", thus xcb is not built for native.
>>>>
>>>> I have tried to add BBCLASSEXTEND = "native" in xcb recipe, it turn out
>>>> requiring more dependent recipes to be built for native, which is a bit
>>>> way too far and undesirable.
>>>>
>>>> so let's try another way, since you only care about the runtime libx11
>>>> with xcb support, how about the following patches, with which only
>>>> native disable xcb, and the runtime libx11 will have xcb support.
>>>>
>>>
>>> Hi,
>>>
>>> for libx11-1.4.0 and newer --without-xcb is not an option anymore, so
>>> better to fix it with native xcb sooner than later, for details see
>>>
>>> d28cdb2d2e6c910afbaa14b17bd2c0003052df7d in openembedded/master
>>> and the rest of xorg/xcb recipes in openembedded :)
>>>
>>> Cheers,
>>>
>>>
>> In this case. your are right, native xcb should also be added. Will
>> upgrade it soon. Thanks for the info.
>>
>> Regards
>> Ke
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
>


-- 
Akshat

--001485e7c82a555f9004a06875c7
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<div><br></div><div>I am also facing the same error, I made the followin=
g changes in libx11.inc as well as <a href=3D"http://libx11_1.3.4.bb">libx1=
1_1.3.4.bb</a></div><div><br></div><meta http-equiv=3D"content-type" conten=
t=3D"text/html; charset=3Dutf-8">- EXTRA_OECONF +=3D &quot;--with-keysymdef=
=3D${STAGING_INCDIR}/X11/keysymdef.h&quot;<br>
<meta http-equiv=3D"content-type" content=3D"text/html; charset=3Dutf-8">+ =
EXTRA_OECONF +=3D &quot;<b>--with-xcb </b>--with-keysymdef=3D${STAGING_INCD=
IR}/X11/keysymdef.h&quot;<br><div><meta http-equiv=3D"content-type" content=
=3D"text/html; charset=3Dutf-8"><b>+ EXTRA_OECONF_native +=3D &quot;--witho=
ut-xcb&quot;<br>
+ EXTRA_OECONF_nativesdk +=3D &quot;--without-xcb</b></div><div><b><br></b>=
</div><div>But the error is still there, from the error log i observer that=
 while compiling for libx11-native instead of using <b>&quot;EXTRA_OECONF_n=
ative&quot;</b>=A0as expected, it is taking arguments from <b>&quot;EXTRA_O=
ECONF&quot;</b>=A0only.=A0</div>
<div>The error log is as follows:</div><div><br></div><div><br></div><div><=
meta http-equiv=3D"content-type" content=3D"text/html; charset=3Dutf-8">NOT=
E: Executing autoreconf --verbose --install --force --exclude=3Dautopoint -=
I /home/sct/laverne-4.0.1/build/tmp/work/i686-linux/libx11-native-1_1.3.4-r=
0/libX11-1.3.4/m4/ -I/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/=
usr/share/aclocal-1.11 -I /home/sct/laverne-4.0.1/build/tmp/sysroots/i686-l=
inux/usr/share/aclocal<br>
autoreconf: Entering directory `.&#39;<br>autoreconf:=A0<a href=3D"http://c=
onfigure.ac/" target=3D"_blank">configure.ac</a>: not using Gettext<br>auto=
reconf: running: aclocal -I /home/sct/laverne-4.0.1/build/tmp/work/i686-lin=
ux/libx11-native-1_1.3.4-r0/libX11-1.3.4/m4/ -I /home/sct/laverne-4.0.1/bui=
ld/tmp/sysroots/i686-linux/usr/share/aclocal-1.11 -I /home/sct/laverne-4.0.=
1/build/tmp/sysroots/i686-linux/usr/share/aclocal -I /home/sct/laverne-4.0.=
1/build/tmp/work/i686-linux/libx11-native-1_1.3.4-r0/libX11-1.3.4/m4/ -I /h=
ome/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/aclocal-1.11 =
-I /home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/aclocal =
--force -I m4<br>
autoreconf:=A0<a href=3D"http://configure.ac/" target=3D"_blank">configure.=
ac</a>: tracing<br>autoreconf: running: libtoolize --copy --force<br>libtoo=
lize: putting auxiliary files in `.&#39;.<br>libtoolize: copying file `./lt=
main.sh&#39;<br>
libtoolize: putting macros in AC_CONFIG_MACRO_DIR, `m4&#39;.<br>libtoolize:=
 copying file `m4/libtool.m4&#39;<br>libtoolize: copying file `m4/ltoptions=
.m4&#39;<br>libtoolize: copying file `m4/ltsugar.m4&#39;<br>libtoolize: cop=
ying file `m4/ltversion.m4&#39;<br>
libtoolize: copying file `m4/lt~obsolete.m4&#39;<br>autoreconf: running: /h=
ome/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/bin/autoconf --incl=
ude=3D/home/sct/laverne-4.0.1/build/tmp/work/i686-linux/libx11-native-1_1.3=
.4-r0/libX11-1.3.4/m4/ --include=3D/home/sct/laverne-4.0.1/build/tmp/sysroo=
ts/i686-linux/usr/share/aclocal-1.11 --include=3D/home/sct/laverne-4.0.1/bu=
ild/tmp/sysroots/i686-linux/usr/share/aclocal --force --warnings=3Dcross<br=
>
autoreconf: running: /home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/=
usr/bin/autoheader --include=3D/home/sct/laverne-4.0.1/build/tmp/work/i686-=
linux/libx11-native-1_1.3.4-r0/libX11-1.3.4/m4/ --include=3D/home/sct/laver=
ne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/aclocal-1.11 --include=3D/=
home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/aclocal --fo=
rce --warnings=3Dcross<br>
autoreconf: running: automake --foreign --add-missing --copy --force-missin=
g --warnings=3Dcross<br>automake: unknown warning category `cross&#39;<br>a=
utoreconf: running: gnu-configize<br>autoreconf: Leaving directory `.&#39;<=
br>
NOTE: Running /home/sct/laverne-4.0.1/build/tmp/work/i686-linux/libx11-nati=
ve-1_1.3.4-r0/libX11-1.3.4/configure =A0=A0=A0 =A0=A0=A0 =A0=A0=A0=A0=A0=A0=
=A0=A0 --build=3Di686-linux =A0=A0=A0 =A0=A0=A0 =A0 --host=3Di686-linux =A0=
=A0=A0 =A0=A0=A0 =A0 --target=3Di686-linux =A0=A0=A0 =A0=A0=A0 =A0 --prefix=
=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr =A0=A0=A0 =A0=
=A0=A0 =A0 --exec_prefix=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-=
linux/usr =A0=A0=A0 =A0=A0=A0 =A0 --bindir=3D/home/sct/laverne-4.0.1/build/=
tmp/sysroots/i686-linux/usr/bin =A0=A0=A0 =A0=A0=A0 =A0 --sbindir=3D/home/s=
ct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/sbin =A0=A0=A0 =A0=A0=A0=
 =A0 --libexecdir=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/u=
sr/libexec =A0=A0=A0 =A0=A0=A0 =A0 --datadir=3D/home/sct/laverne-4.0.1/buil=
d/tmp/sysroots/i686-linux/usr/share =A0=A0=A0 =A0=A0=A0 =A0 --sysconfdir=3D=
/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/etc =A0=A0=A0 =A0=A0=
=A0 =A0 --sharedstatedir=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-=
linux/com =A0=A0=A0 =A0=A0=A0 =A0 --localstatedir=3D/home/sct/laverne-4.0.1=
/build/tmp/sysroots/i686-linux/var =A0=A0=A0 =A0=A0=A0 =A0 --libdir=3D/home=
/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/lib =A0=A0=A0 =A0=A0=
=A0 =A0 --includedir=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linu=
x/usr/include =A0=A0=A0 =A0=A0=A0 =A0 --oldincludedir=3D/home/sct/laverne-4=
.0.1/build/tmp/sysroots/i686-linux/usr/include =A0=A0=A0 =A0=A0=A0 =A0 --in=
fodir=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/i686-linux/usr/share/inf=
o =A0=A0=A0 =A0=A0=A0 =A0 --mandir=3D/home/sct/laverne-4.0.1/build/tmp/sysr=
oots/i686-linux/usr/share/man =A0=A0=A0 =A0=A0=A0 =A0=A0=A0 --enable-malloc=
0returnsnull --with-keysymdef=3D/home/sct/laverne-4.0.1/build/tmp/sysroots/=
i686-linux/usr/include/X11/keysymdef.h=A0 <b>--with-xcb</b> =A0=A0=A0 =A0=
=A0=A0 =A0=A0=A0 ...<br>
checking build system type... i686-pc-linux-gnu<br>checking host system typ=
e... i686-pc-linux-gnu</div><div>:</div><meta http-equiv=3D"content-type" c=
ontent=3D"text/html; charset=3Dutf-8"><div>:</div><div>:</div><div>checking=
 minix/config.h usability... no</div>
<div>checking minix/config.h presence... no<br>checking for minix/config.h.=
.. no<br>checking whether it is safe to define __EXTENSIONS__... yes<br>che=
cking for gcc option to accept ISO C99... -std=3Dgnu99<br>checking for i686=
-linux-pkg-config... no<br>
checking for pkg-config... /home/sct/laverne-4.0.1/build/tmp/sysroots/i686-=
linux/usr/bin/pkg-config<br>checking pkg-config is at least version 0.9.0..=
. yes<br>checking for a sed that does not truncate output... /bin/sed<br>
checking whether to build functional specifications... yes<br>checking for =
groff... /usr/bin/groff<br>checking for /usr/bin/groff -ms macros... no<br>=
checking for /usr/bin/groff -mm macros... no<br>checking for gs... /usr/bin=
/gs<br>
checking for pnmtopng... no<br>checking for psselect... no<br>configure: WA=
RNING: grohtml dependencies not found - HTML Documentation skipped. Refer t=
o grohtml man pages</div><div>:</div><div>:</div><div><b>checking whether t=
o use XCB... (cached) yes</b><br>
checking for i686-linux-pkg-config... (cached) /home/sct/laverne-4.0.1/buil=
d/tmp/sysroots/i686-linux/usr/bin/pkg-config<br>checking pkg-config is at l=
east version 0.9.0... yes<br>:</div><div>:</div><div>checking if loadable i=
18n module support should be enabled... no</div>
<div>checking if loadable Xcursor library support should be enabled... yes<=
br>checking for ANSI C header files... (cached) yes<br>checking sys/select.=
h usability... yes<br>checking sys/select.h presence... yes<br>checking for=
 sys/select.h... yes<br>
checking for strtol... yes<br>checking for issetugid... no<br>checking for =
getresuid... yes<br>checking for shmat... yes<br>checking for launchd... no=
<br>checking for getpwuid_r in -lc... yes<br>checking for pthread_self in -=
lc... yes<br>
checking for poll... yes<br>/home/sct/laverne-4.0.1/build/tmp/sysroots/i686=
-linux/usr/include/X11/keysymdef.h<br>checking if XLOCALEDIR support should=
 be enabled... yes<br>checking for BIGFONT... yes<br>checking for stdlib.h.=
.. (cached) yes<br>
checking for unistd.h... (cached) yes<br>checking for sys/param.h... yes<br=
>checking for getpagesize... yes<br>checking for working mmap... yes<br>che=
cking for nl_langinfo... yes<br><b>checking for X11... no</b><br><b>configu=
re: error: Package requirements (xproto &gt;=3D 7.0.13 xextproto xtrans xcb=
 &gt;=3D 1.1.92 kbproto inputproto) were not met:<br>
<br>No package &#39;xcb&#39; found<br></b><br>Consider adjusting the PKG_CO=
NFIG_PATH environment variable if you<br>installed software in a non-standa=
rd prefix.<br><br>Alternatively, you may set the environment variables X11_=
CFLAGS<br>
and X11_LIBS to avoid the need to call pkg-config.<br>See the pkg-config ma=
n page for more details.<br>FATAL: oe_runconf failed<br>ERROR: Task failed:=
 (&#39;function do_configure failed&#39;, &#39;/home/sct/laverne-4.0.1/buil=
d/tmp/work/i686-linux/libx11-native-1_1.3.4-r0/temp/log.do_configure.24052&=
#39;)<br clear=3D"all">
</div><div><br></div><div>Can any one suggest, what am i doing wrong or how=
 can this error be solved.=A0</div><div><br><div class=3D"gmail_quote">On T=
ue, Apr 5, 2011 at 2:33 PM, chinmaya hoshing <span dir=3D"ltr">&lt;<a href=
=3D"mailto:cahoshing@gmail.com">cahoshing@gmail.com</a>&gt;</span> wrote:<b=
r>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;"><div dir=3D"ltr"><div>Hi,</div><div><br></d=
iv><div>Thanks for the reply Yu Ke.I have made changes as per said by you,b=
ut still getting the same error</div>
<div>Regarding the Error no xcb found in libx11 library</div><div>Following=
 is the my libx11 bb file : --</div>
<div><br></div><div>+++++++++++++++++++++++++++++++++++++++++++++++++++++++=
++++++++++++++</div><div>require libx11.inc</div><div><br></div><div>LICENS=
E =3D &quot;MIT &amp; MIT-style &amp; BSD&quot;</div><div>LIC_FILES_CHKSUM =
=3D &quot;file://COPYING;md5=3Dbf75bfe4d05068311b5e6862d4b5f2c5&quot;</div>

<div><br></div><div>PE =3D &quot;1&quot;</div><div>PR =3D &quot;r0&quot;</d=
iv><div class=3D"im"><div><br></div><div>SRC_URI +=3D &quot;file://x11_disa=
ble_makekeys.patch \</div></div><div>=A0=A0 =A0 =A0 =A0 =A0 =A0file://nodol=
t.patch \</div><div>
=A0=A0 =A0 =A0 =A0 =A0 =A0file://include_fix.patch&quot;</div><div class=3D=
"im">
<div><br></div><div>DEPENDS +=3D &quot;bigreqsproto xproto xextproto xtrans=
 libxau xcmiscproto \</div><div>=A0=A0 =A0 =A0 =A0 =A0 =A0libxdmcp xf86bigf=
ontproto kbproto inputproto xproto-native gettext&quot;</div><div><br></div=
></div><div>
EXTRA_OECONF +=3D &quot;--with-xcb&quot;</div><div class=3D"im">
<div>EXTRA_OECONF_native +=3D &quot;--without-xcb&quot;</div><div><br></div=
><div>BBCLASSEXTEND =3D &quot;native nativesdk&quot;</div><div><br></div></=
div><div>++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++=
+++++++</div>

<div><br></div><div>But stiil getting the same error :--=A0</div><div class=
=3D"im"><div><br></div><div>| checking for sys/param.h... yes</div><div>| c=
hecking for getpagesize... yes</div><div>| checking for working mmap... yes=
</div>
<div>| checking for nl_langinfo... yes</div>
<div>| checking for X11... no</div><div>| configure: error: Package require=
ments (xproto &gt;=3D 7.0.13 xextproto xtrans xcb &gt;=3D 1.1.92 kbproto in=
putproto) were not met:</div><div>|=A0</div><div>| No package &#39;xcb&#39;=
 found</div>

<div>|=A0</div><div>| Consider adjusting the PKG_CONFIG_PATH environment va=
riable if you</div><div>| installed software in a non-standard prefix.</div=
><div>|=A0</div><div>| Alternatively, you may set the environment variables=
 X11_CFLAGS</div>

<div>| and X11_LIBS to avoid the need to call pkg-config.</div><div>| See t=
he pkg-config man page for more details.</div><div>| FATAL: oe_runconf fail=
ed</div></div><div>| ERROR: Task failed: (&#39;function do_configure failed=
&#39;, &#39;/home/sct/laverne_git/laverne-4.0.1/build/tmp/work/x86_64-linux=
/libx11-native-1_1.3.4-r0/temp/log.do_configure.16900&#39;)</div>
<div class=3D"im">
<div>NOTE: package libx11-native-1_1.3.4-r0: task do_configure: Failed</div=
></div><div>ERROR: Task 20 (virtual:native:/home/sct/laverne_git/laverne-4.=
0.1/meta/recipes-graphics/xorg-lib/<a href=3D"http://libx11_1.3.4.bb" targe=
t=3D"_blank">libx11_1.3.4.bb</a>, do_configure) failed with 1</div>

<div>ERROR: &#39;virtual:native:/home/sct/laverne_git/laverne-4.0.1/meta/re=
cipes-graphics/xorg-lib/<a href=3D"http://libx11_1.3.4.bb" target=3D"_blank=
">libx11_1.3.4.bb</a>&#39; failed</div><div><br></div><font color=3D"#88888=
8"><div>
Chinmaya=A0</div></font><div><div></div><div class=3D"h5"><div><br></div><d=
iv class=3D"gmail_quote">
On Sat, Apr 2, 2011 at 2:35 PM, Yu Ke <span dir=3D"ltr">&lt;<a href=3D"mail=
to:ke.yu@intel.com" target=3D"_blank">ke.yu@intel.com</a>&gt;</span> wrote:=
<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex">

<div><div></div><div>on 2011-4-2 15:46, Martin Jansa wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On Sat, Apr 02, 2011 at 11:35:08AM +0800, Yu Ke wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
on 2011-4-1 17:43, chinmaya hoshing wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi,<br>
<br>
I am trying to get X11 with libxcb file so accordingly I changed in the<br>
bb file of libx11,also I have included libxcb and xcb-utils as runtime<br>
dependencies<br>
<br>
Initially it was in libx11 bb file :--<br>
EXTRA_OECONF +=3D &quot;--without-xcb&quot;<br>
I changed it to<br>
EXTRA_OECONF +=3D &quot;--with-xcb&quot;<br>
<br>
Following is the error I get :-<br>
checking for unistd.h... (cached) yes<br>
| checking for sys/param.h... yes<br>
| checking for getpagesize... yes<br>
| checking for working mmap... yes<br>
| checking for nl_langinfo... yes<br>
| checking for X11... no<br>
| configure: error: Package requirements (xproto&gt;=3D 7.0.13 xextproto<br=
>
xtrans xcb&gt;=3D 1.1.92 kbproto inputproto) were not met:<br>
|<br>
| No package &#39;xcb&#39; found<br>
|<br>
| Consider adjusting the PKG_CONFIG_PATH environment variable if you<br>
| installed software in a non-standard prefix.<br>
|<br>
| Alternatively, you may set the environment variables X11_CFLAGS<br>
| and X11_LIBS to avoid the need to call pkg-config.<br>
| See the pkg-config man page for more details.<br>
| FATAL: oe_runconf failed<br>
| ERROR: Task failed: (&#39;function do_configure failed&#39;,<br>
&#39;/home/laverne-4.0.1/build/tmp/work/x86_64-linux/libx11-native-1_1.3.4-=
r0/temp/log.do_configure.13755&#39;)<br>
NOTE: package libx11-native-1_1.3.4-r0: task do_configure: Failed<br>
ERROR: Task 3573<br>
(virtual:native:/home/laverne-4.0.1/meta/recipes-graphics/xorg-lib/<a href=
=3D"http://libx11_1.3.4.bb" target=3D"_blank">libx11_1.3.4.bb</a><br>
&lt;<a href=3D"http://libx11_1.3.4.bb" target=3D"_blank">http://libx11_1.3.=
4.bb</a>&gt;, do_configure) failed with 1<br>
ERROR:<br>
&#39;virtual:native:/home/laverne-4.0.1/meta/recipes-graphics/xorg-lib/<a h=
ref=3D"http://libx11_1.3.4.bb" target=3D"_blank">libx11_1.3.4.bb</a><br>
&lt;<a href=3D"http://libx11_1.3.4.bb" target=3D"_blank">http://libx11_1.3.=
4.bb</a>&gt;&#39; failed<br>
<br>
I have libxcb_1.6 version ,also xproto is libxproto_7.0.17<br>
<br>
Please can =A0you help me to find the solution for it.<br>
<br>
Chinmaya<br>
<br>
<br>
</blockquote>
<br>
I see it is libx11-native do_configure failure, and the xcb-native is<br>
missing. that make sense because xcb recipes does not have BBCLASSEXTEND<br=
>
=3D &quot;native nativesdk&quot;, thus xcb is not built for native.<br>
<br>
I have tried to add BBCLASSEXTEND =3D &quot;native&quot; in xcb recipe, it =
turn out<br>
requiring more dependent recipes to be built for native, which is a bit<br>
way too far and undesirable.<br>
<br>
so let&#39;s try another way, since you only care about the runtime libx11<=
br>
with xcb support, how about the following patches, with which only<br>
native disable xcb, and the runtime libx11 will have xcb support.<br>
</blockquote>
<br>
Hi,<br>
<br>
for libx11-1.4.0 and newer --without-xcb is not an option anymore, so<br>
better to fix it with native xcb sooner than later, for details see<br>
<br>
d28cdb2d2e6c910afbaa14b17bd2c0003052df7d in openembedded/master<br>
and the rest of xorg/xcb recipes in openembedded :)<br>
<br>
Cheers,<br>
<br>
</blockquote>
<br></div></div>
In this case. your are right, native xcb should also be added. Will upgrade=
 it soon. Thanks for the info.<br>
<br>
Regards<br>
Ke<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><br>
</blockquote></div><br></div></div></div>
<br>_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><br>
<br></blockquote></div><br><br clear=3D"all"><br>-- <br><div><span style=3D=
"color:rgb(51, 51, 51);font-family:georgia, serif">Akshat=A0</span></div><d=
iv><br></div><br>
</div>

--001485e7c82a555f9004a06875c7--
