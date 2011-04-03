Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id BB5544C8026D
	for <poky@yoctoproject.org>; Sun,  3 Apr 2011 14:56:34 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p33JuYLP006883
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Sun, 3 Apr 2011 12:56:34 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.234) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Sun, 3 Apr 2011 12:56:33 -0700
Message-ID: <4D98D0EB.1070802@windriver.com>
Date: Sun, 3 Apr 2011 14:56:27 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.15) Gecko/20110303 Thunderbird/3.1.9
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <4D988A05.2070609@mlbassoc.com>
In-Reply-To: <4D988A05.2070609@mlbassoc.com>
X-Originating-IP: [172.25.36.234]
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
X-List-Received-Date: Sun, 03 Apr 2011 19:56:35 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 4/3/11 9:53 AM, Gary Thomas wrote:
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
> 
> Thanks
> 

Do the libraries in question have corresponding -dbg package that are empty?  Or
is there stuff in there, it's just incomplete?

What I'm trying to understand is were these items stripped during the recipe
build, or when they're supposed to be by the package.bbclass into the regular
and dbg packages.

--Mark

