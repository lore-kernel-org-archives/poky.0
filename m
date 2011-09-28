Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBDDFE004CF
	for <poky@pokylinux.org>; Wed, 28 Sep 2011 12:31:51 -0700 (PDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1R8zr3-0007FR-A8
	for poky@pokylinux.org; Wed, 28 Sep 2011 21:31:41 +0200
Received: from ppp089210160092.dsl.hol.gr ([89.210.160.92])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Wed, 28 Sep 2011 21:31:41 +0200
Received: from gmane by ppp089210160092.dsl.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Wed, 28 Sep 2011 21:31:41 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Wed, 28 Sep 2011 22:31:26 +0300
Organization: Reliable Embedded Systems
Message-ID: <j5vsmf$tf7$1@dough.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: ppp089210160092.dsl.hol.gr
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.20) Gecko/20110805 Thunderbird/3.1.12
Subject: Beta testing BB xm rev C
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
X-List-Received-Date: Wed, 28 Sep 2011 19:31:53 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

I'm using a core-image-sato-sdk-beagleboard built from commit
e3c5d7a90ae179af0ac128ea4dfc1a5a6602c2e4.

There are a few minor issues:

  gnome-keyring-daemon: Missing argument for ...

  matchbox: Cant find a keycode for...

  ** (matchbox-desktop:416): WARNING **: Error loading icon:...

Please check from line 259 onwards here http://pastebin.com/K2udhke2

Regards,

Robert..."Any fool can write code that a computer can understand. Good
programmers write code that humans can understand." -- Martin Fowler

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



