Return-Path: <cahoshing@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 63F1F4C80B7B
	for <poky@yoctoproject.org>; Fri,  1 Apr 2011 04:43:39 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gya6 with SMTP id 6so1733366gya.35
	for <poky@yoctoproject.org>; Fri, 01 Apr 2011 02:43:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=Jiq1pgtUJ3C6scxYiQ4haTvN3AxVv6T5hURO8K68ieQ=;
	b=uVW6p4PxMboXaHyGFl2zCB3rLbWd2g2mGCoeD4nJVUgogatlcOqM5Ct3uVACLfauNd
	J50l6vRLmLc3nd1F2yLOEyZVhjLUnt2cTX+m1K4AkSdv3GKHSPc4euolJs/T7xLboKBN
	VSJDJvV2gMF+bbtLyvKTCcePIxGs09dLCnwqY=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=v25SV3yv1G4pJfjkZkLEnI3VFjRCqnSW93zfCbjiDAOCBff7d42raX2O898/tLDXVS
	fIQOlKYfNbo9bjKkV+poQxa1SNtor0W7DgCnh3AjXwn7BAoibpAO0hjCbRiDiInw46Q7
	C/kzb0fuQAZ0LXhRNq2uXQK5Zq7dmdq8fgxHc=
MIME-Version: 1.0
Received: by 10.151.117.12 with SMTP id u12mr3992001ybm.142.1301651018668;
	Fri, 01 Apr 2011 02:43:38 -0700 (PDT)
Received: by 10.147.114.3 with HTTP; Fri, 1 Apr 2011 02:43:38 -0700 (PDT)
Date: Fri, 1 Apr 2011 15:13:38 +0530
Message-ID: <AANLkTi=KYP7eC05UOX3as0A6xFZE31VQXPZL3ehrwzuh@mail.gmail.com>
From: chinmaya hoshing <cahoshing@gmail.com>
To: poky@yoctoproject.org
Subject: Error while trying to pull xcb with X11
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
X-List-Received-Date: Fri, 01 Apr 2011 09:43:39 -0000
Content-Type: multipart/alternative; boundary=001e680f177c96db2d049fd83e96

--001e680f177c96db2d049fd83e96
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am trying to get X11 with libxcb file so accordingly I changed in the bb
file of libx11,also I have included libxcb and xcb-utils as runtime
dependencies

Initially it was in libx11 bb file :--
EXTRA_OECONF += "--without-xcb"
I changed it to
EXTRA_OECONF += "--with-xcb"

Following is the error I get :-
checking for unistd.h... (cached) yes
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
'/home/laverne-4.0.1/build/tmp/work/x86_64-linux/libx11-native-1_1.3.4-r0/temp/log.do_configure.13755')
NOTE: package libx11-native-1_1.3.4-r0: task do_configure: Failed
ERROR: Task 3573
(virtual:native:/home/laverne-4.0.1/meta/recipes-graphics/xorg-lib/
libx11_1.3.4.bb, do_configure) failed with 1
ERROR: 'virtual:native:/home/laverne-4.0.1/meta/recipes-graphics/xorg-lib/
libx11_1.3.4.bb' failed

I have libxcb_1.6 version ,also xproto is libxproto_7.0.17

Please can  you help me to find the solution for it.

Chinmaya

--001e680f177c96db2d049fd83e96
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I am trying to get X11 w=
ith libxcb file so accordingly I changed in the bb file of libx11,also I ha=
ve included libxcb and xcb-utils as runtime dependencies =A0</div><div><br>=
</div>
<div>Initially it was in libx11 bb file :--</div><div>EXTRA_OECONF +=3D &qu=
ot;--without-xcb&quot;</div><div>I changed it to=A0</div><div>EXTRA_OECONF =
+=3D &quot;--with-xcb&quot;</div><div><br></div><div>Following is the error=
 I get :- =A0</div>
<div>checking for unistd.h... (cached) yes</div><div>| checking for sys/par=
am.h... yes</div><div>| checking for getpagesize... yes</div><div>| checkin=
g for working mmap... yes</div><div>| checking for nl_langinfo... yes</div>
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
 &#39;/home/laverne-4.0.1/build/tmp/work/x86_64-linux/libx11-native-1_1.3.4=
-r0/temp/log.do_configure.13755&#39;)</div>
<div>NOTE: package libx11-native-1_1.3.4-r0: task do_configure: Failed</div=
><div>ERROR: Task 3573 (virtual:native:/home/laverne-4.0.1/meta/recipes-gra=
phics/xorg-lib/<a href=3D"http://libx11_1.3.4.bb">libx11_1.3.4.bb</a>, do_c=
onfigure) failed with 1</div>
<div>ERROR: &#39;virtual:native:/home/laverne-4.0.1/meta/recipes-graphics/x=
org-lib/<a href=3D"http://libx11_1.3.4.bb">libx11_1.3.4.bb</a>&#39; failed<=
/div><div><br></div><div>I have libxcb_1.6 version ,also xproto is libxprot=
o_7.0.17=A0</div>
<div><br></div><div>Please can =A0you help me to find the solution for it.<=
/div><div><br></div><div>Chinmaya</div></div>

--001e680f177c96db2d049fd83e96--
