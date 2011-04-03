Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 604A34C80287
	for <poky@lists.pokylinux.org>; Sun,  3 Apr 2011 16:46:11 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p33LkAqH009250;
	Sun, 3 Apr 2011 22:46:10 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 09128-02; Sun,  3 Apr 2011 22:46:06 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p33Lk3tB009244
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sun, 3 Apr 2011 22:46:03 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4D988A05.2070609@mlbassoc.com>
References: <4D988A05.2070609@mlbassoc.com>
Date: Sun, 03 Apr 2011 22:46:02 +0100
Message-ID: <1301867162.24596.304.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Missing debug info
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
X-List-Received-Date: Sun, 03 Apr 2011 21:46:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2011-04-03 at 08:53 -0600, Gary Thomas wrote:
> I'm trying to debug some code which uses the openssl library, built from
> the Poky mainline.  For some reason (not obvious to me), there is no debug
> info for this library, which makes GDB pretty useless :-(
> 
> (gdb) info sharedlibrary
>  From        To          Syms Read   Shared Object Library
> 0x40077790  0x4008f60c  Yes         /tmp/cobra_root/lib/ld-linux.so.3
> 0x401abf80  0x401d57d8  Yes (*)     /tmp/cobra_root/usr/lib/libssl.so.0.9.8
> 0x40225548  0x402cfbfc  Yes (*)     /tmp/cobra_root/usr/lib/libcrypto.so.0.9.8
> 0x400f28f8  0x4010cf90  Yes         /tmp/cobra_root/usr/lib/libpcap.so.1
> 0x40326340  0x4040e8d8  Yes         /tmp/cobra_root/lib/libc.so.6
> 0x401278fc  0x40128614  Yes         /tmp/cobra_root/lib/libdl.so.2
> (*): Shared library is missing debugging information.
> 
> Any idea why these libraries don't have debg info?  how to get it?
> Rebuilding that library with printf() is pretty tedious...

Looking at some builds here, openssl seems to build debug symbols in the
usual way. Did you have the appropriate -dbg package installed? Are
there debug symbols in /tmp/cobra_root/usr/lib/.debug/libssl.so.0.9.8 ?
Do the files list the same debug checksum?

Cheers,

Richard


