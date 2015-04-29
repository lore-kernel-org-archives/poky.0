Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D66D2E009A5; Wed, 29 Apr 2015 02:06:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qc0-f169.google.com (mail-qc0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D1E8E00932
	for <poky@yoctoproject.org>; Wed, 29 Apr 2015 02:06:53 -0700 (PDT)
Received: by qcrf4 with SMTP id f4so9897639qcr.0
	for <poky@yoctoproject.org>; Wed, 29 Apr 2015 02:06:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=YlD+R7sRk6motMVjXLUpdV35rw7gUOURbacvAfB4hCk=;
	b=BhX3cxm78YsN7VagjkggNB7wFtm6WZD+q36V3jvwcmonPCnbDfcqx4ny/cUdoMjrKn
	9J4CBsMfFg/m0an7w9FhQZY0nta7B9ViEXgD6exby/ElwQgRRzS7qaYcY7FlVMyUXNDp
	nIT4OdwwWhc0tgzUXJ0jua68P5ysLqtV+GzxUeQq49FPqA4vf8n5p9QfKGViRjKXOFdz
	GknTsKGMadYUJD9FuacXERaqE2Vx4/Zx+CeCHcKcbTpVQMiLOVWunMdWkdyX6eix8IdW
	ZAwGOsATCdpcob/9AjL8JjYKeB1lNKLPQxk9CQwsdJPtqkUBUONfK4O9/Fueo0y/3zpz
	58Jw==
X-Gm-Message-State: ALoCoQkyl2nx2AZkmPidoHvpHA+LwtVWnblJoSyI0IY84iyW6a8FxXXDm1FQNlzwTBaVSL3c/IsC
X-Received: by 10.140.216.5 with SMTP id m5mr16646074qhb.52.1430298412440;
	Wed, 29 Apr 2015 02:06:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Wed, 29 Apr 2015 02:06:31 -0700 (PDT)
In-Reply-To: <55406F69.6000800@windriver.com>
References: <cover.1427771410.git.liezhi.yang@windriver.com>
	<a1983ae884075e94cecc258a33304a0da5b2cbe5.1427771410.git.liezhi.yang@windriver.com>
	<55406F69.6000800@windriver.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 29 Apr 2015 10:06:31 +0100
Message-ID: <CAJTo0LYBuj_tyx_vHE6haAPGt0=RZ1UWzuDu--8fijqwRBE1Eg@mail.gmail.com>
To: Robert Yang <liezhi.yang@windriver.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] maintainers.inc: update MAINTAINERS
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
X-List-Received-Date: Wed, 29 Apr 2015 09:06:56 -0000
Content-Type: multipart/alternative; boundary=001a11354e68cbebab0514d94cea

--001a11354e68cbebab0514d94cea
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

This doesn't apply to master anymore, can you refresh it?

Ross

2015-04-29 6:43 GMT+01:00 Robert Yang <liezhi.yang@windriver.com>:

