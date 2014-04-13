Return-Path: <raj.khem@gmail.com>
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97F95E00B74
	for <poky@lists.pokylinux.org>; Sun, 13 Apr 2014 12:57:03 -0700 (PDT)
Received: by mail-ig0-f169.google.com with SMTP id h18so3815102igc.0
	for <poky@lists.pokylinux.org>; Sun, 13 Apr 2014 12:57:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=xloWzIWj+XEeS6Z2P/4Wen1ObyAwZ0vv+PlE8e17AhE=;
	b=b44aMhlla3eGATAEUAYlvNtxDPSOM+T9ttj+QWBwe9j1Qbx/Qez24t1RzZ4FQmcdfc
	WBg9DMo6b9TYAXM8D1N5No924RiNfoqnWxnlyqVkficoRMfBys8lkwW0ZhSghjSmuO5t
	ANJhF4lqZEAB50F/jmifvPeQkTra+skzTPcLcTpKJg9mBpXjThjrCP/CR/Qn4app3LKb
	TzoAwDLOn0dcnxBFmEREJOAj04aS6MswEnecB1HnNI6JtdHGQs+tqlPdxFeRBCDF3eQX
	EkvS5MEhB+ZVI8mU6VZu7rTidQJXl/fvvdzLm9FtRa0pT4QgOHRckTECrWA0ECkj9BR4
	ldUw==
X-Received: by 10.50.60.72 with SMTP id f8mr11823183igr.20.1397419023064; Sun,
	13 Apr 2014 12:57:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.229.14 with HTTP; Sun, 13 Apr 2014 12:56:32 -0700 (PDT)
In-Reply-To: <534A9840.60606@mlbassoc.com>
References: <534A9840.60606@mlbassoc.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 13 Apr 2014 12:56:32 -0700
Message-ID: <CAMKF1sq7eqUwmjkAZdc+M8Sq1E3iUEzUpXePgNdEkQtys6jZ9w@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Strange build error
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
X-List-Received-Date: Sun, 13 Apr 2014 19:57:06 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Apr 13, 2014 at 6:59 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> I'm getting a strange build error when developing with some new packages:
> | arm-amltd-linux-gnueabi-gcc  -march=armv6 -mthumb-interwork -mfloat-abi=softfp  -mfpu=vfp --sysroot=/local/rpi_2014-04-10/tmp/sysroots/raspberrypi  -O2 -pipe -g
> -feliminate-unused-debug-types -I3rdparty/sparsehash -I3rdparty/utfcpp  -O2 -pipe -g -feliminate-unused-debug-types -fvisibility-inlines-hidden   -Wl,-O1 -Wl,--hash-style=gnu
> -Wl,--as-needed Arpa2Fst.o util.o phonetisaurus-arpa2fst.cpp -o ../phonetisaurus-arpa2fst -lfst -ldl -lm -lrt
> | /local/rpi_2014-04-10/tmp/sysroots/x86_64-linux/usr/libexec/armv6-vfp-amltd-linux-gnueabi/gcc/arm-amltd-linux-gnueabi/4.8.2/ld: util.o: undefined reference to symbol
> '_ZSt20__throw_out_of_rangePKc@@GLIBCXX_3.4'
> | /local/rpi_2014-04-10/tmp/sysroots/raspberrypi/usr/lib/libstdc++.so.6: error adding symbols: DSO missing from command line
>
> I tried building the same package(s) on my desktop but I don't
> get this error.  It also doesn't seem to be target specific - I
> tried building (using Yocto) for ARM and PowerPC - same thing.
>
> Since the error seems to be coming from the stdc++ library,
> I'm at a loss of where to look for it or how to fix this.
>
> Any ideas?

 it seems your program is using exceptions for which you would require
to link with
C++ runtime.  one way is to use g++ to do the linking other option
would be to add -lstdc++ to linker codlin
but that may not be sufficient.

>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

