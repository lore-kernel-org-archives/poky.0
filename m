Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41952E00655
	for <poky@yoctoproject.org>; Fri, 30 Nov 2012 09:11:31 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id D368BF81218; Fri, 30 Nov 2012 10:11:30 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 6B34BF81217;
	Fri, 30 Nov 2012 10:11:28 -0700 (MST)
Message-ID: <50B8E8ED.5000802@mlbassoc.com>
Date: Fri, 30 Nov 2012 10:12:13 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121028 Thunderbird/16.0.2
MIME-Version: 1.0
To: Martin Jansa <martin.jansa@gmail.com>
References: <50B8CC44.9070903@mlbassoc.com>
	<20121130164256.GH3436@jama.jama.net>
In-Reply-To: <20121130164256.GH3436@jama.jama.net>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Problems building from master
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
X-List-Received-Date: Fri, 30 Nov 2012 17:11:31 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-11-30 09:42, Martin Jansa wrote:
> On Fri, Nov 30, 2012 at 08:09:56AM -0700, Gary Thomas wrote:
>> trying to build 'core-image-sato' with this configuration:
>>
>> Build Configuration:
>> BB_VERSION        = "1.17.0"
>> BUILD_SYS         = "i686-linux"
>> NATIVELSBSTRING   = "Unknown"
>> TARGET_SYS        = "arm-poky-linux-gnueabi"
>> MACHINE           = "qemuarm"
>> DISTRO            = "poky"
>> DISTRO_VERSION    = "1.3+snapshot-20121130"
>> TUNE_FEATURES     = "armv5 dsp thumb"
>> TARGET_FPU        = "soft"
>> meta
>> meta-yocto
>> meta-yocto-bsp    = "master:247b6a3754c2c50318e2a73d79981ba0e9cb560b"
>> meta-oe           = "master:8e489120f9c4ae91e121ae9d33fecc1aacdf3257"
>>
>> Fails with:
>> /local/qemuarm_test/tmp/sysroots/i686-linux/usr/libexec/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: cannot find -lsndfile
>> collect2: error: ld returned 1 exit status
>> make[1]: *** [sbc/sbctester] Error 1
>> make[1]: *** Waiting for unfinished jobs....
>> arm-poky-linux-gnueabi-libtool: link: arm-poky-linux-gnueabi-gcc -march=armv5te -marm -mthumb-interwork --sysroot=/local/qemuarm_test/tmp/sysroots/qemuarm -D_FORTIFY_SOURCE=2
>> -I/local/qemuarm_test/tmp/sysroots/qemuarm/usr/include/dbus-1.0 -I/local/qemuarm_test/tmp/sysroots/qemuarm/usr/lib/dbus-1.0/include
>> -I/local/qemuarm_test/tmp/sysroots/qemuarm/usr/include/glib-2.0 -I/local/qemuarm_test/tmp/sysroots/qemuarm/usr/lib/glib-2.0/include -O2 -pipe -g -feliminate-unused-debug-types
>> -Wl,-O1 -Wl,--hash-style=gnu -o tools/hcisecfilter tools/hcisecfilter.o
>> make: *** [all] Error 2
>> ERROR: oe_runmake failed
>> ERROR: Function failed: do_compile (see /local/qemuarm_test/tmp/work/armv5te-poky-linux-gnueabi/bluez4/4.101-r3/temp/log
>
> missing libsndfile1 in depends?
>
>> I then ran 'bitbake core-image-sato -k' to see what other failures I came
>> up with.  There were none.
>>
>> When I ran 'bitbake core-image-sato' again (after the run with -k that had
>> the single failure), it succeeded!  Must be a parallel build issue.
>> I'm using:
>>     BB_NUMBER_THREADS = "4"
>>     PARALLEL_MAKE = "-j 4"
>>
>> I also had a problem building 'web-webkit':
>>
>> | /local/qemuarm_test/tmp/sysroots/i686-linux/usr/libexec/armv5te-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: failed to set dynamic section sizes: Memory exhausted
>> | collect2: error: ld returned 1 exit status
>> | make[1]: *** [libwebkitgtk-1.0.la] Error 1
>> | make[1]: Leaving directory `/local/qemuarm_test/tmp/work/armv5te-poky-linux-gnueabi/webkit-gtk/1.8.2-r2/webkit-1.8.2'
>>
>> Any ideas on how I can fix the build of webkit-gtk?
>
> Add more RAM/swap.

Didn't help - my machine has 6GB RAM + 20GB SWAP - still fails.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

