Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id 13E224C800B3
	for <poky@pokylinux.org>; Tue, 14 Jun 2011 13:20:49 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1QWYEJ-0008S0-CL
	for poky@pokylinux.org; Tue, 14 Jun 2011 20:20:47 +0200
Received: from ppp089210011216.dsl.hol.gr ([89.210.11.216])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Tue, 14 Jun 2011 20:20:47 +0200
Received: from gmane by ppp089210011216.dsl.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Tue, 14 Jun 2011 20:20:47 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Tue, 14 Jun 2011 21:20:28 +0300
Organization: Reliable Embedded Systems
Message-ID: <it88ph$j2v$1@dough.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: ppp089210011216.dsl.hol.gr
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
Subject: bernard-5.0.1, poky-image-lsb, beagle, build error
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
X-List-Received-Date: Tue, 14 Jun 2011 18:20:49 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

I hit a build error with the tag: bernard-5.0.1
while trying to build poky-image-lsb, which failed, because psmisc could
not be downloaded.

I fixed it like this:

diff --git a/meta/recipes-extended/psmisc/psmisc.inc
b/meta/recipes-extended/psmisc/psmisc.inc
index 8b391f4..460affc 100644
--- a/meta/recipes-extended/psmisc/psmisc.inc
+++ b/meta/recipes-extended/psmisc/psmisc.inc
@@ -10,8 +10,9 @@ SECTION = "base"
 PRIORITY = "required"
 DEPENDS = "ncurses virtual/libintl"

-SRC_URI = "${SOURCEFORGE_MIRROR}/psmisc/psmisc-${PV}.tar.gz \
+SRC_URI =
"${SOURCEFORGE_MIRROR}/project/psmisc/psmisc/${PV}/psmisc-${PV}.tar.gz \
           file://libintl-link.patch;patch=1"
+
 S = "${WORKDIR}/psmisc-${PV}"

This means that the tag bernard-5.0.1 does not build anymore for the
beagle and most likely other platforms won't build as well out of the box.

That's just a small issue, but my problem is more generic.

Assuming someone makes a distro based on a tag e.g. bernard-5.0.1 and
wants to rebuild this distro in a year from now.

Packages might have disappeared, or in best case just the URLs changed.
In any case the distro will not build anymore out of the box.

I would ideally like to be able to reproduce exactly what I have in a
couple of years from now, which seems impossible due to dependencies
external to poky which are not controlled by this community.

I could come up with a solution, where local copies of packages are kept
e.g. in a local download directory, but this would mean, that I'll need
to build and test all possible platforms just after the releases (where
everything still works) and not when I'll actually need them.

What's the best way to deal with this?

Regards,

Robert


..."C++ has its place in the history of programming languages. Just as
Caligula has his place in the history of the Roman Empire." - Robert Firth

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



