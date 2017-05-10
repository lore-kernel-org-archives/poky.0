Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9CAEE007BA; Wed, 10 May 2017 07:52:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E3D1E003C1
	for <poky@yoctoproject.org>; Wed, 10 May 2017 07:52:11 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id u65so346828wmu.3
	for <poky@yoctoproject.org>; Wed, 10 May 2017 07:52:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=M+/7ltMoAHWp/mPGacJfowL7XZ6q7Qlx+KnN/e/VqqM=;
	b=a+Nfb8S/3NDl+c5q5aahxBw3NuDDRzs/COyFRXaif++c66XylzDZ8M7r56KGwBnd3l
	xx63vg5B1Y03rYqbO1vsuzzKN1PG5UTzy/tLCNJvd9eoffEo7AiZ7LyGJokcZJouhqWb
	Q1tsTiBgk9kb0VvDUdFU8y16x1pOZZ4+OHDsjgn0bmp1Tkqzg58Lu4bQ4r1Y9gRII+8e
	MFNBmD2oeINqosOqm6/BBT8BySNzth5K0T9mqch0GUOT9/RPcHX2t7+T3kX7Y+5qnGR7
	miOyndhij+id9PjrB+iiJGnHXvmprojUSK0/DZNiUWEATMqu/3BYrsxp5WbjgmNfDNQ0
	JuxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=M+/7ltMoAHWp/mPGacJfowL7XZ6q7Qlx+KnN/e/VqqM=;
	b=kiC6NTW/OCwCtROsj2ULUTa4N+0F3BxtJWouQjGgOXV9+iCnsIW4HHlZGPLYoZwKUQ
	vSVhJeOrCij5ACkBQIwbMsArCIe4GGLCPS41XoQmw7aUjqlHSiXnRuHRdAm9KxDp4vx8
	gSx0dTNXwn4WHRyyoWsyxhAGO6Yz2FRZz3ClvdSe0bbgP+5IPiVSUbth5NixpDndp+OL
	K0pehwERmExnrjFJA85dWhZwHayQ/Q2DmEvtuWFfEE48oKDOei3xQuQbkAGyKsKm5+FR
	4SSYaHeEx7JfywTSg6qMdtTuM76FPCoWyMIPmJKl9VVtxC8XDlw+EY8v07erBuESKMNT
	H9Qg==
X-Gm-Message-State: AODbwcD8KARc/4HoHmN+42wtr4JfPS7NDSCApfp9DQT/eJ8cSACeKNlV
	ned97pggkamMOR0UVFUaad4lcOWQDQ==
X-Received: by 10.80.180.155 with SMTP id w27mr4627669edd.42.1494427929993;
	Wed, 10 May 2017 07:52:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.195.143 with HTTP; Wed, 10 May 2017 07:51:39 -0700 (PDT)
In-Reply-To: <1494426689.12394.6.camel@linux.intel.com>
References: <20170510135902.7409-1-alexander.kanavin@linux.intel.com>
	<1494426689.12394.6.camel@linux.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 10 May 2017 07:51:39 -0700
Message-ID: <CAMKF1so8HtBWZG1vkDjn6Do-bHsz2PUXRnC+=pPKrpuBfvDKJQ@mail.gmail.com>
To: Saul Wold <sgw@linux.intel.com>
Cc: "Maxin B. John" <maxin.john@intel.com>,
	Ricardo Neri <ricardo.neri-calderon@linux.intel.com>,
	Fathi Boudra <fathi.boudra@linaro.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] maitainers.inc: assign newly added recipes
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
X-List-Received-Date: Wed, 10 May 2017 14:52:13 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, May 10, 2017 at 7:31 AM, Saul Wold <sgw@linux.intel.com> wrote:
>
>
> I was about to send a patch to assign Wei Tee for gstreamer1.0-vaapi
> and libva since they affect the support of some graphics components.
>
> Can we add her for the assignement of those instead of Maxim and Khem?
>

it will be good for it to belong to gst maintainer

