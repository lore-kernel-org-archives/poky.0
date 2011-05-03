Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9C14D4C800A3
	for <poky@yoctoproject.org>; Tue,  3 May 2011 05:37:04 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p43Ab3iY010643;
	Tue, 3 May 2011 11:37:03 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 10021-01; Tue,  3 May 2011 11:36:59 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p43Aarta010621
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 3 May 2011 11:36:54 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Colin Walters <walters@verbum.org>
In-Reply-To: <BANLkTimaSk6vz1AeoRoT63T24XX=w1TuaA@mail.gmail.com>
References: <BANLkTimaSk6vz1AeoRoT63T24XX=w1TuaA@mail.gmail.com>
Date: Tue, 03 May 2011 11:36:51 +0100
Message-ID: <1304419011.21461.98.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky <poky@yoctoproject.org>
Subject: Re: post-image-creation postinsts
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
X-List-Received-Date: Tue, 03 May 2011 10:37:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-05-02 at 11:12 -0400, Colin Walters wrote:
> Currently from poky-bernard-5.0, in gdk-pixbuf_2.22.1.bb, we have:
> 
> postinst_pixbufloader () {
> if [ "x$D" != "x" ]; then
>     exit 1
> fi
> 
> GDK_PIXBUF_MODULEDIR=${libdir}/gdk-pixbuf-2.0/${LIBV}/loaders
> gdk-pixbuf-query-loaders --update-cache
> 
> test -x ${bindir}/gtk-update-icon-cache && gtk-update-icon-cache  -q
> ${datadir}/icons/hicolor
> }
> 
> This results in a first-boot icon cache query in my image, which is
> pretty lame since we could equally well do this after the image is
> generated, and not on every computer that boots the image.
> 
> It seems to me we could add some mechanism for mounting the image
> filesystem and running a script in there (guestfs?), or maybe an
> automated QEMU boot, run the postinsts, and sync/shutdown?
> 
> Thoughts?

The lines at the top:

if [ "x$D" != "x" ]; then
    exit 1
fi

force the script to run on the target device. If there is a way to run
this at image generation time (cross safe), tell us what it is and we
can make it happen at image generation time!

(postinstalls are run at image generation time with $D set to the
directory containing the image).

Cheers,

Richard


