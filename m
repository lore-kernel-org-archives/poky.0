Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id 49A384C810C3
	for <poky@pokylinux.org>; Thu, 12 May 2011 16:45:13 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1QKdgw-0004iZ-AM
	for poky@pokylinux.org; Thu, 12 May 2011 23:45:06 +0200
Received: from ppp079166130225.dsl.hol.gr ([79.166.130.225])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Thu, 12 May 2011 23:45:06 +0200
Received: from gmane by ppp079166130225.dsl.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Thu, 12 May 2011 23:45:06 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Fri, 13 May 2011 00:42:36 +0300
Organization: Reliable Embedded Systems
Message-ID: <iqhk8c$hpa$1@dough.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: ppp079166130225.dsl.hol.gr
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
Subject: third party toolchain
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
X-List-Received-Date: Thu, 12 May 2011 21:45:13 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

I'm trying to use a third party toolchain instead of the default ones.
There seem to be some recipes to support something like this.

Here is what I tried without success (it still seems to pick up the
default toolchain): http://pastebin.com/RsitZDJp

In addition to this I exported the path to the toolchain.

I know that is not very wise, but currently I'm trying to reuse some of
the recipies and compile the packages for this specific toolchain
(hopefully without too many things breaking)

Please advise.

Regards,

Robert

..."If you want more effective programmers, you will discover that they
should not waste their time debugging - they should not introduce the
bugs to start with." - Dijkstra

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