> ping.
>
> // Robert
>
>
> On 03/31/2015 11:13 AM, Robert Yang wrote:
>
>> Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
>> ---
>>   meta-yocto/conf/distro/include/maintainers.inc |   58
>> ++++++++++++------------
>>   1 file changed, 29 insertions(+), 29 deletions(-)
>>
>> diff --git a/meta-yocto/conf/distro/include/maintainers.inc
>> b/meta-yocto/conf/distro/include/maintainers.inc
>> index c4e281e..ad1a9d9 100644
>> --- a/meta-yocto/conf/distro/include/maintainers.inc
>> +++ b/meta-yocto/conf/distro/include/maintainers.inc
>> @@ -27,7 +27,7 @@
>>   #
>>   # Please keep this list in alphabetical order.
>>   #
>> -RECIPE_MAINTAINER_pn-acl =3D "Chong Lu <Chong.Lu@windriver.com>"
>> +RECIPE_MAINTAINER_pn-acl =3D "Chen Qi <Qi.Chen@windriver.com>"
>>   RECIPE_MAINTAINER_pn-acpid =3D "An=C3=ADbal Lim=C3=B3n <
>> anibal.limon@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-adt-installer =3D "Jessica Zhang <
>> jessica.zhang@intel.com>"
>>   RECIPE_MAINTAINER_pn-alsa-lib =3D "Cristian Iorga <
>> cristian.iorga@intel.com>"
>> @@ -41,10 +41,10 @@ RECIPE_MAINTAINER_pn-apr-util =3D "Hongxu Jia <
>> hongxu.jia@windriver.com>"
>>   RECIPE_MAINTAINER_pn-apt =3D "An=C3=ADbal Lim=C3=B3n <anibal.limon@lin=
ux.intel.com
>> >"
>>   RECIPE_MAINTAINER_pn-aspell =3D "Alejandro Hernandez <
>> alejandro.hernandez@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-atk =3D "Ross Burton <ross.burton@intel.com>"
>> -RECIPE_MAINTAINER_pn-at =3D "Chong Lu <Chong.Lu@windriver.com>"
>> +RECIPE_MAINTAINER_pn-at =3D "Chen Qi <Qi.Chen@windriver.com>"
>>   RECIPE_MAINTAINER_pn-at-spi2-atk =3D "Ross Burton <ross.burton@intel.c=
om
>> >"
>>   RECIPE_MAINTAINER_pn-at-spi2-core =3D "Ross Burton <ross.burton@intel.=
com
>> >"
>> -RECIPE_MAINTAINER_pn-attr =3D "Chong Lu <Chong.Lu@windriver.com>"
>> +RECIPE_MAINTAINER_pn-attr =3D "Chen Qi <Qi.Chen@windriver.com>"
>>   RECIPE_MAINTAINER_pn-augeas =3D "Paul Eggleton <
>> paul.eggleton@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-autoconf =3D "Robert Yang <liezhi.yang@windriver.=
com
>> >"
>>   RECIPE_MAINTAINER_pn-autogen =3D "Robert Yang <liezhi.yang@windriver.c=
om
>> >"
>> @@ -57,11 +57,11 @@ RECIPE_MAINTAINER_pn-base-passwd =3D "Saul Wold <
>> sgw@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-bash =3D "Hongxu Jia <hongxu.jia@windriver.com>"
>>   RECIPE_MAINTAINER_pn-bc =3D "Alejandro Hernandez <
>> alejandro.hernandez@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-bdwgc =3D "Richard Purdie <
>> richard.purdie@linuxfoundation.org>"
>> -RECIPE_MAINTAINER_pn-beecrypt =3D "Chong Lu <Chong.Lu@windriver.com>"
>> +RECIPE_MAINTAINER_pn-beecrypt =3D "Chen Qi <Qi.Chen@windriver.com>"
>>   RECIPE_MAINTAINER_pn-bigreqsproto =3D "Saul Wold <sgw@linux.intel.com>=
"
>>   RECIPE_MAINTAINER_pn-bind =3D "Kai Kang <kai.kang@windriver.com>"
>>   RECIPE_MAINTAINER_pn-binutils =3D "Robert Yang <liezhi.yang@windriver.=
com
>> >"
>> -RECIPE_MAINTAINER_pn-bison =3D "Chong Lu <Chong.Lu@windriver.com>"
>> +RECIPE_MAINTAINER_pn-bison =3D "Chen Qi <Qi.Chen@windriver.com>"
>>   RECIPE_MAINTAINER_pn-blktool =3D "Paul Eggleton <
>> paul.eggleton@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-blktrace =3D "Tom Zanussi <tom.zanussi@intel.com>=
"
>>   RECIPE_MAINTAINER_pn-bluez4 =3D "Cristian Iorga <cristian.iorga@intel.=
com
>> >"
>> @@ -72,7 +72,7 @@ RECIPE_MAINTAINER_pn-btrfs-tools =3D "Richard Purdie
>> <richard.purdie@linuxfoundati
>>   RECIPE_MAINTAINER_pn-build-appliance-image =3D "Saul Wold <
>> sgw@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-builder =3D "Saul Wold <sgw@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-busybox =3D "Chen Qi <Qi.Chen@windriver.com>"
>> -RECIPE_MAINTAINER_pn-byacc =3D "Chong Lu <Chong.Lu@windriver.com>"
>> +RECIPE_MAINTAINER_pn-byacc =3D "Chen Qi <Qi.Chen@windriver.com>"
>>   RECIPE_MAINTAINER_pn-bzip2 =3D "Chen Qi <Qi.Chen@windriver.com>"
>>   RECIPE_MAINTAINER_pn-ca-certificates =3D "Saul Wold <sgw@linux.intel.c=
om
>> >"
>>   RECIPE_MAINTAINER_pn-cairo =3D "Ross Burton <ross.burton@intel.com>"
>> @@ -118,19 +118,19 @@ RECIPE_MAINTAINER_pn-cracklib =3D "Hongxu Jia <
>> hongxu.jia@windriver.com>"
>>   RECIPE_MAINTAINER_pn-createrepo =3D "Hongxu Jia <hongxu.jia@windriver.=
com
>> >"
>>   RECIPE_MAINTAINER_pn-cronie =3D "Alejandro Hernandez <
>> alejandro.hernandez@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-cross-localedef-native =3D "Saul Wold <
>> sgw@linux.intel.com>"
>> -RECIPE_MAINTAINER_pn-cups =3D "Chong Lu <Chong.Lu@windriver.com>"
>> +RECIPE_MAINTAINER_pn-cups =3D "Chen Qi <Qi.Chen@windriver.com>"
>>   RECIPE_MAINTAINER_pn-curl =3D "Chen Qi <Qi.Chen@windriver.com>"
>>   RECIPE_MAINTAINER_pn-cwautomacros =3D "Cristian Iorga <
>> cristian.iorga@intel.com>"
>>   RECIPE_MAINTAINER_pn-damageproto =3D "Ross Burton <ross.burton@intel.c=
om
>> >"
>>   RECIPE_MAINTAINER_pn-db =3D "Cristian Iorga <cristian.iorga@intel.com>=
"
>> -RECIPE_MAINTAINER_pn-dbus =3D "Chong Lu <Chong.Lu@windriver.com>"
>> -RECIPE_MAINTAINER_pn-dbus-glib =3D "Chong Lu <Chong.Lu@windriver.com>"
>> -RECIPE_MAINTAINER_pn-dbus-test =3D "Chong Lu <Chong.Lu@windriver.com>"
>> -RECIPE_MAINTAINER_pn-dbus-wait =3D "Chong Lu <Chong.Lu@windriver.com>"
>> +RECIPE_MAINTAINER_pn-dbus =3D "Chen Qi <Qi.Chen@windriver.com>"
>> +RECIPE_MAINTAINER_pn-dbus-glib =3D "Chen Qi <Qi.Chen@windriver.com>"
>> +RECIPE_MAINTAINER_pn-dbus-test =3D "Chen Qi <Qi.Chen@windriver.com>"
>> +RECIPE_MAINTAINER_pn-dbus-wait =3D "Chen Qi <Qi.Chen@windriver.com>"
>>   RECIPE_MAINTAINER_pn-desktop-file-utils-native =3D "Saul Wold <
>> sgw@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-dhcp =3D "Hongxu Jia <hongxu.jia@windriver.com>"
>> -RECIPE_MAINTAINER_pn-diffstat =3D "Chong Lu <Chong.Lu@windriver.com>"
>> -RECIPE_MAINTAINER_pn-diffutils =3D "Chong Lu <Chong.Lu@windriver.com>"
>> +RECIPE_MAINTAINER_pn-diffstat =3D "Chen Qi <Qi.Chen@windriver.com>"
>> +RECIPE_MAINTAINER_pn-diffutils =3D "Chen Qi <Qi.Chen@windriver.com>"
>>   RECIPE_MAINTAINER_pn-directfb-examples =3D "Hongxu Jia <
>> hongxu.jia@windriver.com>"
>>   RECIPE_MAINTAINER_pn-directfb =3D "Hongxu Jia <hongxu.jia@windriver.co=
m>"
>>   RECIPE_MAINTAINER_pn-distcc =3D "Hongxu Jia <hongxu.jia@windriver.com>=
"
>> @@ -164,12 +164,12 @@ RECIPE_MAINTAINER_pn-file =3D "Robert Yang <
>> liezhi.yang@windriver.com>"
>>   RECIPE_MAINTAINER_pn-findutils =3D "Chen Qi <Qi.Chen@windriver.com>"
>>   RECIPE_MAINTAINER_pn-fixesproto =3D "Ross Burton <ross.burton@intel.co=
m>"
>>   RECIPE_MAINTAINER_pn-flac =3D "Cristian Iorga <cristian.iorga@intel.co=
m>"
>> -RECIPE_MAINTAINER_pn-flex =3D "Chong Lu <Chong.Lu@windriver.com>"
>> +RECIPE_MAINTAINER_pn-flex =3D "Chen Qi <Qi.Chen@windriver.com>"
>>   RECIPE_MAINTAINER_pn-font-alias =3D "Ross Burton <ross.burton@intel.co=
m>"
>>   RECIPE_MAINTAINER_pn-fontconfig =3D "Ross Burton <ross.burton@intel.co=
m>"
>>   RECIPE_MAINTAINER_pn-fontsproto =3D "Ross Burton <ross.burton@intel.co=
m>"
>>   RECIPE_MAINTAINER_pn-font-util =3D "Ross Burton <ross.burton@intel.com=
>"
>> -RECIPE_MAINTAINER_pn-foomatic-filters =3D "Chong Lu <
>> Chong.Lu@windriver.com>"
>> +RECIPE_MAINTAINER_pn-foomatic-filters =3D "Chen Qi <Qi.Chen@windriver.c=
om
>> >"
>>   RECIPE_MAINTAINER_pn-formfactor =3D "Cristian Iorga <
>> cristian.iorga@intel.com>"
>>   RECIPE_MAINTAINER_pn-fotowall =3D "Paul Eggleton <
>> paul.eggleton@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-freetype =3D "Ross Burton <ross.burton@intel.com>=
"
>> @@ -237,13 +237,13 @@ RECIPE_MAINTAINER_pn-gtk-theme-torturer =3D "Ross
>> Burton <ross.burton@intel.com>"
>>   RECIPE_MAINTAINER_pn-gtk-update-icon-cache-native =3D "Ross Burton <
>> ross.burton@intel.com>"
>>   RECIPE_MAINTAINER_pn-gtk+ =3D "Ross Burton <ross.burton@intel.com>"
>>   RECIPE_MAINTAINER_pn-gtk+3 =3D "Ross Burton <ross.burton@intel.com>"
>> -RECIPE_MAINTAINER_pn-guile =3D "Chong Lu <Chong.Lu@windriver.com>"
>> +RECIPE_MAINTAINER_pn-guile =3D "Robert Yang <liezhi.yang@windriver.com>=
"
>>   RECIPE_MAINTAINER_pn-guilt-native =3D "Bruce Ashfield <
>> bruce.ashfield@windriver.com>"
>>   RECIPE_MAINTAINER_pn-gummiboot =3D "Darren Hart <dvhart@linux.intel.co=
m>"
>>   RECIPE_MAINTAINER_pn-gzip =3D "Chen Qi <Qi.Chen@windriver.com>"
>>   RECIPE_MAINTAINER_pn-hal =3D "Saul Wold <sgw@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-harfbuzz =3D "Cristian Iorga <
>> cristian.iorga@intel.com>"
>> -RECIPE_MAINTAINER_pn-hdparm =3D "Chong Lu <Chong.Lu@windriver.com>"
>> +RECIPE_MAINTAINER_pn-hdparm =3D "Robert Yang <liezhi.yang@windriver.com=
>"
>>   RECIPE_MAINTAINER_pn-help2man-native =3D "Hongxu Jia <
>> hongxu.jia@windriver.com>"
>>   RECIPE_MAINTAINER_pn-hicolor-icon-theme =3D "Ross Burton <
>> ross.burton@intel.com>"
>>   RECIPE_MAINTAINER_pn-hostap-conf =3D "Cristian Iorga <
>> cristian.iorga@intel.com>"
>> @@ -258,11 +258,11 @@ RECIPE_MAINTAINER_pn-initramfs-live-install-efi =
=3D
>> "Saul Wold <sgw@linux.intel.co
>>   RECIPE_MAINTAINER_pn-initramfs-live-install =3D "Saul Wold <
>> sgw@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-initscripts =3D "Saul Wold <sgw@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-inputproto =3D "Ross Burton <ross.burton@intel.co=
m>"
>> -RECIPE_MAINTAINER_pn-insserv =3D "Chong Lu <Chong.Lu@windriver.com>"
>> +RECIPE_MAINTAINER_pn-insserv =3D "Robert Yang <liezhi.yang@windriver.co=
m>"
>>   RECIPE_MAINTAINER_pn-intltool =3D "Richard Purdie <
>> richard.purdie@linuxfoundation.org>"
>>   RECIPE_MAINTAINER_pn-iproute2 =3D "Cristian Iorga <
>> cristian.iorga@intel.com>"
>>   RECIPE_MAINTAINER_pn-iptables =3D "Cristian Iorga <
>> cristian.iorga@intel.com>"
>> -RECIPE_MAINTAINER_pn-iputils =3D "Chong Lu <Chong.Lu@windriver.com>"
>> +RECIPE_MAINTAINER_pn-iputils =3D "Robert Yang <liezhi.yang@windriver.co=
m>"
>>   RECIPE_MAINTAINER_pn-irda-utils =3D "Cristian Iorga <
>> cristian.iorga@intel.com>"
>>   RECIPE_MAINTAINER_pn-jpeg =3D "An=C3=ADbal Lim=C3=B3n <anibal.limon@li=
nux.intel.com
>> >"
>>   RECIPE_MAINTAINER_pn-json-glib =3D "Ross Burton <ross.burton@intel.com=
>"
>> @@ -278,7 +278,7 @@ RECIPE_MAINTAINER_pn-lame =3D "Saul Wold <
>> sgw@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-latencytop =3D "Richard Purdie <
>> richard.purdie@linuxfoundation.org>"
>>   RECIPE_MAINTAINER_pn-ldconfig-native =3D "Saul Wold <sgw@linux.intel.c=
om
>> >"
>>   RECIPE_MAINTAINER_pn-leafpad =3D "Ross Burton <ross.burton@intel.com>"
>> -RECIPE_MAINTAINER_pn-less =3D "Chong Lu <Chong.Lu@windriver.com>"
>> +RECIPE_MAINTAINER_pn-less =3D "Robert Yang <liezhi.yang@windriver.com>"
>>   RECIPE_MAINTAINER_pn-liba52 =3D "Cristian Iorga <cristian.iorga@intel.=
com
>> >"
>>   RECIPE_MAINTAINER_pn-libacpi =3D "An=C3=ADbal Lim=C3=B3n <
>> anibal.limon@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-libaio =3D "Saul Wold <sgw@linux.intel.com>"
>> @@ -287,8 +287,8 @@ RECIPE_MAINTAINER_pn-libart-lgpl =3D "Ross Burton <
>> ross.burton@intel.com>"
>>   RECIPE_MAINTAINER_pn-libassuan =3D "Saul Wold <sgw@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-libatomics-ops =3D "Cristian Iorga <
>> cristian.iorga@intel.com>"
>>   RECIPE_MAINTAINER_pn-libav =3D "Paul Eggleton <
>> paul.eggleton@linux.intel.com>"
>> -RECIPE_MAINTAINER_pn-libbsd =3D "Chong Lu <Chong.Lu@windriver.com>"
>> -RECIPE_MAINTAINER_pn-libcap =3D "Chong Lu <Chong.Lu@windriver.com>"
>> +RECIPE_MAINTAINER_pn-libbsd =3D "Robert Yang <liezhi.yang@windriver.com=
>"
>> +RECIPE_MAINTAINER_pn-libcap =3D "Robert Yang <liezhi.yang@windriver.com=
>"
>>   RECIPE_MAINTAINER_pn-libcgroup =3D "Saul Wold <sgw@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-libcheck =3D "Robert Yang <liezhi.yang@windriver.=
com
>> >"
>>   RECIPE_MAINTAINER_pn-libclass-isa-perl =3D "Saul Wold <
>> sgw@linux.intel.com>"
>> @@ -340,7 +340,7 @@ RECIPE_MAINTAINER_pn-libowl =3D "Ross Burton <
>> ross.burton@intel.com>"
>>   RECIPE_MAINTAINER_pn-libpam =3D "Randy Witt <randy.e.witt@linux.intel.=
com
>> >"
>>   RECIPE_MAINTAINER_pn-libpcap =3D "Cristian Iorga <
>> cristian.iorga@intel.com>"
>>   RECIPE_MAINTAINER_pn-libpciaccess =3D "Richard Purdie <
>> richard.purdie@linuxfoundation.org>"
>> -RECIPE_MAINTAINER_pn-libpcre =3D "Chong Lu <Chong.Lu@windriver.com>"
>> +RECIPE_MAINTAINER_pn-libpcre =3D "Robert Yang <liezhi.yang@windriver.co=
m>"
>>   RECIPE_MAINTAINER_pn-libpfm4 =3D "Matthew McClintock <msm@freescale.co=
m>"
>>   RECIPE_MAINTAINER_pn-libpng =3D "Randy Witt <randy.e.witt@linux.intel.=
com
>> >"
>>   RECIPE_MAINTAINER_pn-libpng12 =3D "Randy Witt <
>> randy.e.witt@linux.intel.com>"
>> @@ -366,7 +366,7 @@ RECIPE_MAINTAINER_pn-liburcu =3D "Saul Wold <
>> sgw@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-liburi-perl =3D "Kai Kang <kai.kang@windriver.com=
>"
>>   RECIPE_MAINTAINER_pn-libusb1 =3D "Alejandro Hernandez <
>> alejandro.hernandez@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-libusb-compat =3D "Alejandro Hernandez <
>> alejandro.hernandez@linux.intel.com>"
>> -RECIPE_MAINTAINER_pn-libuser =3D "Chong Lu <Chong.Lu@windriver.com>"
>> +RECIPE_MAINTAINER_pn-libuser =3D "Robert Yang <liezhi.yang@windriver.co=
m>"
>>   RECIPE_MAINTAINER_pn-libvorbis =3D "Cristian Iorga <
>> cristian.iorga@intel.com>"
>>   RECIPE_MAINTAINER_pn-libx11-diet =3D "Kai Kang <kai.kang@windriver.com=
>"
>>   RECIPE_MAINTAINER_pn-libx11 =3D "Ross Burton <ross.burton@intel.com>"
>> @@ -465,7 +465,7 @@ RECIPE_MAINTAINER_pn-mkelfimage =3D "Saul Wold <
>> sgw@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-mkfontdir =3D "Saul Wold <sgw@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-mkfontscale =3D "Saul Wold <sgw@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-mklibs-native =3D "Robert Yang <
>> liezhi.yang@windriver.com>"
>> -RECIPE_MAINTAINER_pn-mktemp =3D "Chong Lu <Chong.Lu@windriver.com>"
>> +RECIPE_MAINTAINER_pn-mktemp =3D "Robert Yang <liezhi.yang@windriver.com=
>"
>>   RECIPE_MAINTAINER_pn-mobile-broadband-provider-info =3D "Saul Wold <
>> sgw@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-modutils-initscripts =3D "Robert Yang <
>> liezhi.yang@windriver.com>"
>>   RECIPE_MAINTAINER_pn-mpeg2dec =3D "Saul Wold <sgw@linux.intel.com>"
>> @@ -485,7 +485,7 @@ RECIPE_MAINTAINER_pn-neon =3D "Cristian Iorga <
>> cristian.iorga@intel.com>"
>>   RECIPE_MAINTAINER_pn-netbase =3D "Cristian Iorga <
>> cristian.iorga@intel.com>"
>>   RECIPE_MAINTAINER_pn-nettle =3D "Armin Kuster <akuster808@gmail.com>"
>>   RECIPE_MAINTAINER_pn-net-tools =3D "Cristian Iorga <
>> cristian.iorga@intel.com>"
>> -RECIPE_MAINTAINER_pn-nfs-export-root =3D "Chong Lu <Chong.Lu@windriver.=
com
>> >"
>> +RECIPE_MAINTAINER_pn-nfs-export-root =3D "Robert Yang <
>> liezhi.yang@windriver.com>"
>>   RECIPE_MAINTAINER_pn-nfs-utils =3D "Alejandro Hernandez <
>> alejandro.hernandez@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-npth =3D "Saul Wold <sgw@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-nspr =3D "Saul Wold <sgw@linux.intel.com>"
>> @@ -598,7 +598,7 @@ RECIPE_MAINTAINER_pn-qt-demo-init =3D "Paul Eggleton=
 <
