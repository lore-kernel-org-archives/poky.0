Return-Path: <kubera.samrat@gmail.com>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id D49B54C800A0
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 03:51:15 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wyb40 with SMTP id 40so1670929wyb.35
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 01:51:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=XdNmFzMunoQSula087fUyjg99t+WLBOwPtwlyYgivII=;
	b=mxHJW5dKyFXIl/N8ObEeD03Wj23tyo3OIWDeUkC4xsOsx3fBg6vUB5QJinNIFKTe5F
	pGNYojkW4J4g+Nzef4LUp/JriOPN78Ky5HCod5NZuEcBWYHb37JY1f8PjfKY59k5FXqI
	LDIwbjB7oAWb1t1y1evxfluexnA/n5IF8o4tU=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=rIYC0PSptiSVIE1b0VqjtlWcisPn3iPccEzPBoONSzlVKGzBUVf0yYQI6XbLU//wUm
	xbgEfIOMqMCsRVNQy1A+hBx4Xn9LTeqyMnCMtdo6cLf9VWgw0gUhUF8nS2Y4yaYWYQae
	1ft2NRW7SXVW0QURSpR9H83z8jFxjgr4j0k9o=
MIME-Version: 1.0
Received: by 10.216.25.202 with SMTP id z52mr5693207wez.14.1299750674809; Thu,
	10 Mar 2011 01:51:14 -0800 (PST)
Received: by 10.216.236.166 with HTTP; Thu, 10 Mar 2011 01:51:14 -0800 (PST)
Date: Thu, 10 Mar 2011 15:21:14 +0530
Message-ID: <AANLkTikrLuE0NdP_Hbqy-B55nYEf7QvKBfM-wQSaNNft@mail.gmail.com>
From: kubera samrat <kubera.samrat@gmail.com>
To: poky@yoctoproject.org
Subject: Problem while adding "ffmpeg"
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
X-List-Received-Date: Thu, 10 Mar 2011 09:51:16 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

I have added ffmpeg to my recipe. I have created the following recipe
for ffmpeg and placed in "meta/recipes-multimedia/ffmpeg" folder.

******************************************************************************************************************************************************************************************
# ffmpeg_0.6.1.bb
DESCRIPTION = "Complete and free Internet live audio and video
broadcasting solution for Linux/Unix"
DEPENDS = "alsa-lib bzip2 lame libvorbis faad2 zlib x264 libtheora
libxfixes schroedinger libvpx sdl xvidcore libvdpau libva"

LICENSE = "GPL"

inherit autotools pkgconfig

PR="r0"
#S = "${WORKDIR}/ffmpeg-${PV}"


SRC_URI = "http://ffmpeg.org/releases/ffmpeg-${PV}.tar.bz2"
EXTRA_OECONF += "--enable-shared \
	--enable-pthreads\
	--enable-gpl\
	--enable-libmp3lame\
	--enable-libvorbis\
	--enable-libfaac\
	--enable-libxvid\
	--enable-libx264\
   	--enable-libvpx\
    	--enable-libtheora\
    	--enable-postproc \
    	--enable-shared \
    	--enable-x11grab \
   	--enable-libopencore_amrnb \
    	--enable-libopencore_amrwb \
    	--enable-libschroedinger \
    	--enable-libopenjpeg \
    	--enable-version3 \
    	--enable-nonfree \
    	--enable-runtime-cpudetect \
    	--disable-debug \
    	--disable-asm"

do_configure(){
	oe_conf	--prefix=${D}
}

do_compile(){
        oe_runmake
}

do_install(){
        oe_runmake install DESTDIR=${D}
}

SRC_URI[md5sum] = "4f5d732d25eedfb072251b5314ba2093"
***************************************************************************************************************************************************************************************************************

While building, I am getting the following error:


ERROR: Nothing RPROVIDES 'ffmpeg' (but
/home/kuberasamrat/poky-chrome/meta/recipes-core/images/poky-image-minimal-akshat.bb
RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'ffmpeg' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['ffmpeg']
ERROR: Required build target 'poky-image-minimal-akshat-live' has no
buildable providers.
Missing or unbuildable dependency chain was:
['poky-image-minimal-akshat-live', 'poky-image-minimal-akshat',
'ffmpeg']

Please guide me, if you have any solution or advice, if I am doing
something wrong.

Thanks and regards,
V kubera Samrat

