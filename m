Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 569484C80FFE
	for <poky@yoctoproject.org>; Thu, 30 Dec 2010 04:13:27 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBUAEvTl002387; Thu, 30 Dec 2010 10:14:57 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id sR31EWoTS9AW; Thu, 30 Dec 2010 10:14:57 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBUAErj0002383
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 30 Dec 2010 10:14:55 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <0AA1E123-3984-442B-986C-6B4C8B0C3021@dominion.thruhere.net>
References: <1293050270.3578.172.camel@rex>
	<1293111933-5071-1-git-send-email-koen@openembedded.org>
	<1293113340.1588.860.camel@rex>
	<0AA1E123-3984-442B-986C-6B4C8B0C3021@dominion.thruhere.net>
Date: Thu, 30 Dec 2010 10:13:15 +0000
Message-ID: <1293703995.17519.9987.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [RFC][PATCH] RDEPENDS, RRECOMMENDS -> RDPEPENDS_${PN}, RRECOMMENDS_${PN}
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
X-List-Received-Date: Thu, 30 Dec 2010 10:13:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-12-23 at 15:34 +0100, Koen Kooi wrote:
> Op 23 dec 2010, om 15:09 heeft Richard Purdie het volgende geschreven:
> 
> > On Thu, 2010-12-23 at 14:45 +0100, Koen Kooi wrote:
> >> diff --git a/meta/recipes-connectivity/avahi/avahi.inc b/meta/recipes-connectivity/avahi/avahi.inc
> >> index b266ea4..5c3b4dd 100644
> >> --- a/meta/recipes-connectivity/avahi/avahi.inc
> >> +++ b/meta/recipes-connectivity/avahi/avahi.inc
> >> @@ -16,7 +16,7 @@ PRIORITY = "optional"
> >> LICENSE = "GPLv2+ & LGPLv2.1+"
> >> 
> >> DEPENDS = "expat libcap libdaemon dbus glib-2.0 gtk+ libglade"
> >> -RRECOMMENDS = "libnss-mdns"
> >> +RRECOMMENDS_${PN} = "libnss-mdns"
> >> RRECOMMENDS_avahi-daemon = "libnss-mdns"
> > 
> > Hmm, which bit of avahi needs this? This looks a little odd...
> 
> It's an nss plugin, I install it so ssh can resolve .local addresses, not sure if avahi actually needs it. Any suggestions?

I've left the patch as is for now, I think this is perhaps correct as it
ensures the name resolution is available for both the client lib and the
daemon.

> > diff --git a/meta/recipes-connectivity/gsm/gsmd.inc b/meta/recipes-connectivity/gsm/gsmd.inc
> >> index 9818188..385c40e 100644
> >> --- a/meta/recipes-connectivity/gsm/gsmd.inc
> >> +++ b/meta/recipes-connectivity/gsm/gsmd.inc
> >> @@ -19,7 +19,7 @@ SRC_URI = "svn://svn.openmoko.org/trunk/src/target;module=gsm;proto=http \
> >> S = "${WORKDIR}/gsm"
> >> 
> >> inherit autotools pkgconfig update-rc.d
> >> -# handle update-rc.d RDEPENDS manually, we don't need it on
> >> +# handle update-rc.d RDEPENDS_${PN} manually, we don't need it on
> >> # anything but gsmd
> >> RDEPENDS_append = ""
> > 
> > This looks like some kind of bug waiting to be fixed...
> 
> Not sure what you want me to do here :)

I pushed a separate fix for gsmd andupdate-rc.d.

> >> diff --git a/meta/recipes-devtools/unfs-server/unfs-server_2.2beta47.bb b/meta/recipes-devtools/unfs-server/unfs-server_2.2beta47.bb
> >> index 89313d6..50ba339 100644
> >> --- a/meta/recipes-devtools/unfs-server/unfs-server_2.2beta47.bb
> >> +++ b/meta/recipes-devtools/unfs-server/unfs-server_2.2beta47.bb
> >> @@ -3,10 +3,10 @@ SECTION = "console/network"
> >> LICENSE = "GPLv2+"
> >> LIC_FILES_CHKSUM = "file://COPYING;md5=8ca43cbc842c2336e835926c2166c28b"
> >> 
> >> -RDEPENDS = "pseudo"
> >> +RDEPENDS_${PN} = "pseudo"
> >> RDEPENDS_virtclass-native = "pseudo-native"
> >> RDEPENDS_virtclass-nativesdk = "pseudo-nativesdk"
> > 
> > Need to add ${PN} to the virtclass versions.
> 
> fixed, and that recipe seems to violate the OE versioning policy, which I didn't fix.

Hmm, it does, yes. I've fixed this.

> >> diff --git a/meta/recipes-gnome/gtk+/gtk+.inc b/meta/recipes-gnome/gtk+/gtk+.inc
> >> index c34283e..ac7795e 100644
> >> --- a/meta/recipes-gnome/gtk+/gtk+.inc
> >> +++ b/meta/recipes-gnome/gtk+/gtk+.inc
> >> @@ -35,7 +35,7 @@ FILES_${PN}-dbg += " \
> >> 	${libdir}/gtk-2.0/${LIBV}/engines/.debug/* \
> >> 	${libdir}/gtk-2.0/${LIBV}/printbackends/.debug/*"
> >> 
> >> -BASE_RRECOMMENDS = "ttf-dejavu-sans"
> >> +BASE_RRECOMMENDS_${PN} = "ttf-dejavu-sans"
> >> BASE_RRECOMMENDS_angstrom = "ttf-dejavu-sans gdk-pixbuf-loader-png gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-gif gdk-pixbuf-loader-xpm"
> >> BASE_RRECOMMENDS_poky = "gdk-pixbuf-loader-png gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-gif gdk-pixbuf-loader-xpm shared-mime-info"
> >> BASE_RRECOMMENDS_moblin = "gdk-pixbuf-loader-png gdk-pixbuf-loader-jpeg gdk-pixbuf-loader-gif gdk-pixbuf-loader-xpm shared-mime-info"
> > 
> > Need to add ${PN} into these. We should really consider changing the
> > default here...
> 
> fixed the PN part, not the default setting

It raises the horrible question about what the default should be I guess
(again) :/.

Cheers,

Richard