>> paul.eggleton@linux.intel.co
>>   RECIPE_MAINTAINER_pn-qt-mobility-embedded =3D "Paul Eggleton <
>> paul.eggleton@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-qt-mobility-x11 =3D "Paul Eggleton <
>> paul.eggleton@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-quicky =3D "Paul Eggleton <
>> paul.eggleton@linux.intel.com>"
>> -RECIPE_MAINTAINER_pn-quilt =3D "Chong Lu <Chong.Lu@windriver.com>"
>> +RECIPE_MAINTAINER_pn-quilt =3D "Robert Yang <liezhi.yang@windriver.com>=
"
>>   RECIPE_MAINTAINER_pn-quota =3D "Cristian Iorga <cristian.iorga@intel.c=
om
>> >"
>>   RECIPE_MAINTAINER_pn-randrproto =3D "Ross Burton <ross.burton@intel.co=
m>"
>>   RECIPE_MAINTAINER_pn-readline =3D "Hongxu Jia <hongxu.jia@windriver.co=
m>"
>> @@ -637,7 +637,7 @@ RECIPE_MAINTAINER_pn-sqlite3 =3D "An=C3=ADbal Lim=C3=
=B3n <
>> anibal.limon@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-squashfs-tools =3D "Robert Yang <
>> liezhi.yang@windriver.com>"
>>   RECIPE_MAINTAINER_pn-startup-notification =3D "Saul Wold <
>> sgw@linux.intel.com>"
>>   RECIPE_MAINTAINER_pn-stat =3D "Chen Qi <Qi.Chen@windriver.com>"
>> -RECIPE_MAINTAINER_pn-strace =3D "Chong Lu <Chong.Lu@windriver.com>"
>> +RECIPE_MAINTAINER_pn-strace =3D "Robert Yang <liezhi.yang@windriver.com=
>"
>>   RECIPE_MAINTAINER_pn-subversion =3D "Richard Purdie <
>> richard.purdie@linuxfoundation.org>"
>>   RECIPE_MAINTAINER_pn-sudo =3D "Chen Qi <Qi.Chen@windriver.com>"
>>   RECIPE_MAINTAINER_pn-swabber-native =3D "Saul Wold <sgw@linux.intel.co=
m>"
>> @@ -655,7 +655,7 @@ RECIPE_MAINTAINER_pn-taglib =3D "Cristian Iorga <
>> cristian.iorga@intel.com>"
>>   RECIPE_MAINTAINER_pn-tar-replacement-native =3D "Robert Yang <
>> liezhi.yang@windriver.com>"
>>   RECIPE_MAINTAINER_pn-tar =3D "Chen Qi <Qi.Chen@windriver.com>"
>>   RECIPE_MAINTAINER_pn-tcf-agent =3D "Randy Witt <
>> randy.e.witt@linux.intel.com>"
>> -RECIPE_MAINTAINER_pn-tcl =3D "Chong Lu <Chong.Lu@windriver.com>"
>> +RECIPE_MAINTAINER_pn-tcl =3D "Robert Yang <liezhi.yang@windriver.com>"
>>   RECIPE_MAINTAINER_pn-tcp-wrappers =3D "Robert Yang <
>> liezhi.yang@windriver.com>"
>>   RECIPE_MAINTAINER_pn-tcp-wrappers =3D "Saul Wold <sgw@linux.intel.com>=
"
>>   RECIPE_MAINTAINER_pn-telepathy-glib =3D "Cristian Iorga <
>> cristian.iorga@intel.com>"
>>
>>  --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--001a11354e68cbebab0514d94cea
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This doesn&#39;t apply to master anymore, can you refresh =
it?<div><br></div><div>Ross</div></div><div class=3D"gmail_extra"><br><div =
class=3D"gmail_quote">2015-04-29 6:43 GMT+01:00 Robert Yang <span dir=3D"lt=
r">&lt;<a href=3D"mailto:liezhi.yang@windriver.com" target=3D"_blank">liezh=
i.yang@windriver.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">ping=
.<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
// Robert</font></span><div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
On 03/31/2015 11:13 AM, Robert Yang wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Signed-off-by: Robert Yang &lt;<a href=3D"mailto:liezhi.yang@windriver.com"=
 target=3D"_blank">liezhi.yang@windriver.com</a>&gt;<br>
