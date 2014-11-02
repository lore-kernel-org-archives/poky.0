Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CA14E00899; Sun,  2 Nov 2014 14:03:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBBE3E00873
	for <poky@yoctoproject.org>; Sun,  2 Nov 2014 14:03:42 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	sA2M32Il018578; Sun, 2 Nov 2014 22:03:02 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id R4SxueL9zVvN; Sun,  2 Nov 2014 22:03:02 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	sA2M30AE018575
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Sun, 2 Nov 2014 22:03:01 GMT
Message-ID: <1414965815.5111.1.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Holger Hans Peter Freyther <holger@freyther.de>
Date: Sun, 02 Nov 2014 22:03:35 +0000
In-Reply-To: <20141102200530.GE6886@xiaoyu.lan>
References: <20141102200530.GE6886@xiaoyu.lan>
X-Mailer: Evolution 3.10.4-0ubuntu2 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: gcc 4.9.1 and stdint.h
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
X-List-Received-Date: Sun, 02 Nov 2014 22:03:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2014-11-02 at 21:05 +0100, Holger Hans Peter Freyther wrote:
> Hi,
> 
> I have a small piece of initial bootloader and it fails to compile
> using master (f19b4e995ea47f9243f152b39337330307453c9f). The code
> does include "stdint.h" which ends up with a failure like this:
> 
> tmp/sysroots/i686-linux/usr/lib/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.9.1/include/stdint.h:9:26: fatal error: stdint.h: No such file or directory
> |  # include_next <stdint.h>
> |                           ^
> | compilation terminated.
> 
> 
> So somehow gcc doesn't know how to find the glibc version of
> stdint.h. With edison and dora the #include_next will move to
> the sysroot.
> 
> Is this a regression of gcc-4.9? is this a wanted change?

What was the compiler commandline you used and did you specify the
sysroot? Was this was master or dizzy?

Cheers,

Richard