> Sau!
>
> On Wed, 2017-05-10 at 16:59 +0300, Alexander Kanavin wrote:
>> If you disagree with the assignments, please speak up.
>>
>> Signed-off-by: Alexander Kanavin <alexander.kanavin@linux.intel.com>
>> ---
>>  meta-poky/conf/distro/include/maintainers.inc | 23
>> +++++++++++++++++++++--
>>  1 file changed, 21 insertions(+), 2 deletions(-)
>>
>> diff --git a/meta-poky/conf/distro/include/maintainers.inc b/meta-
>> poky/conf/distro/include/maintainers.inc
>> index 261c8f313bf..c247acf8a54 100644
>> --- a/meta-poky/conf/distro/include/maintainers.inc
>> +++ b/meta-poky/conf/distro/include/maintainers.inc
>> @@ -28,7 +28,9 @@
>>  # Please keep this list in alphabetical order.
>>  #
>>  RECIPE_MAINTAINER_pn-acl =3D "Chen Qi <Qi.Chen@windriver.com>"
>> +RECIPE_MAINTAINER_pn-acpica =3D "Fathi Boudra <fathi.boudra@linaro.org
>> >"
>>  RECIPE_MAINTAINER_pn-acpid =3D "Maxin B. John <maxin.john@intel.com>"
>> +RECIPE_MAINTAINER_pn-acpitests =3D "Fathi Boudra <fathi.boudra@linaro.
>> org>"
>>  RECIPE_MAINTAINER_pn-adwaita-icon-theme =3D "Jussi Kukkonen <jussi.kuk
>> konen@intel.com>"
>>  RECIPE_MAINTAINER_pn-alsa-lib =3D "Tanu Kaskinen <tanuk@iki.fi>"
>>  RECIPE_MAINTAINER_pn-alsa-plugins =3D "Tanu Kaskinen <tanuk@iki.fi>"
>> @@ -80,6 +82,7 @@ RECIPE_MAINTAINER_pn-bsd-headers =3D "Khem Raj <raj.k
>> hem@gmail.com>"
>>  RECIPE_MAINTAINER_pn-btrfs-tools =3D "Alexander Kanavin <alexander.kan
>> avin@intel.com>"
>>  RECIPE_MAINTAINER_pn-build-appliance-image =3D "Cristian Iorga <cristi
>> an.iorga@intel.com>"
>>  RECIPE_MAINTAINER_pn-build-compare =3D "Randy Witt <randy.e.witt@linux
>> .intel.com>"
>> +RECIPE_MAINTAINER_pn-build-sysroots =3D "Richard Purdie <richard.purdi
>> e@linuxfoundation.org>"
>>  RECIPE_MAINTAINER_pn-builder =3D "Cristian Iorga <cristian.iorga@intel
>> .com>"
>>  RECIPE_MAINTAINER_pn-buildtools-tarball =3D "Cristian Iorga <cristian.
>> iorga@intel.com>"
>>  RECIPE_MAINTAINER_pn-busybox =3D "Armin Kuster <akuster808@gmail.com>"
>> @@ -125,12 +128,13 @@ RECIPE_MAINTAINER_pn-core-image-sato-sdk =3D
>> "Ross Burton <ross.burton@intel.com>"
>>  RECIPE_MAINTAINER_pn-core-image-sato-sdk-ptest =3D "Ross Burton <ross.
>> burton@intel.com>"
>>  RECIPE_MAINTAINER_pn-core-image-testmaster =3D "Ross Burton <ross.burt
>> on@intel.com>"
>>  RECIPE_MAINTAINER_pn-core-image-testmaster-initramfs =3D "Ross Burton
>> <ross.burton@intel.com>"
>> +RECIPE_MAINTAINER_pn-core-image-tiny-initramfs =3D "Ross Burton <ross.
>> burton@intel.com>"
>>  RECIPE_MAINTAINER_pn-core-image-weston =3D "Ross Burton <ross.burton@i
>> ntel.com>"
>>  RECIPE_MAINTAINER_pn-core-image-x11 =3D "Ross Burton <ross.burton@inte
>> l.com>"
>>  RECIPE_MAINTAINER_pn-coreutils =3D "Chen Qi <Qi.Chen@windriver.com>"
>>  RECIPE_MAINTAINER_pn-cpio =3D "Denys Dmytriyenko <denis@denix.org>"
>>  RECIPE_MAINTAINER_pn-cracklib =3D "Armin Kuster <akuster@mvista.com>"
>> -RECIPE_MAINTAINER_pn-createrepo =3D "Hongxu Jia <hongxu.jia@windriver.
>> com>"
>> +RECIPE_MAINTAINER_pn-createrepo-c =3D "Alexander Kanavin <alexander.ka
>> navin@intel.com>"
>>  RECIPE_MAINTAINER_pn-cronie =3D "Edwin Plauchu <edwin.plauchu.camacho@
>> linux.intel.com>"
>>  RECIPE_MAINTAINER_pn-cross-localedef-native =3D "Khem Raj <raj.khem@gm
>> ail.com>"
>>  RECIPE_MAINTAINER_pn-cryptodev-linux =3D "Robert Yang <liezhi.yang@win
>> driver.com>"
>> @@ -158,6 +162,7 @@ RECIPE_MAINTAINER_pn-distcc =3D "Hongxu Jia <hongxu
>> .jia@windriver.com>"
>>  RECIPE_MAINTAINER_pn-distcc-config =3D "Dengke Du <dengke.du@windriver
>> .com>"
>>  RECIPE_MAINTAINER_pn-dmidecode =3D "Alexander Kanavin <alexander.kanav
>> in@intel.com>"
>>  RECIPE_MAINTAINER_pn-dmxproto =3D "Jussi Kukkonen <jussi.kukkonen@inte
>> l.com>"
>> +RECIPE_MAINTAINER_pn-dnf =3D "Alexander Kanavin <alexander.kanavin@int
>> el.com>"
>>  RECIPE_MAINTAINER_pn-docbook-xml-dtd4 =3D "Dengke Du <dengke.du@windri
>> ver.com>"
>>  RECIPE_MAINTAINER_pn-docbook-xsl-stylesheets =3D "Dengke Du <dengke.du
>> @windriver.com>"
>>  RECIPE_MAINTAINER_pn-dosfstools =3D "Dengke Du <dengke.du@windriver.co
>> m>"
>> @@ -237,8 +242,11 @@ RECIPE_MAINTAINER_pn-gnu-config =3D "Robert Yang <
>> liezhi.yang@windriver.com>"
>>  RECIPE_MAINTAINER_pn-gnu-efi =3D "Robert Yang <liezhi.yang@windriver.c
>> om>"
>>  RECIPE_MAINTAINER_pn-gnupg =3D "Hongxu Jia <hongxu.jia@windriver.com>"
>>  RECIPE_MAINTAINER_pn-gnutls =3D "Armin Kuster <akuster@mvista.com>"
>> +RECIPE_MAINTAINER_pn_go =3D "Khem Raj <raj.khem@gmail.com>"
>> +RECIPE_MAINTAINER_pn-go-cross =3D "Khem Raj <raj.khem@gmail.com>"
>> +RECIPE_MAINTAINER_pn-go-helloworld =3D "Khem Raj <raj.khem@gmail.com>"
>> +RECIPE_MAINTAINER_pn-go-native =3D "Khem Raj <raj.khem@gmail.com>"
>>  RECIPE_MAINTAINER_pn-gobject-introspection =3D "Alexander Kanavin <ale
>> xander.kanavin@intel.com>"
>> -RECIPE_MAINTAINER_pn-go-native =3D "Armin Kuster <akuster808@gmail.com
>> >"
>>  RECIPE_MAINTAINER_pn-gperf =3D "Alexander Kanavin <alexander.kanavin@i
>> ntel.com>"
>>  RECIPE_MAINTAINER_pn-gpgme =3D "Hongxu Jia <hongxu.jia@windriver.com>"
>>  RECIPE_MAINTAINER_pn-gptfdisk =3D "Alexander Kanavin <alexander.kanavi
>> n@intel.com>"
>> @@ -257,6 +265,7 @@ RECIPE_MAINTAINER_pn-gstreamer1.0-plugins-base =3D
>> "Maxin B. John <maxin.john@inte
>>  RECIPE_MAINTAINER_pn-gstreamer1.0-plugins-good =3D "Maxin B. John <max
>> in.john@intel.com>"
>>  RECIPE_MAINTAINER_pn-gstreamer1.0-plugins-ugly =3D "Maxin B. John <max
>> in.john@intel.com>"
>>  RECIPE_MAINTAINER_pn-gstreamer1.0-rtsp-server =3D "Maxin B. John <maxi
>> n.john@intel.com>"
>> +RECIPE_MAINTAINER_pn-gstreamer1.0-vaapi =3D "Maxin B. John <maxin.john
>> @intel.com>"
>>  RECIPE_MAINTAINER_pn-gtk+ =3D "Jussi Kukkonen <jussi.kukkonen@intel.co
>> m>"
>>  RECIPE_MAINTAINER_pn-gtk+3 =3D "Jussi Kukkonen <jussi.kukkonen@intel.c
>> om>"
>>  RECIPE_MAINTAINER_pn-gtk-doc =3D "Alexander Kanavin <alexander.kanavin
>> @intel.com>"
>> @@ -328,10 +337,12 @@ RECIPE_MAINTAINER_pn-libcap-ng =3D "Robert Yang <
>> liezhi.yang@windriver.com>"
>>  RECIPE_MAINTAINER_pn-libcgroup =3D "Alexander Kanavin <alexander.kanav
>> in@intel.com>"
>>  RECIPE_MAINTAINER_pn-libcheck =3D "Robert Yang <liezhi.yang@windriver.
>> com>"
>>  RECIPE_MAINTAINER_pn-libclass-isa-perl =3D "An=C3=ADbal Lim=C3=B3n <ani=
bal.limon
>> @linux.intel.com>"
>> +RECIPE_MAINTAINER_pn-libcomps =3D "Alexander Kanavin <alexander.kanavi
>> n@intel.com>"
>>  RECIPE_MAINTAINER_pn-libconvert-asn1-perl =3D "An=C3=ADbal Lim=C3=B3n <=
anibal.li
>> mon@linux.intel.com>"
>>  RECIPE_MAINTAINER_pn-libcroco =3D "Jussi Kukkonen <jussi.kukkonen@inte
>> l.com>"
>>  RECIPE_MAINTAINER_pn-libdaemon =3D "Alexander Kanavin <alexander.kanav
>> in@intel.com>"
>>  RECIPE_MAINTAINER_pn-libdmx =3D "Jussi Kukkonen <jussi.kukkonen@intel.
>> com>"
>> +RECIPE_MAINTAINER_pn-libdnf =3D "Alexander Kanavin <alexander.kanavin@
>> intel.com>"
>>  RECIPE_MAINTAINER_pn-libdrm =3D "Otavio Salvador <otavio.salvador@ossy
>> stems.com.br>"
>>  RECIPE_MAINTAINER_pn-libdumpvalue-perl =3D "An=C3=ADbal Lim=C3=B3n <ani=
bal.limon
>> @linux.intel.com>"
>>  RECIPE_MAINTAINER_pn-libenv-perl =3D "An=C3=ADbal Lim=C3=B3n <anibal.li=
mon@linux
>> .intel.com>"
>> @@ -386,6 +397,7 @@ RECIPE_MAINTAINER_pn-libpng12 =3D "Maxin B. John <m
>> axin.john@intel.com>"
>>  RECIPE_MAINTAINER_pn-libpod-plainer-perl =3D "An=C3=ADbal Lim=C3=B3n <a=
nibal.lim
>> on@linux.intel.com>"
>>  RECIPE_MAINTAINER_pn-libproxy =3D "Maxin B. John <maxin.john@intel.com
>> >"
>>  RECIPE_MAINTAINER_pn-libpthread-stubs =3D "Alexander Kanavin <alexande
>> r.kanavin@intel.com>"
>> +RECIPE_MAINTAINER_pn-librepo =3D "Alexander Kanavin <alexander.kanavin
>> @intel.com>"
>>  RECIPE_MAINTAINER_pn-librsvg =3D "Jussi Kukkonen <jussi.kukkonen@intel
>> .com>"
>>  RECIPE_MAINTAINER_pn-libsamplerate0 =3D "Tanu Kaskinen <tanuk@iki.fi>"
>>  RECIPE_MAINTAINER_pn-libsdl =3D "Robert Yang <liezhi.yang@windriver.co
>> m>"
>> @@ -409,6 +421,7 @@ RECIPE_MAINTAINER_pn-liburi-perl =3D "An=C3=ADbal Li=
m=C3=B3n
>> <anibal.limon@linux.intel.com
>>  RECIPE_MAINTAINER_pn-libusb-compat =3D "Leonardo Sandoval <leonardo.sa
>> ndoval.gonzalez@linux.intel.com>"
>>  RECIPE_MAINTAINER_pn-libusb1 =3D "Leonardo Sandoval <leonardo.sandoval
>> .gonzalez@linux.intel.com>"
>>  RECIPE_MAINTAINER_pn-libuser =3D "Robert Yang <liezhi.yang@windriver.c
>> om>"
>> +RECIPE_MAINTAINER_pn-libva =3D "Khem Raj <raj.khem@gmail.com>"
>>  RECIPE_MAINTAINER_pn-libvorbis =3D "Tanu Kaskinen <tanuk@iki.fi>"
>>  RECIPE_MAINTAINER_pn-libwebp =3D "Alexander Kanavin <alexander.kanavin
>> @intel.com>"
>>  RECIPE_MAINTAINER_pn-libx11 =3D "Jussi Kukkonen <jussi.kukkonen@intel.
>> com>"
>> @@ -423,6 +436,7 @@ RECIPE_MAINTAINER_pn-libxdmcp =3D "Jussi Kukkonen <
>> jussi.kukkonen@intel.com>"
>>  RECIPE_MAINTAINER_pn-libxext =3D "Jussi Kukkonen <jussi.kukkonen@intel
>> .com>"
>>  RECIPE_MAINTAINER_pn-libxfixes =3D "Jussi Kukkonen <jussi.kukkonen@int
>> el.com>"
>>  RECIPE_MAINTAINER_pn-libxfont =3D "Jussi Kukkonen <jussi.kukkonen@inte
>> l.com>"
>> +RECIPE_MAINTAINER_pn-libxfont2 =3D "Jussi Kukkonen <jussi.kukkonen@int
>> el.com>"
>>  RECIPE_MAINTAINER_pn-libxft =3D "Jussi Kukkonen <jussi.kukkonen@intel.
>> com>"
>>  RECIPE_MAINTAINER_pn-libxi =3D "Jussi Kukkonen <jussi.kukkonen@intel.c
>> om>"
>>  RECIPE_MAINTAINER_pn-libxinerama =3D "Jussi Kukkonen <jussi.kukkonen@i
>> ntel.com>"
>> @@ -470,6 +484,7 @@ RECIPE_MAINTAINER_pn-ltp =3D "Dengke Du <dengke.du@
>> windriver.com>"
>>  RECIPE_MAINTAINER_pn-lttng-modules =3D "Richard Purdie <richard.purdie
>> @linuxfoundation.org>"
>>  RECIPE_MAINTAINER_pn-lttng-tools =3D "Richard Purdie <richard.purdie@l
>> inuxfoundation.org>"
>>  RECIPE_MAINTAINER_pn-lttng-ust =3D "Richard Purdie <richard.purdie@lin
>> uxfoundation.org>"
>> +RECIPE_MAINTAINER_pn-lz =3D "Alexander Kanavin <alexander.kanavin@inte
>> l.com>"
>>  RECIPE_MAINTAINER_pn-lz4 =3D "Armin Kuster <akuster808@gmail.com>"
>>  RECIPE_MAINTAINER_pn-lzo =3D "Armin Kuster <akuster808@gmail.com>"
>>  RECIPE_MAINTAINER_pn-lzop =3D "Armin Kuster <akuster808@gmail.com>"
>> @@ -553,6 +568,8 @@ RECIPE_MAINTAINER_pn-oprofile =3D "Alexander
>> Kanavin <alexander.kanavin@intel.com>
>>  RECIPE_MAINTAINER_pn-orc =3D "Maxin B. John <maxin.john@intel.com>"
>>  RECIPE_MAINTAINER_pn-os-release =3D "Ross Burton <ross.burton@intel.co
>> m>"
>>  RECIPE_MAINTAINER_pn-ossp-uuid =3D "Alexander Kanavin <alexander.kanav
>> in@intel.com>"
>> +RECIPE_MAINTAINER_pn-ovmf =3D "Ricardo Neri <ricardo.neri-calderon@lin
>> ux.intel.com>"
>> +RECIPE_MAINTAINER_pn-ovmf-shell-image =3D "Ricardo Neri <ricardo.neri-
>> calderon@linux.intel.com>"
>>  RECIPE_MAINTAINER_pn-p11-kit =3D "Alexander Kanavin <alexander.kanavin
>> @intel.com>"
>>  RECIPE_MAINTAINER_pn-package-index =3D "Ross Burton <ross.burton@intel
>> .com>"
>>  RECIPE_MAINTAINER_pn-packagegroup-base =3D "Ross Burton <ross.burton@i
>> ntel.com>"
>> @@ -646,6 +663,7 @@ RECIPE_MAINTAINER_pn-python3-distribute =3D "Edwin
>> Plauchu <edwin.plauchu.camacho@
>>  RECIPE_MAINTAINER_pn-python3-docutils =3D "Edwin Plauchu <edwin.plauch
>> u.camacho@linux.intel.com>"
>>  RECIPE_MAINTAINER_pn-python3-git =3D "Jose Lamego <jose.a.lamego@linux
>> .intel.com>"
>>  RECIPE_MAINTAINER_pn-python3-gitdb =3D "Edwin Plauchu <edwin.plauchu.c
>> amacho@linux.intel.com>"
>> +RECIPE_MAINTAINER_pn-python3-iniparse =3D "Edwin Plauchu <edwin.plauch
>> u.camacho@linux.intel.com>"
>>  RECIPE_MAINTAINER_pn-python3-mako =3D "Jose Lamego <jose.a.lamego@linu
>> x.intel.com>"
>>  RECIPE_MAINTAINER_pn-python3-native =3D "Alejandro Hernandez <alejandr
>> o.hernandez@linux.intel.com>"
>>  RECIPE_MAINTAINER_pn-python3-nose =3D "Edwin Plauchu <edwin.plauchu.ca
>> macho@linux.intel.com>"
>> @@ -772,6 +790,7 @@ RECIPE_MAINTAINER_pn-weston =3D "Denys Dmytriyenko
>> <denis@denix.org>"
>>  RECIPE_MAINTAINER_pn-weston-init =3D "Denys Dmytriyenko <denis@denix.o
>> rg>"
>>  RECIPE_MAINTAINER_pn-wget =3D "Robert Yang <liezhi.yang@windriver.com>
>> "
>>  RECIPE_MAINTAINER_pn-which =3D "Leonardo Sandoval <leonardo.sandoval.g
>> onzalez@linux.intel.com>"
>> +RECIPE_MAINTAINER_pn-wic-tools =3D "Ed Bartosh <ed.bartosh@linux.intel
>> .com>"
>>  RECIPE_MAINTAINER_pn-wireless-tools =3D "Maxin B. John <maxin.john@int
>> el.com>"
>>  RECIPE_MAINTAINER_pn-wpa-supplicant =3D "Maxin B. John <maxin.john@int
>> el.com>"
>>  RECIPE_MAINTAINER_pn-x11-common =3D "Jussi Kukkonen <jussi.kukkonen@in
>> tel.com>"
>> --
>> 2.11.0
>>