---<br>
=C2=A0 meta-yocto/conf/distro/include/maintainers.inc |=C2=A0 =C2=A058 ++++=
++++++++------------<br>
=C2=A0 1 file changed, 29 insertions(+), 29 deletions(-)<br>
<br>
diff --git a/meta-yocto/conf/distro/include/maintainers.inc b/meta-yocto/co=
nf/distro/include/maintainers.inc<br>
index c4e281e..ad1a9d9 100644<br>
--- a/meta-yocto/conf/distro/include/maintainers.inc<br>
+++ b/meta-yocto/conf/distro/include/maintainers.inc<br>
@@ -27,7 +27,7 @@<br>
=C2=A0 #<br>
=C2=A0 # Please keep this list in alphabetical order.<br>
=C2=A0 #<br>
-RECIPE_MAINTAINER_pn-acl =3D &quot;Chong Lu &lt;<a href=3D"mailto:Chong.Lu=
@windriver.com" target=3D"_blank">Chong.Lu@windriver.com</a>&gt;&quot;<br>
+RECIPE_MAINTAINER_pn-acl =3D &quot;Chen Qi &lt;<a href=3D"mailto:Qi.Chen@w=
indriver.com" target=3D"_blank">Qi.Chen@windriver.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-acpid =3D &quot;An=C3=ADbal Lim=C3=B3n &lt;<a h=
ref=3D"mailto:anibal.limon@linux.intel.com" target=3D"_blank">anibal.limon@=
linux.intel.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-adt-installer =3D &quot;Jessica Zhang &lt;<a hr=
ef=3D"mailto:jessica.zhang@intel.com" target=3D"_blank">jessica.zhang@intel=
.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-alsa-lib =3D &quot;Cristian Iorga &lt;<a href=
=3D"mailto:cristian.iorga@intel.com" target=3D"_blank">cristian.iorga@intel=
.com</a>&gt;&quot;<br>
@@ -41,10 +41,10 @@ RECIPE_MAINTAINER_pn-apr-util =3D &quot;Hongxu Jia &lt;=
<a href=3D"mailto:hongxu.jia@windriver.com" target=3D"_blank">hongxu.jia@wi=
ndriver.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-apt =3D &quot;An=C3=ADbal Lim=C3=B3n &lt;<a hre=
f=3D"mailto:anibal.limon@linux.intel.com" target=3D"_blank">anibal.limon@li=
nux.intel.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-aspell =3D &quot;Alejandro Hernandez &lt;<a hre=
f=3D"mailto:alejandro.hernandez@linux.intel.com" target=3D"_blank">alejandr=
o.hernandez@linux.intel.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-atk =3D &quot;Ross Burton &lt;<a href=3D"mailto=
:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;&quo=
t;<br>
-RECIPE_MAINTAINER_pn-at =3D &quot;Chong Lu &lt;<a href=3D"mailto:Chong.Lu@=
windriver.com" target=3D"_blank">Chong.Lu@windriver.com</a>&gt;&quot;<br>
+RECIPE_MAINTAINER_pn-at =3D &quot;Chen Qi &lt;<a href=3D"mailto:Qi.Chen@wi=
ndriver.com" target=3D"_blank">Qi.Chen@windriver.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-at-spi2-atk =3D &quot;Ross Burton &lt;<a href=
=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</=
a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-at-spi2-core =3D &quot;Ross Burton &lt;<a href=
=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</=
a>&gt;&quot;<br>
-RECIPE_MAINTAINER_pn-attr =3D &quot;Chong Lu &lt;<a href=3D"mailto:Chong.L=
u@windriver.com" target=3D"_blank">Chong.Lu@windriver.com</a>&gt;&quot;<br>
+RECIPE_MAINTAINER_pn-attr =3D &quot;Chen Qi &lt;<a href=3D"mailto:Qi.Chen@=
windriver.com" target=3D"_blank">Qi.Chen@windriver.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-augeas =3D &quot;Paul Eggleton &lt;<a href=3D"m=
ailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.=
intel.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-autoconf =3D &quot;Robert Yang &lt;<a href=3D"m=
ailto:liezhi.yang@windriver.com" target=3D"_blank">liezhi.yang@windriver.co=
m</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-autogen =3D &quot;Robert Yang &lt;<a href=3D"ma=
ilto:liezhi.yang@windriver.com" target=3D"_blank">liezhi.yang@windriver.com=
</a>&gt;&quot;<br>
@@ -57,11 +57,11 @@ RECIPE_MAINTAINER_pn-base-passwd =3D &quot;Saul Wold &l=
t;<a href=3D"mailto:sgw@linux.intel.com" target=3D"_blank">sgw@linux.intel.=
com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-bash =3D &quot;Hongxu Jia &lt;<a href=3D"mailto=
:hongxu.jia@windriver.com" target=3D"_blank">hongxu.jia@windriver.com</a>&g=
t;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-bc =3D &quot;Alejandro Hernandez &lt;<a href=3D=
"mailto:alejandro.hernandez@linux.intel.com" target=3D"_blank">alejandro.he=
rnandez@linux.intel.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-bdwgc =3D &quot;Richard Purdie &lt;<a href=3D"m=
ailto:richard.purdie@linuxfoundation.org" target=3D"_blank">richard.purdie@=
linuxfoundation.org</a>&gt;&quot;<br>
-RECIPE_MAINTAINER_pn-beecrypt =3D &quot;Chong Lu &lt;<a href=3D"mailto:Cho=
ng.Lu@windriver.com" target=3D"_blank">Chong.Lu@windriver.com</a>&gt;&quot;=
<br>
+RECIPE_MAINTAINER_pn-beecrypt =3D &quot;Chen Qi &lt;<a href=3D"mailto:Qi.C=
hen@windriver.com" target=3D"_blank">Qi.Chen@windriver.com</a>&gt;&quot;<br=
>
=C2=A0 RECIPE_MAINTAINER_pn-bigreqsproto =3D &quot;Saul Wold &lt;<a href=3D=
"mailto:sgw@linux.intel.com" target=3D"_blank">sgw@linux.intel.com</a>&gt;&=
quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-bind =3D &quot;Kai Kang &lt;<a href=3D"mailto:k=
ai.kang@windriver.com" target=3D"_blank">kai.kang@windriver.com</a>&gt;&quo=
t;<br>
=C2=A0 RECIPE_MAINTAINER_pn-binutils =3D &quot;Robert Yang &lt;<a href=3D"m=
ailto:liezhi.yang@windriver.com" target=3D"_blank">liezhi.yang@windriver.co=
m</a>&gt;&quot;<br>
-RECIPE_MAINTAINER_pn-bison =3D &quot;Chong Lu &lt;<a href=3D"mailto:Chong.=
Lu@windriver.com" target=3D"_blank">Chong.Lu@windriver.com</a>&gt;&quot;<br=
>
+RECIPE_MAINTAINER_pn-bison =3D &quot;Chen Qi &lt;<a href=3D"mailto:Qi.Chen=
@windriver.com" target=3D"_blank">Qi.Chen@windriver.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-blktool =3D &quot;Paul Eggleton &lt;<a href=3D"=
mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux=
.intel.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-blktrace =3D &quot;Tom Zanussi &lt;<a href=3D"m=
ailto:tom.zanussi@intel.com" target=3D"_blank">tom.zanussi@intel.com</a>&gt=
;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-bluez4 =3D &quot;Cristian Iorga &lt;<a href=3D"=
mailto:cristian.iorga@intel.com" target=3D"_blank">cristian.iorga@intel.com=
</a>&gt;&quot;<br>
@@ -72,7 +72,7 @@ RECIPE_MAINTAINER_pn-btrfs-tools =3D &quot;Richard Purdie=
 &lt;richard.purdie@linuxfoundati<br>
