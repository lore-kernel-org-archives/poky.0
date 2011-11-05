Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E170BE0030A
	for <poky@pokylinux.org>; Sat,  5 Nov 2011 04:27:50 -0700 (PDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1RMePb-0003GF-Nz
	for poky@pokylinux.org; Sat, 05 Nov 2011 12:27:47 +0100
Received: from ppp089210140055.dsl.hol.gr ([89.210.140.55])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Sat, 05 Nov 2011 12:27:47 +0100
Received: from gmane by ppp089210140055.dsl.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Sat, 05 Nov 2011 12:27:47 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Sat, 05 Nov 2011 13:27:34 +0200
Organization: Reliable Embedded Systems
Message-ID: <j936j6$3k7$1@dough.gmane.org>
References: <j9172o$j0s$1@dough.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: ppp089210140055.dsl.hol.gr
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
In-Reply-To: <j9172o$j0s$1@dough.gmane.org>
Subject: Re: workflow - kernel config
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
X-List-Received-Date: Sat, 05 Nov 2011 11:27:51 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

What seems to work is this:

bitbake virtual/kernel -c configure -f
bitbake virtual/kernel -c menuconfig -f
bitbake virtual/kernel -c deploy -f
bitbake virtual/kernel

As long as the new kernel configurations are statically linked into the
kernel there is no need to generate modules and install them on the
rootfs. It's sufficient to update the uImage.

Regards,

Robert
...To the optimist, the glass is half full. To the pessimist, the glass
is half empty. To the engineer, the glass is twice as big as it needs to
be.So, if you let the engineer at it (fix the glass), the optimist,
while pretty happy, becomes happier and the pessimist becomes ecstatic.

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



