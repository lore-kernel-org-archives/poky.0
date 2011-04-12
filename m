Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9794B4C80578
	for <poky@pokylinux.org>; Tue, 12 Apr 2011 16:43:03 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1Q9lMS-0004Wv-JL
	for poky@pokylinux.org; Tue, 12 Apr 2011 23:43:00 +0200
Received: from ppp079166127113.dsl.hol.gr ([79.166.127.113])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Tue, 12 Apr 2011 23:43:00 +0200
Received: from gmane by ppp079166127113.dsl.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Tue, 12 Apr 2011 23:43:00 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Wed, 13 Apr 2011 00:42:41 +0300
Organization: Reliable Embedded Systems
Message-ID: <io2h0h$drr$1@dough.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: ppp079166127113.dsl.hol.gr
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
Subject: web_svn with yocto 1.0 broken
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
X-List-Received-Date: Tue, 12 Apr 2011 21:43:04 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

With the release tag bernard-5.0 I'm trying to bitbake web and get:

OE Build Configuration:
BB_VERSION        = "1.11.0"
METADATA_BRANCH   = "bernard-5.0_LOCAL"
METADATA_REVISION = "8b6416db1e04af83ecdf57522240ac859d5d8031"
TARGET_ARCH       = "i586"
TARGET_OS         = "linux"
MACHINE           = "qemux86"
DISTRO            = "poky"
DISTRO_VERSION    = "1.0"
TARGET_FPU        = ""

...

| web_gtkhtml2.c:525:3: error: too many arguments to function
'css_parser_parse_stylesheet'

...

Is there a fix for this?

Regards,

Robert..."The pure and simple truth is rarely pure and never simple." -
Oscar Wilde

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