=C2=A0 RECIPE_MAINTAINER_pn-build-appliance-image =3D &quot;Saul Wold &lt;<=
a href=3D"mailto:sgw@linux.intel.com" target=3D"_blank">sgw@linux.intel.com=
</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-builder =3D &quot;Saul Wold &lt;<a href=3D"mail=
to:sgw@linux.intel.com" target=3D"_blank">sgw@linux.intel.com</a>&gt;&quot;=
<br>
=C2=A0 RECIPE_MAINTAINER_pn-busybox =3D &quot;Chen Qi &lt;<a href=3D"mailto=
:Qi.Chen@windriver.com" target=3D"_blank">Qi.Chen@windriver.com</a>&gt;&quo=
t;<br>
-RECIPE_MAINTAINER_pn-byacc =3D &quot;Chong Lu &lt;<a href=3D"mailto:Chong.=
Lu@windriver.com" target=3D"_blank">Chong.Lu@windriver.com</a>&gt;&quot;<br=
>
+RECIPE_MAINTAINER_pn-byacc =3D &quot;Chen Qi &lt;<a href=3D"mailto:Qi.Chen=
@windriver.com" target=3D"_blank">Qi.Chen@windriver.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-bzip2 =3D &quot;Chen Qi &lt;<a href=3D"mailto:Q=
i.Chen@windriver.com" target=3D"_blank">Qi.Chen@windriver.com</a>&gt;&quot;=
<br>
=C2=A0 RECIPE_MAINTAINER_pn-ca-certificates =3D &quot;Saul Wold &lt;<a href=
=3D"mailto:sgw@linux.intel.com" target=3D"_blank">sgw@linux.intel.com</a>&g=
t;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-cairo =3D &quot;Ross Burton &lt;<a href=3D"mail=
to:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;&q=
uot;<br>
@@ -118,19 +118,19 @@ RECIPE_MAINTAINER_pn-cracklib =3D &quot;Hongxu Jia &l=
t;<a href=3D"mailto:hongxu.jia@windriver.com" target=3D"_blank">hongxu.jia@=
windriver.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-createrepo =3D &quot;Hongxu Jia &lt;<a href=3D"=
mailto:hongxu.jia@windriver.com" target=3D"_blank">hongxu.jia@windriver.com=
</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-cronie =3D &quot;Alejandro Hernandez &lt;<a hre=
f=3D"mailto:alejandro.hernandez@linux.intel.com" target=3D"_blank">alejandr=
o.hernandez@linux.intel.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-cross-localedef-native =3D &quot;Saul Wold &lt;=
<a href=3D"mailto:sgw@linux.intel.com" target=3D"_blank">sgw@linux.intel.co=
m</a>&gt;&quot;<br>
-RECIPE_MAINTAINER_pn-cups =3D &quot;Chong Lu &lt;<a href=3D"mailto:Chong.L=
u@windriver.com" target=3D"_blank">Chong.Lu@windriver.com</a>&gt;&quot;<br>
+RECIPE_MAINTAINER_pn-cups =3D &quot;Chen Qi &lt;<a href=3D"mailto:Qi.Chen@=
windriver.com" target=3D"_blank">Qi.Chen@windriver.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-curl =3D &quot;Chen Qi &lt;<a href=3D"mailto:Qi=
.Chen@windriver.com" target=3D"_blank">Qi.Chen@windriver.com</a>&gt;&quot;<=
br>
=C2=A0 RECIPE_MAINTAINER_pn-cwautomacros =3D &quot;Cristian Iorga &lt;<a hr=
ef=3D"mailto:cristian.iorga@intel.com" target=3D"_blank">cristian.iorga@int=
el.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-damageproto =3D &quot;Ross Burton &lt;<a href=
=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</=
a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-db =3D &quot;Cristian Iorga &lt;<a href=3D"mail=
to:cristian.iorga@intel.com" target=3D"_blank">cristian.iorga@intel.com</a>=
&gt;&quot;<br>
-RECIPE_MAINTAINER_pn-dbus =3D &quot;Chong Lu &lt;<a href=3D"mailto:Chong.L=
u@windriver.com" target=3D"_blank">Chong.Lu@windriver.com</a>&gt;&quot;<br>
-RECIPE_MAINTAINER_pn-dbus-glib =3D &quot;Chong Lu &lt;<a href=3D"mailto:Ch=
ong.Lu@windriver.com" target=3D"_blank">Chong.Lu@windriver.com</a>&gt;&quot=
;<br>
-RECIPE_MAINTAINER_pn-dbus-test =3D &quot;Chong Lu &lt;<a href=3D"mailto:Ch=
ong.Lu@windriver.com" target=3D"_blank">Chong.Lu@windriver.com</a>&gt;&quot=
;<br>
-RECIPE_MAINTAINER_pn-dbus-wait =3D &quot;Chong Lu &lt;<a href=3D"mailto:Ch=
ong.Lu@windriver.com" target=3D"_blank">Chong.Lu@windriver.com</a>&gt;&quot=
;<br>
+RECIPE_MAINTAINER_pn-dbus =3D &quot;Chen Qi &lt;<a href=3D"mailto:Qi.Chen@=
windriver.com" target=3D"_blank">Qi.Chen@windriver.com</a>&gt;&quot;<br>
+RECIPE_MAINTAINER_pn-dbus-glib =3D &quot;Chen Qi &lt;<a href=3D"mailto:Qi.=
Chen@windriver.com" target=3D"_blank">Qi.Chen@windriver.com</a>&gt;&quot;<b=
r>
+RECIPE_MAINTAINER_pn-dbus-test =3D &quot;Chen Qi &lt;<a href=3D"mailto:Qi.=
Chen@windriver.com" target=3D"_blank">Qi.Chen@windriver.com</a>&gt;&quot;<b=
r>
+RECIPE_MAINTAINER_pn-dbus-wait =3D &quot;Chen Qi &lt;<a href=3D"mailto:Qi.=
Chen@windriver.com" target=3D"_blank">Qi.Chen@windriver.com</a>&gt;&quot;<b=
r>
=C2=A0 RECIPE_MAINTAINER_pn-desktop-file-utils-native =3D &quot;Saul Wold &=
lt;<a href=3D"mailto:sgw@linux.intel.com" target=3D"_blank">sgw@linux.intel=
.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-dhcp =3D &quot;Hongxu Jia &lt;<a href=3D"mailto=
:hongxu.jia@windriver.com" target=3D"_blank">hongxu.jia@windriver.com</a>&g=
t;&quot;<br>
-RECIPE_MAINTAINER_pn-diffstat =3D &quot;Chong Lu &lt;<a href=3D"mailto:Cho=
ng.Lu@windriver.com" target=3D"_blank">Chong.Lu@windriver.com</a>&gt;&quot;=
<br>
-RECIPE_MAINTAINER_pn-diffutils =3D &quot;Chong Lu &lt;<a href=3D"mailto:Ch=
ong.Lu@windriver.com" target=3D"_blank">Chong.Lu@windriver.com</a>&gt;&quot=
;<br>
+RECIPE_MAINTAINER_pn-diffstat =3D &quot;Chen Qi &lt;<a href=3D"mailto:Qi.C=
hen@windriver.com" target=3D"_blank">Qi.Chen@windriver.com</a>&gt;&quot;<br=
>
+RECIPE_MAINTAINER_pn-diffutils =3D &quot;Chen Qi &lt;<a href=3D"mailto:Qi.=
Chen@windriver.com" target=3D"_blank">Qi.Chen@windriver.com</a>&gt;&quot;<b=
r>
=C2=A0 RECIPE_MAINTAINER_pn-directfb-examples =3D &quot;Hongxu Jia &lt;<a h=
ref=3D"mailto:hongxu.jia@windriver.com" target=3D"_blank">hongxu.jia@windri=
ver.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-directfb =3D &quot;Hongxu Jia &lt;<a href=3D"ma=
ilto:hongxu.jia@windriver.com" target=3D"_blank">hongxu.jia@windriver.com</=
a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-distcc =3D &quot;Hongxu Jia &lt;<a href=3D"mail=
to:hongxu.jia@windriver.com" target=3D"_blank">hongxu.jia@windriver.com</a>=
&gt;&quot;<br>
@@ -164,12 +164,12 @@ RECIPE_MAINTAINER_pn-file =3D &quot;Robert Yang &lt;<=
a href=3D"mailto:liezhi.yang@windriver.com" target=3D"_blank">liezhi.yang@w=
indriver.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-findutils =3D &quot;Chen Qi &lt;<a href=3D"mail=
to:Qi.Chen@windriver.com" target=3D"_blank">Qi.Chen@windriver.com</a>&gt;&q=
uot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-fixesproto =3D &quot;Ross Burton &lt;<a href=3D=
"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&=
gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-flac =3D &quot;Cristian Iorga &lt;<a href=3D"ma=
ilto:cristian.iorga@intel.com" target=3D"_blank">cristian.iorga@intel.com</=
a>&gt;&quot;<br>
-RECIPE_MAINTAINER_pn-flex =3D &quot;Chong Lu &lt;<a href=3D"mailto:Chong.L=
u@windriver.com" target=3D"_blank">Chong.Lu@windriver.com</a>&gt;&quot;<br>
+RECIPE_MAINTAINER_pn-flex =3D &quot;Chen Qi &lt;<a href=3D"mailto:Qi.Chen@=
windriver.com" target=3D"_blank">Qi.Chen@windriver.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-font-alias =3D &quot;Ross Burton &lt;<a href=3D=
"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&=
gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-fontconfig =3D &quot;Ross Burton &lt;<a href=3D=
"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&=
gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-fontsproto =3D &quot;Ross Burton &lt;<a href=3D=
"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&=
gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-font-util =3D &quot;Ross Burton &lt;<a href=3D"=
mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&g=
t;&quot;<br>
-RECIPE_MAINTAINER_pn-foomatic-filters =3D &quot;Chong Lu &lt;<a href=3D"ma=
ilto:Chong.Lu@windriver.com" target=3D"_blank">Chong.Lu@windriver.com</a>&g=
t;&quot;<br>
+RECIPE_MAINTAINER_pn-foomatic-filters =3D &quot;Chen Qi &lt;<a href=3D"mai=
lto:Qi.Chen@windriver.com" target=3D"_blank">Qi.Chen@windriver.com</a>&gt;&=
quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-formfactor =3D &quot;Cristian Iorga &lt;<a href=
=3D"mailto:cristian.iorga@intel.com" target=3D"_blank">cristian.iorga@intel=
.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-fotowall =3D &quot;Paul Eggleton &lt;<a href=3D=
"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linu=
x.intel.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-freetype =3D &quot;Ross Burton &lt;<a href=3D"m=
ailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt=
;&quot;<br>
@@ -237,13 +237,13 @@ RECIPE_MAINTAINER_pn-gtk-theme-torturer =3D &quot;Ros=
s Burton &lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ros=
s.burton@intel.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-gtk-update-icon-cache-native =3D &quot;Ross Bur=
ton &lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.bur=
ton@intel.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-gtk+ =3D &quot;Ross Burton &lt;<a href=3D"mailt=
o:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;&qu=
ot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-gtk+3 =3D &quot;Ross Burton &lt;<a href=3D"mail=
to:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;&q=
uot;<br>
-RECIPE_MAINTAINER_pn-guile =3D &quot;Chong Lu &lt;<a href=3D"mailto:Chong.=
Lu@windriver.com" target=3D"_blank">Chong.Lu@windriver.com</a>&gt;&quot;<br=
>
+RECIPE_MAINTAINER_pn-guile =3D &quot;Robert Yang &lt;<a href=3D"mailto:lie=
zhi.yang@windriver.com" target=3D"_blank">liezhi.yang@windriver.com</a>&gt;=
&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-guilt-native =3D &quot;Bruce Ashfield &lt;<a hr=
ef=3D"mailto:bruce.ashfield@windriver.com" target=3D"_blank">bruce.ashfield=
@windriver.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-gummiboot =3D &quot;Darren Hart &lt;<a href=3D"=
mailto:dvhart@linux.intel.com" target=3D"_blank">dvhart@linux.intel.com</a>=
&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-gzip =3D &quot;Chen Qi &lt;<a href=3D"mailto:Qi=
.Chen@windriver.com" target=3D"_blank">Qi.Chen@windriver.com</a>&gt;&quot;<=
br>
=C2=A0 RECIPE_MAINTAINER_pn-hal =3D &quot;Saul Wold &lt;<a href=3D"mailto:s=
gw@linux.intel.com" target=3D"_blank">sgw@linux.intel.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-harfbuzz =3D &quot;Cristian Iorga &lt;<a href=
=3D"mailto:cristian.iorga@intel.com" target=3D"_blank">cristian.iorga@intel=
.com</a>&gt;&quot;<br>
-RECIPE_MAINTAINER_pn-hdparm =3D &quot;Chong Lu &lt;<a href=3D"mailto:Chong=
.Lu@windriver.com" target=3D"_blank">Chong.Lu@windriver.com</a>&gt;&quot;<b=
r>
+RECIPE_MAINTAINER_pn-hdparm =3D &quot;Robert Yang &lt;<a href=3D"mailto:li=
ezhi.yang@windriver.com" target=3D"_blank">liezhi.yang@windriver.com</a>&gt=
;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-help2man-native =3D &quot;Hongxu Jia &lt;<a hre=
f=3D"mailto:hongxu.jia@windriver.com" target=3D"_blank">hongxu.jia@windrive=
r.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-hicolor-icon-theme =3D &quot;Ross Burton &lt;<a=
 href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.=
