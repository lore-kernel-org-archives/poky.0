Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67FBFE00B84
	for <poky@yoctoproject.org>; Mon, 14 Apr 2014 03:54:13 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 462F9F811D7; Mon, 14 Apr 2014 04:54:12 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id DD09FF81188;
	Mon, 14 Apr 2014 04:54:10 -0600 (MDT)
Message-ID: <534BBE57.6050606@mlbassoc.com>
Date: Mon, 14 Apr 2014 04:54:15 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <534A9840.60606@mlbassoc.com>
	<CAMKF1sq7eqUwmjkAZdc+M8Sq1E3iUEzUpXePgNdEkQtys6jZ9w@mail.gmail.com>
In-Reply-To: <CAMKF1sq7eqUwmjkAZdc+M8Sq1E3iUEzUpXePgNdEkQtys6jZ9w@mail.gmail.com>
X-Enigmail-Version: 1.5.2
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
X-List-Received-Date: Mon, 14 Apr 2014 10:54:16 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 2014-04-13 13:56, Khem Raj wrote:
> On Sun, Apr 13, 2014 at 6:59 AM, Gary Thomas <gary@mlbassoc.com> wrote:
>> I'm getting a strange build error when developing with some new packages:
>> | arm-amltd-linux-gnueabi-gcc  -march=armv6 -mthumb-interwork -mfloat-abi=softfp  -mfpu=vfp --sysroot=/local/rpi_2014-04-10/tmp/sysroots/raspberrypi  -O2 -pipe -g
>> -feliminate-unused-debug-types -I3rdparty/sparsehash -I3rdparty/utfcpp  -O2 -pipe -g -feliminate-unused-debug-types -fvisibility-inlines-hidden   -Wl,-O1 -Wl,--hash-style=gnu
>> -Wl,--as-needed Arpa2Fst.o util.o phonetisaurus-arpa2fst.cpp -o ../phonetisaurus-arpa2fst -lfst -ldl -lm -lrt
>> | /local/rpi_2014-04-10/tmp/sysroots/x86_64-linux/usr/libexec/armv6-vfp-amltd-linux-gnueabi/gcc/arm-amltd-linux-gnueabi/4.8.2/ld: util.o: undefined reference to symbol
>> '_ZSt20__throw_out_of_rangePKc@@GLIBCXX_3.4'
>> | /local/rpi_2014-04-10/tmp/sysroots/raspberrypi/usr/lib/libstdc++.so.6: error adding symbols: DSO missing from command line
>>
>> I tried building the same package(s) on my desktop but I don't
>> get this error.  It also doesn't seem to be target specific - I
>> tried building (using Yocto) for ARM and PowerPC - same thing.
>>
>> Since the error seems to be coming from the stdc++ library,
>> I'm at a loss of where to look for it or how to fix this.
>>
>> Any ideas?
> 
>  it seems your program is using exceptions for which you would require
> to link with
> C++ runtime.  one way is to use g++ to do the linking other option
> would be to add -lstdc++ to linker codlin
> but that may not be sufficient.

That was it - their makefile was using $(CC) when it should have
been using $(CXX)

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

