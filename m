Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id 78AF24C800BB
	for <poky@pokylinux.org>; Thu, 12 May 2011 16:38:33 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1QKdaW-0001Qh-T5
	for poky@pokylinux.org; Thu, 12 May 2011 23:38:28 +0200
Received: from ppp079166130225.dsl.hol.gr ([79.166.130.225])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Thu, 12 May 2011 23:38:28 +0200
Received: from gmane by ppp079166130225.dsl.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Thu, 12 May 2011 23:38:28 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Fri, 13 May 2011 00:38:15 +0300
Organization: Reliable Embedded Systems
Message-ID: <iqhk07$fpf$1@dough.gmane.org>
References: <iqessi$mok$1@dough.gmane.org> <4DCB16BC.4040205@linux.intel.com>
	<1305192197.30391.490.camel@rex>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: ppp079166130225.dsl.hol.gr
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
In-Reply-To: <1305192197.30391.490.camel@rex>
Subject: Re: No rootfs for beagleboard after bernard 5.0
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: gmane@reliableembeddedsystems.com
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 12 May 2011 21:38:35 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit

Hi Darren/Richard,

Thanks for the hints.
... but the problem is even more interesting.
For some strange reason I can't get a valid .tar.bz from the URL which
is in the recipe.

What helped was to grab it from somewhere else:

diff --git a/meta/recipes-devtools/distcc/distcc_2.18.3.bb
b/meta/recipes-devtools/distcc/distcc_2.18.3.bb
index b6b7b78..f5ae761 100644
--- a/meta/recipes-devtools/distcc/distcc_2.18.3.bb
+++ b/meta/recipes-devtools/distcc/distcc_2.18.3.bb
@@ -11,7 +11,7 @@ RRECOMMENDS_${PN} = "avahi-daemon"

 # Upstream change this patch periodically so store locally
 # http://0pointer.de/public/distcc-avahi.patch
-SRC_URI = "http://distcc.samba.org/ftp/distcc/distcc-${PV}.tar.bz2 \
+SRC_URI =
"ftp://ftp.slackware.at/slackware-10.2/source/d/distcc/distcc-${PV}.tar.bz2\
            file://distcc-avahi.patch;patch=1 \
           file://default \
           file://distccmon-gnome.desktop \

Regards,

Robert

..."Gott gebe mir die Gelassenheit, Dinge hinzunehmen, die ich nicht
ändern kann, den Mut, Dinge zu ändern, die ich ändern kann und die
Weisheit, das eine von dem anderen zu unterscheiden." (Friedrich
Christoph Oetinger 1702-1782)

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



