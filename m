Return-Path: <ke.yu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id BA7494C8009A
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 20:05:32 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 Mar 2011 18:05:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,300,1297065600"; d="scan'208";a="896095693"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.153.102])
	by fmsmga001.fm.intel.com with ESMTP; 10 Mar 2011 18:05:31 -0800
Date: Fri, 11 Mar 2011 10:11:14 +0800
From: Yu Ke <ke.yu@intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
Message-ID: <20110311021114.GI23315@kyu3-hedt>
References: <AANLkTikrLuE0NdP_Hbqy-B55nYEf7QvKBfM-wQSaNNft@mail.gmail.com>
	<625BA99ED14B2D499DC4E29D8138F1505770D746B3@shsmsx502.ccr.corp.intel.com>
MIME-Version: 1.0
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1505770D746B3@shsmsx502.ccr.corp.intel.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Fri, 11 Mar 2011 02:05:33 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mar 11, 09:20, Tian, Kevin wrote:
> > From: kubera samrat
> > Sent: Thursday, March 10, 2011 5:51 PM
> > 
> > Hi all,
> > 
> > I have added ffmpeg to my recipe. I have created the following recipe
> > for ffmpeg and placed in "meta/recipes-multimedia/ffmpeg" folder.
> > 
> > ****************************************************************
> > ****************************************************************
> > **********************************************************
> > # ffmpeg_0.6.1.bb
> > DESCRIPTION = "Complete and free Internet live audio and video
> > broadcasting solution for Linux/Unix"
> > DEPENDS = "alsa-lib bzip2 lame libvorbis faad2 zlib x264 libtheora
> > libxfixes schroedinger libvpx sdl xvidcore libvdpau libva"
> > 
> > LICENSE = "GPL"
> > 
> > inherit autotools pkgconfig
> > 
> > PR="r0"
> > #S = "${WORKDIR}/ffmpeg-${PV}"
> > 
> > 
> > SRC_URI = "http://ffmpeg.org/releases/ffmpeg-${PV}.tar.bz2"
> > EXTRA_OECONF += "--enable-shared \
> > 	--enable-pthreads\
> > 	--enable-gpl\
> > 	--enable-libmp3lame\
> > 	--enable-libvorbis\
> > 	--enable-libfaac\
> > 	--enable-libxvid\
> > 	--enable-libx264\
> >    	--enable-libvpx\
> >     	--enable-libtheora\
> >     	--enable-postproc \
> >     	--enable-shared \
> >     	--enable-x11grab \
> >    	--enable-libopencore_amrnb \
> >     	--enable-libopencore_amrwb \
> >     	--enable-libschroedinger \
> >     	--enable-libopenjpeg \
> >     	--enable-version3 \
> >     	--enable-nonfree \
> >     	--enable-runtime-cpudetect \
> >     	--disable-debug \
> >     	--disable-asm"
> > 
> > do_configure(){
> > 	oe_conf	--prefix=${D}
> > }
> > 
> > do_compile(){
> >         oe_runmake
> > }
> > 
> > do_install(){
> >         oe_runmake install DESTDIR=${D}
> > }
> > 
> > SRC_URI[md5sum] = "4f5d732d25eedfb072251b5314ba2093"
> > ****************************************************************
> > ****************************************************************
> > ****************************************************************
> > ***************
> > 
> > While building, I am getting the following error:
> > 
> > 
> > ERROR: Nothing RPROVIDES 'ffmpeg' (but
> > /home/kuberasamrat/poky-chrome/meta/recipes-core/images/poky-image-mi
> > nimal-akshat.bb
> > RDEPENDS on or otherwise requires it)
> > NOTE: Runtime target 'ffmpeg' is unbuildable, removing...
> > Missing or unbuildable dependency chain was: ['ffmpeg']
> > ERROR: Required build target 'poky-image-minimal-akshat-live' has no
> > buildable providers.
> > Missing or unbuildable dependency chain was:
> > ['poky-image-minimal-akshat-live', 'poky-image-minimal-akshat',
> > 'ffmpeg']
> > 
> > Please guide me, if you have any solution or advice, if I am doing
> > something wrong.
> > 
> 
> ffmpeg requires a commercial license, and thus is disabled from inclusion in Poky by default.
> You can enable it by comment below line in your local.conf:
> 
> COMMERCIAL_LICENSE ?= "lame gst-fluendo-mp3 libmad mpeg2dec ffmpeg qmmp"

Ha, good catch.

I remember there is similar question raised in the mailing list before. To prevent similar question in the future, probably we should enhance the bitbake output, for example, instead of just saying "ERROR: Nothing PROVIDES 'ffmpeg'", the output "ffmpeg is disabled due to COMMERCIAL_LICENSE" should be more informative.

I've filed a feature enhancement bug 846 for tracking.

Regards
Ke

