Return-Path: <kevin.tian@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0CB464C800A3
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 19:20:53 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 10 Mar 2011 17:20:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,299,1297065600"; d="scan'208";a="400946973"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 10 Mar 2011 17:20:53 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 11 Mar 2011 09:20:34 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Fri, 11 Mar 2011 09:20:32 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: kubera samrat <kubera.samrat@gmail.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Fri, 11 Mar 2011 09:20:31 +0800
Thread-Topic: [poky] Problem while adding "ffmpeg"
Thread-Index: AcvfCMNWTWbrROKsSOKR4UNhDRryIwAgZMiQ
Message-ID: <625BA99ED14B2D499DC4E29D8138F1505770D746B3@shsmsx502.ccr.corp.intel.com>
References: <AANLkTikrLuE0NdP_Hbqy-B55nYEf7QvKBfM-wQSaNNft@mail.gmail.com>
In-Reply-To: <AANLkTikrLuE0NdP_Hbqy-B55nYEf7QvKBfM-wQSaNNft@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Problem while adding "ffmpeg"
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
X-List-Received-Date: Fri, 11 Mar 2011 01:20:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: kubera samrat
> Sent: Thursday, March 10, 2011 5:51 PM
>=20
> Hi all,
>=20
> I have added ffmpeg to my recipe. I have created the following recipe
> for ffmpeg and placed in "meta/recipes-multimedia/ffmpeg" folder.
>=20
> ****************************************************************
> ****************************************************************
> **********************************************************
> # ffmpeg_0.6.1.bb
> DESCRIPTION =3D "Complete and free Internet live audio and video
> broadcasting solution for Linux/Unix"
> DEPENDS =3D "alsa-lib bzip2 lame libvorbis faad2 zlib x264 libtheora
> libxfixes schroedinger libvpx sdl xvidcore libvdpau libva"
>=20
> LICENSE =3D "GPL"
>=20
> inherit autotools pkgconfig
>=20
> PR=3D"r0"
> #S =3D "${WORKDIR}/ffmpeg-${PV}"
>=20
>=20
> SRC_URI =3D "http://ffmpeg.org/releases/ffmpeg-${PV}.tar.bz2"
> EXTRA_OECONF +=3D "--enable-shared \
> 	--enable-pthreads\
> 	--enable-gpl\
> 	--enable-libmp3lame\
> 	--enable-libvorbis\
> 	--enable-libfaac\
> 	--enable-libxvid\
> 	--enable-libx264\
>    	--enable-libvpx\
>     	--enable-libtheora\
>     	--enable-postproc \
>     	--enable-shared \
>     	--enable-x11grab \
>    	--enable-libopencore_amrnb \
>     	--enable-libopencore_amrwb \
>     	--enable-libschroedinger \
>     	--enable-libopenjpeg \
>     	--enable-version3 \
>     	--enable-nonfree \
>     	--enable-runtime-cpudetect \
>     	--disable-debug \
>     	--disable-asm"
>=20
> do_configure(){
> 	oe_conf	--prefix=3D${D}
> }
>=20
> do_compile(){
>         oe_runmake
> }
>=20
> do_install(){
>         oe_runmake install DESTDIR=3D${D}
> }
>=20
> SRC_URI[md5sum] =3D "4f5d732d25eedfb072251b5314ba2093"
> ****************************************************************
> ****************************************************************
> ****************************************************************
> ***************
>=20
> While building, I am getting the following error:
>=20
>=20
> ERROR: Nothing RPROVIDES 'ffmpeg' (but
> /home/kuberasamrat/poky-chrome/meta/recipes-core/images/poky-image-mi
> nimal-akshat.bb
> RDEPENDS on or otherwise requires it)
> NOTE: Runtime target 'ffmpeg' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['ffmpeg']
> ERROR: Required build target 'poky-image-minimal-akshat-live' has no
> buildable providers.
> Missing or unbuildable dependency chain was:
> ['poky-image-minimal-akshat-live', 'poky-image-minimal-akshat',
> 'ffmpeg']
>=20
> Please guide me, if you have any solution or advice, if I am doing
> something wrong.
>=20

ffmpeg requires a commercial license, and thus is disabled from inclusion i=
n Poky by default.
You can enable it by comment below line in your local.conf:

COMMERCIAL_LICENSE ?=3D "lame gst-fluendo-mp3 libmad mpeg2dec ffmpeg qmmp"

Thanks
Kevin