com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-hostap-conf =3D &quot;Cristian Iorga &lt;<a hre=
f=3D"mailto:cristian.iorga@intel.com" target=3D"_blank">cristian.iorga@inte=
l.com</a>&gt;&quot;<br>
@@ -258,11 +258,11 @@ RECIPE_MAINTAINER_pn-initramfs-live-install-efi =3D &=
quot;Saul Wold &lt;<a href=3D"mailto:sgw@linux.intel.co" target=3D"_blank">=
sgw@linux.intel.co</a><br>
=C2=A0 RECIPE_MAINTAINER_pn-initramfs-live-install =3D &quot;Saul Wold &lt;=
<a href=3D"mailto:sgw@linux.intel.com" target=3D"_blank">sgw@linux.intel.co=
m</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-initscripts =3D &quot;Saul Wold &lt;<a href=3D"=
mailto:sgw@linux.intel.com" target=3D"_blank">sgw@linux.intel.com</a>&gt;&q=
uot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-inputproto =3D &quot;Ross Burton &lt;<a href=3D=
"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&=
gt;&quot;<br>
-RECIPE_MAINTAINER_pn-insserv =3D &quot;Chong Lu &lt;<a href=3D"mailto:Chon=
g.Lu@windriver.com" target=3D"_blank">Chong.Lu@windriver.com</a>&gt;&quot;<=
br>
+RECIPE_MAINTAINER_pn-insserv =3D &quot;Robert Yang &lt;<a href=3D"mailto:l=
iezhi.yang@windriver.com" target=3D"_blank">liezhi.yang@windriver.com</a>&g=
t;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-intltool =3D &quot;Richard Purdie &lt;<a href=
=3D"mailto:richard.purdie@linuxfoundation.org" target=3D"_blank">richard.pu=
rdie@linuxfoundation.org</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-iproute2 =3D &quot;Cristian Iorga &lt;<a href=
=3D"mailto:cristian.iorga@intel.com" target=3D"_blank">cristian.iorga@intel=
.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-iptables =3D &quot;Cristian Iorga &lt;<a href=
=3D"mailto:cristian.iorga@intel.com" target=3D"_blank">cristian.iorga@intel=
.com</a>&gt;&quot;<br>
-RECIPE_MAINTAINER_pn-iputils =3D &quot;Chong Lu &lt;<a href=3D"mailto:Chon=
g.Lu@windriver.com" target=3D"_blank">Chong.Lu@windriver.com</a>&gt;&quot;<=
br>
+RECIPE_MAINTAINER_pn-iputils =3D &quot;Robert Yang &lt;<a href=3D"mailto:l=
iezhi.yang@windriver.com" target=3D"_blank">liezhi.yang@windriver.com</a>&g=
t;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-irda-utils =3D &quot;Cristian Iorga &lt;<a href=
=3D"mailto:cristian.iorga@intel.com" target=3D"_blank">cristian.iorga@intel=
.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-jpeg =3D &quot;An=C3=ADbal Lim=C3=B3n &lt;<a hr=
ef=3D"mailto:anibal.limon@linux.intel.com" target=3D"_blank">anibal.limon@l=
inux.intel.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-json-glib =3D &quot;Ross Burton &lt;<a href=3D"=
mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&g=
t;&quot;<br>
@@ -278,7 +278,7 @@ RECIPE_MAINTAINER_pn-lame =3D &quot;Saul Wold &lt;<a hr=
ef=3D"mailto:sgw@linux.intel.com" target=3D"_blank">sgw@linux.intel.com</a>=
&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-latencytop =3D &quot;Richard Purdie &lt;<a href=
=3D"mailto:richard.purdie@linuxfoundation.org" target=3D"_blank">richard.pu=
rdie@linuxfoundation.org</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-ldconfig-native =3D &quot;Saul Wold &lt;<a href=
=3D"mailto:sgw@linux.intel.com" target=3D"_blank">sgw@linux.intel.com</a>&g=
t;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-leafpad =3D &quot;Ross Burton &lt;<a href=3D"ma=
ilto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;=
&quot;<br>
-RECIPE_MAINTAINER_pn-less =3D &quot;Chong Lu &lt;<a href=3D"mailto:Chong.L=
u@windriver.com" target=3D"_blank">Chong.Lu@windriver.com</a>&gt;&quot;<br>
+RECIPE_MAINTAINER_pn-less =3D &quot;Robert Yang &lt;<a href=3D"mailto:liez=
hi.yang@windriver.com" target=3D"_blank">liezhi.yang@windriver.com</a>&gt;&=
quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-liba52 =3D &quot;Cristian Iorga &lt;<a href=3D"=
mailto:cristian.iorga@intel.com" target=3D"_blank">cristian.iorga@intel.com=
</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-libacpi =3D &quot;An=C3=ADbal Lim=C3=B3n &lt;<a=
 href=3D"mailto:anibal.limon@linux.intel.com" target=3D"_blank">anibal.limo=
