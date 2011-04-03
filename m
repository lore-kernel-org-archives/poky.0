Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 605B04C80050
	for <poky@lists.pokylinux.org>; Sun,  3 Apr 2011 09:54:00 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id A6DE316604DA; Sun,  3 Apr 2011 08:53:58 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 3F78916604D6;
	Sun,  3 Apr 2011 08:53:57 -0600 (MDT)
Message-ID: <4D988A05.2070609@mlbassoc.com>
Date: Sun, 03 Apr 2011 08:53:57 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: Missing debug info
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
X-List-Received-Date: Sun, 03 Apr 2011 14:54:00 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm trying to debug some code which uses the openssl library, built from
the Poky mainline.  For some reason (not obvious to me), there is no debug
info for this library, which makes GDB pretty useless :-(

(gdb) info sharedlibrary
 From        To          Syms Read   Shared Object Library
0x40077790  0x4008f60c  Yes         /tmp/cobra_root/lib/ld-linux.so.3
0x401abf80  0x401d57d8  Yes (*)     /tmp/cobra_root/usr/lib/libssl.so.0.9.8
0x40225548  0x402cfbfc  Yes (*)     /tmp/cobra_root/usr/lib/libcrypto.so.0.9.8
0x400f28f8  0x4010cf90  Yes         /tmp/cobra_root/usr/lib/libpcap.so.1
0x40326340  0x4040e8d8  Yes         /tmp/cobra_root/lib/libc.so.6
0x401278fc  0x40128614  Yes         /tmp/cobra_root/lib/libdl.so.2
(*): Shared library is missing debugging information.

Any idea why these libraries don't have debg info?  how to get it?
Rebuilding that library with printf() is pretty tedious...

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

