Return-Path: <cahoshing@gmail.com>
Received: from mail-pv0-f176.google.com (mail-pv0-f176.google.com
	[74.125.83.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6F15C4C800A2
	for <poky@yoctoproject.org>; Tue,  5 Apr 2011 04:03:53 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pve37 with SMTP id 37so83693pve.35
	for <poky@yoctoproject.org>; Tue, 05 Apr 2011 02:03:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=nbxVjdc/ee5hJH7QyNHoOi+BVYXUKxwiIdcsQvswYsE=;
	b=WenZiIXKGBXQcO3XaDfy5d6QN7hUGG2i2AV2L9rmMZRXu3WT426V2ar+ZW6xv/oDiY
	XRumaYfFyCtst4hy1ytNiQ6gBlUzrI+hHCkU2vQKtTyWtn/FzqxTlBc89F7Vfwje8efD
	qGy89vGV8eOb3RUc6PGZ+3d0hKOzSgjdCEb04=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=GMoNivO82/GvOYgc4SsQsjT/swrZzy52M/9oHa3v6AXX8eg0rc33MCSmzDN6nv6kGl
	FDYAXN/yWKYrRiqNYeljHNvVp3dovlIpVnU8gAzhclre9madIeBFB2DhhKTwYSYO1gZ/
	MkD7hnd8wAQbo+cawccszb/chIR3qszYevSGE=
MIME-Version: 1.0
Received: by 10.142.136.3 with SMTP id j3mr7789877wfd.24.1301994232866; Tue,
	05 Apr 2011 02:03:52 -0700 (PDT)
Received: by 10.142.100.18 with HTTP; Tue, 5 Apr 2011 02:03:52 -0700 (PDT)
In-Reply-To: <4D96E6C5.5010800@intel.com>
References: <AANLkTi=KYP7eC05UOX3as0A6xFZE31VQXPZL3ehrwzuh@mail.gmail.com>
	<4D96996C.7010601@intel.com> <20110402074649.GA27265@jama.jama.net>
	<4D96E6C5.5010800@intel.com>
Date: Tue, 5 Apr 2011 14:33:52 +0530
Message-ID: <BANLkTinY9yzN-uR1vK_em9hX2R_2is9E7A@mail.gmail.com>
From: chinmaya hoshing <cahoshing@gmail.com>
To: Yu Ke <ke.yu@intel.com>
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
X-List-Received-Date: Tue, 05 Apr 2011 09:03:53 -0000
Content-Type: multipart/alternative; boundary=000e0cd14a02bfebb804a0282784

--000e0cd14a02bfebb804a0282784
Content-Type: text/plain; charset=ISO-8859-1

Hi,

Thanks for the reply Yu Ke.I have made changes as per said by you,but still
getting the same error
Regarding the Error no xcb found in libx11 library
Following is the my libx11 bb file : --

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
require libx11.inc

LICENSE = "MIT & MIT-style & BSD"
LIC_FILES_CHKSUM = "file://COPYING;md5=bf75bfe4d05068311b5e6862d4b5f2c5"

PE = "1"
PR = "r0"

SRC_URI += "file://x11_disable_makekeys.patch \
            file://nodolt.patch \
            file://include_fix.patch"

DEPENDS += "bigreqsproto xproto xextproto xtrans libxau xcmiscproto \
            libxdmcp xf86bigfontproto kbproto inputproto xproto-native
gettext"

EXTRA_OECONF += "--with-xcb"
EXTRA_OECONF_native += "--without-xcb"

BBCLASSEXTEND = "native nativesdk"

+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

But stiil getting the same error :--

| checking for sys/param.h... yes
| checking for getpagesize... yes
| checking for working mmap... yes
| checking for nl_langinfo... yes
| checking for X11... no
| configure: error: Package requirements (xproto >= 7.0.13 xextproto xtrans
xcb >= 1.1.92 kbproto inputproto) were not met:
|
| No package 'xcb' found
|
| Consider adjusting the PKG_CONFIG_PATH environment variable if you
| installed software in a non-standard prefix.
|
| Alternatively, you may set the environment variables X11_CFLAGS
| and X11_LIBS to avoid the need to call pkg-config.
| See the pkg-config man page for more details.
| FATAL: oe_runconf failed
| ERROR: Task failed: ('function do_configure failed',
'/home/sct/laverne_git/laverne-4.0.1/build/tmp/work/x86_64-linux/libx11-native-1_1.3.4-r0/temp/log.do_configure.16900')
NOTE: package libx11-native-1_1.3.4-r0: task do_configure: Failed
ERROR: Task 20
(virtual:native:/home/sct/laverne_git/laverne-4.0.1/meta/recipes-graphics/xorg-lib/
libx11_1.3.4.bb, do_configure) failed with 1
ERROR:
'virtual:native:/home/sct/laverne_git/laverne-4.0.1/meta/recipes-graphics/xorg-lib/
libx11_1.3.4.bb' failed

Chinmaya

On Sat, Apr 2, 2011 at 2:35 PM, Yu Ke <ke.yu@intel.com> wrote:

> on 2011-4-2 15:46, Martin Jansa wrote:
>
>> On Sat, Apr 02, 2011 at 11:35:08AM +0800, Yu Ke wrote:
>>
>>> on 2011-4-1 17:43, chinmaya hoshing wrote:
>>>
>>>> Hi,
>>>>
>>>> I am trying to get X11 with libxcb file so accordingly I changed in the
>>>> bb file of libx11,also I have included libxcb and xcb-utils as runtime
>>>> dependencies
>>>>
>>>> Initially it was in libx11 bb file :--
>>>> EXTRA_OECONF += "--without-xcb"
>>>> I changed it to
>>>> EXTRA_OECONF += "--with-xcb"
>>>>
>>>> Following is the error I get :-
>>>> checking for unistd.h... (cached) yes
>>>> | checking for sys/param.h... yes
>>>> | checking for getpagesize... yes
>>>> | checking for working mmap... yes
>>>> | checking for nl_langinfo... yes
>>>> | checking for X11... no
>>>> | configure: error: Package requirements (xproto>= 7.0.13 xextproto
>>>> xtrans xcb>= 1.1.92 kbproto inputproto) were not met:
>>>> |
>>>> | No package 'xcb' found
>>>> |
>>>> | Consider adjusting the PKG_CONFIG_PATH environment variable if you
>>>> | installed software in a non-standard prefix.
>>>> |
>>>> | Alternatively, you may set the environment variables X11_CFLAGS
>>>> | and X11_LIBS to avoid the need to call pkg-config.
>>>> | See the pkg-config man page for more details.
>>>> | FATAL: oe_runconf failed
>>>> | ERROR: Task failed: ('function do_configure failed',
>>>>
>>>> '/home/laverne-4.0.1/build/tmp/work/x86_64-linux/libx11-native-1_1.3.4-r0/temp/log.do_configure.13755')
>>>> NOTE: package libx11-native-1_1.3.4-r0: task do_configure: Failed
>>>> ERROR: Task 3573
>>>> (virtual:native:/home/laverne-4.0.1/meta/recipes-graphics/xorg-lib/
>>>> libx11_1.3.4.bb
>>>> <http://libx11_1.3.4.bb>, do_configure) failed with 1
>>>> ERROR:
>>>> 'virtual:native:/home/laverne-4.0.1/meta/recipes-graphics/xorg-lib/
>>>> libx11_1.3.4.bb
>>>> <http://libx11_1.3.4.bb>' failed
>>>>
>>>> I have libxcb_1.6 version ,also xproto is libxproto_7.0.17
>>>>
>>>> Please can  you help me to find the solution for it.
>>>>
>>>> Chinmaya
>>>>
>>>>
>>>>
>>> I see it is libx11-native do_configure failure, and the xcb-native is
>>> missing. that make sense because xcb recipes does not have BBCLASSEXTEND
>>> = "native nativesdk", thus xcb is not built for native.
>>>
>>> I have tried to add BBCLASSEXTEND = "native" in xcb recipe, it turn out
>>> requiring more dependent recipes to be built for native, which is a bit
>>> way too far and undesirable.
>>>
>>> so let's try another way, since you only care about the runtime libx11
>>> with xcb support, how about the following patches, with which only
>>> native disable xcb, and the runtime libx11 will have xcb support.
>>>
>>
>> Hi,
>>
>> for libx11-1.4.0 and newer --without-xcb is not an option anymore, so
>> better to fix it with native xcb sooner than later, for details see
>>
>> d28cdb2d2e6c910afbaa14b17bd2c0003052df7d in openembedded/master
>> and the rest of xorg/xcb recipes in openembedded :)
>>
>> Cheers,
>>
>>
> In this case. your are right, native xcb should also be added. Will upgrade
> it soon. Thanks for the info.
>
> Regards
> Ke
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--000e0cd14a02bfebb804a0282784
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>Thanks for the reply Yu =
Ke.I have made changes as per said by you,but still getting the same error<=
/div><div>Regarding the Error no xcb found in libx11 library</div><div>Foll=
owing is the my libx11 bb file : --</div>
<div><br></div><div>+++++++++++++++++++++++++++++++++++++++++++++++++++++++=
++++++++++++++</div><div>require libx11.inc</div><div><br></div><div>LICENS=
E =3D &quot;MIT &amp; MIT-style &amp; BSD&quot;</div><div>LIC_FILES_CHKSUM =
=3D &quot;file://COPYING;md5=3Dbf75bfe4d05068311b5e6862d4b5f2c5&quot;</div>
<div><br></div><div>PE =3D &quot;1&quot;</div><div>PR =3D &quot;r0&quot;</d=
iv><div><br></div><div>SRC_URI +=3D &quot;file://x11_disable_makekeys.patch=
 \</div><div>=A0=A0 =A0 =A0 =A0 =A0 =A0file://nodolt.patch \</div><div>=A0=
=A0 =A0 =A0 =A0 =A0 =A0file://include_fix.patch&quot;</div>
<div><br></div><div>DEPENDS +=3D &quot;bigreqsproto xproto xextproto xtrans=
 libxau xcmiscproto \</div><div>=A0=A0 =A0 =A0 =A0 =A0 =A0libxdmcp xf86bigf=
ontproto kbproto inputproto xproto-native gettext&quot;</div><div><br></div=
><div>EXTRA_OECONF +=3D &quot;--with-xcb&quot;</div>
<div>EXTRA_OECONF_native +=3D &quot;--without-xcb&quot;</div><div><br></div=
><div>BBCLASSEXTEND =3D &quot;native nativesdk&quot;</div><div><br></div><d=
iv>++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++=
+</div>
<div><br></div><div>But stiil getting the same error :--=A0</div><div><br><=
/div><div>| checking for sys/param.h... yes</div><div>| checking for getpag=
esize... yes</div><div>| checking for working mmap... yes</div><div>| check=
ing for nl_langinfo... yes</div>
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
ed</div><div>| ERROR: Task failed: (&#39;function do_configure failed&#39;,=
 &#39;/home/sct/laverne_git/laverne-4.0.1/build/tmp/work/x86_64-linux/libx1=
1-native-1_1.3.4-r0/temp/log.do_configure.16900&#39;)</div>
<div>NOTE: package libx11-native-1_1.3.4-r0: task do_configure: Failed</div=
><div>ERROR: Task 20 (virtual:native:/home/sct/laverne_git/laverne-4.0.1/me=
ta/recipes-graphics/xorg-lib/<a href=3D"http://libx11_1.3.4.bb">libx11_1.3.=
4.bb</a>, do_configure) failed with 1</div>
<div>ERROR: &#39;virtual:native:/home/sct/laverne_git/laverne-4.0.1/meta/re=
cipes-graphics/xorg-lib/<a href=3D"http://libx11_1.3.4.bb">libx11_1.3.4.bb<=
/a>&#39; failed</div><div><br></div><div>Chinmaya=A0</div><div><br></div><d=
iv class=3D"gmail_quote">
On Sat, Apr 2, 2011 at 2:35 PM, Yu Ke <span dir=3D"ltr">&lt;<a href=3D"mail=
to:ke.yu@intel.com">ke.yu@intel.com</a>&gt;</span> wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex;">
<div><div></div><div class=3D"h5">on 2011-4-2 15:46, Martin Jansa wrote:<br=
>
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
</blockquote></div><br></div>

--000e0cd14a02bfebb804a0282784--
