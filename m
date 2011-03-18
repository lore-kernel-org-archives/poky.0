Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id A1C904C800B8
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 06:39:35 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2IBdUJT004967;
	Fri, 18 Mar 2011 11:39:30 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 04615-06; Fri, 18 Mar 2011 11:39:26 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2IBdKsL004961
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 18 Mar 2011 11:39:23 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: chinmaya hoshing <cahoshing@gmail.com>
In-Reply-To: <AANLkTi=OwKosG74DEQzrT_QBQ16Mc0FWB88xa95YoLnm@mail.gmail.com>
References: <AANLkTi=OwKosG74DEQzrT_QBQ16Mc0FWB88xa95YoLnm@mail.gmail.com>
Date: Fri, 18 Mar 2011 11:39:04 +0000
Message-ID: <1300448344.30423.2193.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: Missing libssl.so and libXext.co file while pulling xserver-xf86-dri-lite into poky
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
X-List-Received-Date: Fri, 18 Mar 2011 11:39:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-03-18 at 15:22 +0530, chinmaya hoshing wrote:
> Hi,
> 
> 
> this is how openssl and  libxext are included in RDEPENDS in
> xserver-xf86-dri-lite.bb file  something as below
> 
> ------>>
> require xserver-xf86-common.inc
> 
> 
> PROTO_DEPS = "randrproto renderproto fixesproto damageproto xextproto
> xproto xf86dgaproto xf86miscproto xf86rushproto xf86vidmodeproto
> xf86bigfontproto compositeproto recordproto resourceproto videoproto
> scrnsaverproto evieext trapproto xineramaproto fontsproto kbproto
> inputproto bigreqsproto xcmiscproto glproto"
> 
> 
> LIB_DEPS = "pixman virtual/libgl libxfont xtrans libxau libxext
> libxdmcp libdrm libxkbfile libpciaccess openssl"
> 
> 
> DEPENDS = "${PROTO_DEPS} ${LIB_DEPS}"
> 
> 
> RDEPENDS_${PN} += "xserver-xf86-config libxext openssl"
> 
> 
> I want to compile these libraries openssl and libxext at run
> time(RDEPENDS)  but after building poky and getting the rootfs image
> the libssl.so and libxext.so file are missing in usr/lib
> 
> 
> can i get to know it why???

Did you rebuild the xserver to ensure the dependencies were updated?
Does the package show these dependencies?
Do you include the xserver in the rootfs?

Cheers,

Richard