n@linux.intel.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-libaio =3D &quot;Saul Wold &lt;<a href=3D"mailt=
o:sgw@linux.intel.com" target=3D"_blank">sgw@linux.intel.com</a>&gt;&quot;<=
br>
@@ -287,8 +287,8 @@ RECIPE_MAINTAINER_pn-libart-lgpl =3D &quot;Ross Burton =
&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@=
intel.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-libassuan =3D &quot;Saul Wold &lt;<a href=3D"ma=
ilto:sgw@linux.intel.com" target=3D"_blank">sgw@linux.intel.com</a>&gt;&quo=
t;<br>
=C2=A0 RECIPE_MAINTAINER_pn-libatomics-ops =3D &quot;Cristian Iorga &lt;<a =
href=3D"mailto:cristian.iorga@intel.com" target=3D"_blank">cristian.iorga@i=
ntel.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-libav =3D &quot;Paul Eggleton &lt;<a href=3D"ma=
ilto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.i=
ntel.com</a>&gt;&quot;<br>
-RECIPE_MAINTAINER_pn-libbsd =3D &quot;Chong Lu &lt;<a href=3D"mailto:Chong=
.Lu@windriver.com" target=3D"_blank">Chong.Lu@windriver.com</a>&gt;&quot;<b=
r>
-RECIPE_MAINTAINER_pn-libcap =3D &quot;Chong Lu &lt;<a href=3D"mailto:Chong=
.Lu@windriver.com" target=3D"_blank">Chong.Lu@windriver.com</a>&gt;&quot;<b=
r>
+RECIPE_MAINTAINER_pn-libbsd =3D &quot;Robert Yang &lt;<a href=3D"mailto:li=
ezhi.yang@windriver.com" target=3D"_blank">liezhi.yang@windriver.com</a>&gt=
;&quot;<br>
+RECIPE_MAINTAINER_pn-libcap =3D &quot;Robert Yang &lt;<a href=3D"mailto:li=
ezhi.yang@windriver.com" target=3D"_blank">liezhi.yang@windriver.com</a>&gt=
;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-libcgroup =3D &quot;Saul Wold &lt;<a href=3D"ma=
ilto:sgw@linux.intel.com" target=3D"_blank">sgw@linux.intel.com</a>&gt;&quo=
t;<br>
=C2=A0 RECIPE_MAINTAINER_pn-libcheck =3D &quot;Robert Yang &lt;<a href=3D"m=
ailto:liezhi.yang@windriver.com" target=3D"_blank">liezhi.yang@windriver.co=
m</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-libclass-isa-perl =3D &quot;Saul Wold &lt;<a hr=
ef=3D"mailto:sgw@linux.intel.com" target=3D"_blank">sgw@linux.intel.com</a>=
&gt;&quot;<br>
@@ -340,7 +340,7 @@ RECIPE_MAINTAINER_pn-libowl =3D &quot;Ross Burton &lt;<=
a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel=
.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-libpam =3D &quot;Randy Witt &lt;<a href=3D"mail=
to:randy.e.witt@linux.intel.com" target=3D"_blank">randy.e.witt@linux.intel=
.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-libpcap =3D &quot;Cristian Iorga &lt;<a href=3D=
"mailto:cristian.iorga@intel.com" target=3D"_blank">cristian.iorga@intel.co=
m</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-libpciaccess =3D &quot;Richard Purdie &lt;<a hr=
ef=3D"mailto:richard.purdie@linuxfoundation.org" target=3D"_blank">richard.=
purdie@linuxfoundation.org</a>&gt;&quot;<br>
-RECIPE_MAINTAINER_pn-libpcre =3D &quot;Chong Lu &lt;<a href=3D"mailto:Chon=
g.Lu@windriver.com" target=3D"_blank">Chong.Lu@windriver.com</a>&gt;&quot;<=
br>
+RECIPE_MAINTAINER_pn-libpcre =3D &quot;Robert Yang &lt;<a href=3D"mailto:l=
iezhi.yang@windriver.com" target=3D"_blank">liezhi.yang@windriver.com</a>&g=
t;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-libpfm4 =3D &quot;Matthew McClintock &lt;<a hre=
f=3D"mailto:msm@freescale.com" target=3D"_blank">msm@freescale.com</a>&gt;&=
quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-libpng =3D &quot;Randy Witt &lt;<a href=3D"mail=
to:randy.e.witt@linux.intel.com" target=3D"_blank">randy.e.witt@linux.intel=
.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-libpng12 =3D &quot;Randy Witt &lt;<a href=3D"ma=
ilto:randy.e.witt@linux.intel.com" target=3D"_blank">randy.e.witt@linux.int=
el.com</a>&gt;&quot;<br>
@@ -366,7 +366,7 @@ RECIPE_MAINTAINER_pn-liburcu =3D &quot;Saul Wold &lt;<a=
 href=3D"mailto:sgw@linux.intel.com" target=3D"_blank">sgw@linux.intel.com<=
