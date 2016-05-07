Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42930E00D1F; Sat,  7 May 2016 01:41:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BECFAE00D19
	for <poky@yoctoproject.org>; Sat,  7 May 2016 01:41:00 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u478eu2V003893; Sat, 7 May 2016 09:40:56 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id xVPYCW1jCBYV; Sat,  7 May 2016 09:40:56 +0100 (BST)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u478esfW003890
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Sat, 7 May 2016 09:40:56 +0100
Message-ID: <1462610454.21674.149.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Ruslan Babayev <ruslan@babayev.com>
Date: Sat, 07 May 2016 09:40:54 +0100
In-Reply-To: <8760uq4yok.fsf@babayev.com>
References: <8760uq4yok.fsf@babayev.com>
X-Mailer: Evolution 3.16.5-1ubuntu3.1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: gcc cross-compiler hangs with musl libc
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 07 May 2016 08:41:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2016-05-06 at 15:19 -0700, Ruslan Babayev wrote:
> Hi Richard,
> 
> I recently noticed GCC in meta-toolchain misteriously hangs when
> trying to build
> anything. This is my config (with meta-intel layers added):
> 
> MACHINE = "crystalforest"
> TCLIBC = "musl"
> 
> I narrowed it down to gcc not liking '-m64' flag followed by '
> -mmusl'.
> 
> $ x86_64-poky-linux-musl-gcc --sysroot=/opt/poky/2.1/sysroots/corei7
> -64-poky-linux-musl hello.c -o hello -m64 #works
> $ x86_64-poky-linux-musl-gcc --sysroot=/opt/poky/2.1/sysroots/corei7
> -64-poky-linux-musl hello.c -o hello -mmusl #works                   
>                                 
> $ x86_64-poky-linux-musl-gcc --sysroot=/opt/poky/2.1/sysroots/corei7
> -64-poky-linux-musl hello.c -o hello -mmusl -m64 #works
> $ x86_64-poky-linux-musl-gcc --sysroot=/opt/poky/2.1/sysroots/corei7
> -64-poky-linux-musl hello.c -o hello -m64 -mmusl #hangs
> ^C
> 
> So it seems passing -mmusl is not required. Just to try this out I
> commented out TARGET_CC_ARCH_append_libc-musl line in
> meta/classes/toolchain-scripts.bbclass and rebuilt my meta-toolchain
> to
> make GCC happy.
> 
> I have seen this with musl and x86_64 with -m64 but I am guessing the
> issue might also affect other architechtures and tunes as well x86(
> -m64,
> -m32, -mx32), powerpc (-m64, -m32) etc.
> 
> While this looks like a bug in GCC, is there a reason we need to pass
> -mmusl flag?

I'd imagine its telling gcc to link against the musl libc rather than
the glibc one. Certainly, the order of the options shouldn't hang gcc,
in fact gcc shouldn't ever hang due to the options passed so this
sounds like a gcc bug.

I've cc'd Khem who knows more about the musl patches.

Cheers,

Richard



