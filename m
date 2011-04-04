Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 440D74C80334
	for <poky@lists.pokylinux.org>; Sun,  3 Apr 2011 20:25:31 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 766A416604DF; Sun,  3 Apr 2011 19:25:26 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id B5D4616604DB;
	Sun,  3 Apr 2011 19:25:25 -0600 (MDT)
Message-ID: <4D991E05.5080708@mlbassoc.com>
Date: Sun, 03 Apr 2011 19:25:25 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4D988A05.2070609@mlbassoc.com> <1301867162.24596.304.camel@rex>
In-Reply-To: <1301867162.24596.304.camel@rex>
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
X-List-Received-Date: Mon, 04 Apr 2011 01:25:31 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/03/2011 03:46 PM, Richard Purdie wrote:
> On Sun, 2011-04-03 at 08:53 -0600, Gary Thomas wrote:
>> I'm trying to debug some code which uses the openssl library, built from
>> the Poky mainline.  For some reason (not obvious to me), there is no debug
>> info for this library, which makes GDB pretty useless :-(
>>
>> (gdb) info sharedlibrary
>>   From        To          Syms Read   Shared Object Library
>> 0x40077790  0x4008f60c  Yes         /tmp/cobra_root/lib/ld-linux.so.3
>> 0x401abf80  0x401d57d8  Yes (*)     /tmp/cobra_root/usr/lib/libssl.so.0.9.8
>> 0x40225548  0x402cfbfc  Yes (*)     /tmp/cobra_root/usr/lib/libcrypto.so.0.9.8
>> 0x400f28f8  0x4010cf90  Yes         /tmp/cobra_root/usr/lib/libpcap.so.1
>> 0x40326340  0x4040e8d8  Yes         /tmp/cobra_root/lib/libc.so.6
>> 0x401278fc  0x40128614  Yes         /tmp/cobra_root/lib/libdl.so.2
>> (*): Shared library is missing debugging information.
>>
>> Any idea why these libraries don't have debg info?  how to get it?
>> Rebuilding that library with printf() is pretty tedious...
>
> Looking at some builds here, openssl seems to build debug symbols in the
> usual way. Did you have the appropriate -dbg package installed? Are
> there debug symbols in /tmp/cobra_root/usr/lib/.debug/libssl.so.0.9.8 ?

[gthomas@titan p60_poky]$ ls /tmp/cobra_root/usr/lib/.debug -l
total 5496
lrwxrwxrwx 1 gthomas gthomas      18 Apr  3 14:10 libcrypto.so -> libcrypto.so.0.9.8
-rwxrwxr-x 1 gthomas gthomas 4062169 Mar 30 07:37 libcrypto.so.0.9.8
lrwxrwxrwx 1 gthomas gthomas      16 Apr  3 08:35 libpcap.so.1 -> libpcap.so.1.1.1
-rwxrwxr-x 1 gthomas gthomas  340999 Mar 30 11:12 libpcap.so.1.1.1
lrwxrwxrwx 1 gthomas gthomas      15 Apr  3 14:10 libssl.so -> libssl.so.0.9.8
-rwxrwxr-x 1 gthomas gthomas 1217365 Mar 30 07:37 libssl.so.0.9.8

> Do the files list the same debug checksum?

Not sure what this means, sorry.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