/a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-liburi-perl =3D &quot;Kai Kang &lt;<a href=3D"m=
ailto:kai.kang@windriver.com" target=3D"_blank">kai.kang@windriver.com</a>&=
gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-libusb1 =3D &quot;Alejandro Hernandez &lt;<a hr=
ef=3D"mailto:alejandro.hernandez@linux.intel.com" target=3D"_blank">alejand=
ro.hernandez@linux.intel.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-libusb-compat =3D &quot;Alejandro Hernandez &lt=
;<a href=3D"mailto:alejandro.hernandez@linux.intel.com" target=3D"_blank">a=
lejandro.hernandez@linux.intel.com</a>&gt;&quot;<br>
-RECIPE_MAINTAINER_pn-libuser =3D &quot;Chong Lu &lt;<a href=3D"mailto:Chon=
g.Lu@windriver.com" target=3D"_blank">Chong.Lu@windriver.com</a>&gt;&quot;<=
br>
+RECIPE_MAINTAINER_pn-libuser =3D &quot;Robert Yang &lt;<a href=3D"mailto:l=
iezhi.yang@windriver.com" target=3D"_blank">liezhi.yang@windriver.com</a>&g=
t;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-libvorbis =3D &quot;Cristian Iorga &lt;<a href=
=3D"mailto:cristian.iorga@intel.com" target=3D"_blank">cristian.iorga@intel=
.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-libx11-diet =3D &quot;Kai Kang &lt;<a href=3D"m=
ailto:kai.kang@windriver.com" target=3D"_blank">kai.kang@windriver.com</a>&=
gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-libx11 =3D &quot;Ross Burton &lt;<a href=3D"mai=
lto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;&=
quot;<br>
@@ -465,7 +465,7 @@ RECIPE_MAINTAINER_pn-mkelfimage =3D &quot;Saul Wold &lt=
;<a href=3D"mailto:sgw@linux.intel.com" target=3D"_blank">sgw@linux.intel.c=
om</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-mkfontdir =3D &quot;Saul Wold &lt;<a href=3D"ma=
ilto:sgw@linux.intel.com" target=3D"_blank">sgw@linux.intel.com</a>&gt;&quo=
t;<br>
=C2=A0 RECIPE_MAINTAINER_pn-mkfontscale =3D &quot;Saul Wold &lt;<a href=3D"=
mailto:sgw@linux.intel.com" target=3D"_blank">sgw@linux.intel.com</a>&gt;&q=
uot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-mklibs-native =3D &quot;Robert Yang &lt;<a href=
=3D"mailto:liezhi.yang@windriver.com" target=3D"_blank">liezhi.yang@windriv=
er.com</a>&gt;&quot;<br>
-RECIPE_MAINTAINER_pn-mktemp =3D &quot;Chong Lu &lt;<a href=3D"mailto:Chong=
.Lu@windriver.com" target=3D"_blank">Chong.Lu@windriver.com</a>&gt;&quot;<b=
r>
+RECIPE_MAINTAINER_pn-mktemp =3D &quot;Robert Yang &lt;<a href=3D"mailto:li=
ezhi.yang@windriver.com" target=3D"_blank">liezhi.yang@windriver.com</a>&gt=
;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-mobile-broadband-provider-info =3D &quot;Saul W=
old &lt;<a href=3D"mailto:sgw@linux.intel.com" target=3D"_blank">sgw@linux.=
intel.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-modutils-initscripts =3D &quot;Robert Yang &lt;=
<a href=3D"mailto:liezhi.yang@windriver.com" target=3D"_blank">liezhi.yang@=
windriver.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-mpeg2dec =3D &quot;Saul Wold &lt;<a href=3D"mai=
lto:sgw@linux.intel.com" target=3D"_blank">sgw@linux.intel.com</a>&gt;&quot=
;<br>
@@ -485,7 +485,7 @@ RECIPE_MAINTAINER_pn-neon =3D &quot;Cristian Iorga &lt;=
<a href=3D"mailto:cristian.iorga@intel.com" target=3D"_blank">cristian.iorg=
a@intel.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-netbase =3D &quot;Cristian Iorga &lt;<a href=3D=
"mailto:cristian.iorga@intel.com" target=3D"_blank">cristian.iorga@intel.co=
m</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-nettle =3D &quot;Armin Kuster &lt;<a href=3D"ma=
ilto:akuster808@gmail.com" target=3D"_blank">akuster808@gmail.com</a>&gt;&q=
uot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-net-tools =3D &quot;Cristian Iorga &lt;<a href=
=3D"mailto:cristian.iorga@intel.com" target=3D"_blank">cristian.iorga@intel=
.com</a>&gt;&quot;<br>
-RECIPE_MAINTAINER_pn-nfs-export-root =3D &quot;Chong Lu &lt;<a href=3D"mai=
lto:Chong.Lu@windriver.com" target=3D"_blank">Chong.Lu@windriver.com</a>&gt=
;&quot;<br>
+RECIPE_MAINTAINER_pn-nfs-export-root =3D &quot;Robert Yang &lt;<a href=3D"=
mailto:liezhi.yang@windriver.com" target=3D"_blank">liezhi.yang@windriver.c=
om</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-nfs-utils =3D &quot;Alejandro Hernandez &lt;<a =
href=3D"mailto:alejandro.hernandez@linux.intel.com" target=3D"_blank">aleja=
ndro.hernandez@linux.intel.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-npth =3D &quot;Saul Wold &lt;<a href=3D"mailto:=
sgw@linux.intel.com" target=3D"_blank">sgw@linux.intel.com</a>&gt;&quot;<br=
>
=C2=A0 RECIPE_MAINTAINER_pn-nspr =3D &quot;Saul Wold &lt;<a href=3D"mailto:=
sgw@linux.intel.com" target=3D"_blank">sgw@linux.intel.com</a>&gt;&quot;<br=
>
@@ -598,7 +598,7 @@ RECIPE_MAINTAINER_pn-qt-demo-init =3D &quot;Paul Egglet=
on &lt;<a href=3D"mailto:paul.eggleton@linux.intel.co" target=3D"_blank">pa=
ul.eggleton@linux.intel.co</a><br>
=C2=A0 RECIPE_MAINTAINER_pn-qt-mobility-embedded =3D &quot;Paul Eggleton &l=
t;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.e=
ggleton@linux.intel.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-qt-mobility-x11 =3D &quot;Paul Eggleton &lt;<a =
href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.egglet=
on@linux.intel.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-quicky =3D &quot;Paul Eggleton &lt;<a href=3D"m=
ailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.=
intel.com</a>&gt;&quot;<br>
-RECIPE_MAINTAINER_pn-quilt =3D &quot;Chong Lu &lt;<a href=3D"mailto:Chong.=
Lu@windriver.com" target=3D"_blank">Chong.Lu@windriver.com</a>&gt;&quot;<br=
>
+RECIPE_MAINTAINER_pn-quilt =3D &quot;Robert Yang &lt;<a href=3D"mailto:lie=
zhi.yang@windriver.com" target=3D"_blank">liezhi.yang@windriver.com</a>&gt;=
&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-quota =3D &quot;Cristian Iorga &lt;<a href=3D"m=
ailto:cristian.iorga@intel.com" target=3D"_blank">cristian.iorga@intel.com<=
/a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-randrproto =3D &quot;Ross Burton &lt;<a href=3D=
"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&=
gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-readline =3D &quot;Hongxu Jia &lt;<a href=3D"ma=
ilto:hongxu.jia@windriver.com" target=3D"_blank">hongxu.jia@windriver.com</=
a>&gt;&quot;<br>
@@ -637,7 +637,7 @@ RECIPE_MAINTAINER_pn-sqlite3 =3D &quot;An=C3=ADbal Lim=
=C3=B3n &lt;<a href=3D"mailto:anibal.limon@linux.intel.com" target=3D"_blan=
k">anibal.limon@linux.intel.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-squashfs-tools =3D &quot;Robert Yang &lt;<a hre=
f=3D"mailto:liezhi.yang@windriver.com" target=3D"_blank">liezhi.yang@windri=
ver.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-startup-notification =3D &quot;Saul Wold &lt;<a=
 href=3D"mailto:sgw@linux.intel.com" target=3D"_blank">sgw@linux.intel.com<=
/a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-stat =3D &quot;Chen Qi &lt;<a href=3D"mailto:Qi=
.Chen@windriver.com" target=3D"_blank">Qi.Chen@windriver.com</a>&gt;&quot;<=
br>
-RECIPE_MAINTAINER_pn-strace =3D &quot;Chong Lu &lt;<a href=3D"mailto:Chong=
.Lu@windriver.com" target=3D"_blank">Chong.Lu@windriver.com</a>&gt;&quot;<b=
r>
+RECIPE_MAINTAINER_pn-strace =3D &quot;Robert Yang &lt;<a href=3D"mailto:li=
ezhi.yang@windriver.com" target=3D"_blank">liezhi.yang@windriver.com</a>&gt=
;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-subversion =3D &quot;Richard Purdie &lt;<a href=
=3D"mailto:richard.purdie@linuxfoundation.org" target=3D"_blank">richard.pu=
rdie@linuxfoundation.org</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-sudo =3D &quot;Chen Qi &lt;<a href=3D"mailto:Qi=
.Chen@windriver.com" target=3D"_blank">Qi.Chen@windriver.com</a>&gt;&quot;<=
br>
=C2=A0 RECIPE_MAINTAINER_pn-swabber-native =3D &quot;Saul Wold &lt;<a href=
=3D"mailto:sgw@linux.intel.com" target=3D"_blank">sgw@linux.intel.com</a>&g=
t;&quot;<br>
@@ -655,7 +655,7 @@ RECIPE_MAINTAINER_pn-taglib =3D &quot;Cristian Iorga &l=
t;<a href=3D"mailto:cristian.iorga@intel.com" target=3D"_blank">cristian.io=
rga@intel.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-tar-replacement-native =3D &quot;Robert Yang &l=
t;<a href=3D"mailto:liezhi.yang@windriver.com" target=3D"_blank">liezhi.yan=
g@windriver.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-tar =3D &quot;Chen Qi &lt;<a href=3D"mailto:Qi.=
Chen@windriver.com" target=3D"_blank">Qi.Chen@windriver.com</a>&gt;&quot;<b=
r>
=C2=A0 RECIPE_MAINTAINER_pn-tcf-agent =3D &quot;Randy Witt &lt;<a href=3D"m=
ailto:randy.e.witt@linux.intel.com" target=3D"_blank">randy.e.witt@linux.in=
tel.com</a>&gt;&quot;<br>
-RECIPE_MAINTAINER_pn-tcl =3D &quot;Chong Lu &lt;<a href=3D"mailto:Chong.Lu=
@windriver.com" target=3D"_blank">Chong.Lu@windriver.com</a>&gt;&quot;<br>
+RECIPE_MAINTAINER_pn-tcl =3D &quot;Robert Yang &lt;<a href=3D"mailto:liezh=
i.yang@windriver.com" target=3D"_blank">liezhi.yang@windriver.com</a>&gt;&q=
uot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-tcp-wrappers =3D &quot;Robert Yang &lt;<a href=
=3D"mailto:liezhi.yang@windriver.com" target=3D"_blank">liezhi.yang@windriv=
er.com</a>&gt;&quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-tcp-wrappers =3D &quot;Saul Wold &lt;<a href=3D=
"mailto:sgw@linux.intel.com" target=3D"_blank">sgw@linux.intel.com</a>&gt;&=
quot;<br>
=C2=A0 RECIPE_MAINTAINER_pn-telepathy-glib =3D &quot;Cristian Iorga &lt;<a =
href=3D"mailto:cristian.iorga@intel.com" target=3D"_blank">cristian.iorga@i=
ntel.com</a>&gt;&quot;<br>
<br>
</blockquote>
-- <br></div></div><div class=3D"HOEnZb"><div class=3D"h5">
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><br>
</div></div></blockquote></div><br></div>

--001a11354e68cbebab0514d94cea--
