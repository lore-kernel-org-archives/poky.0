Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id EC5474C80050
	for <poky@lists.pokylinux.org>; Wed,  9 Mar 2011 14:26:38 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id AE9621660537; Wed,  9 Mar 2011 13:26:38 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 4A193166051F;
	Wed,  9 Mar 2011 13:26:37 -0700 (MST)
Message-ID: <4D77E27D.7020901@mlbassoc.com>
Date: Wed, 09 Mar 2011 13:26:37 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4D6675E0.2040703@mlbassoc.com> <4D6B3BA3.9050303@intel.com>	
	<4D6F9018.1000605@mlbassoc.com> <4D704768.2090100@intel.com>	
	<4D70CE46.7040104@mlbassoc.com> <1299634187.602.546.camel@rex>	
	<4D77C9F9.4040309@mlbassoc.com> <1299697497.602.866.camel@rex>
In-Reply-To: <1299697497.602.866.camel@rex>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Is sstate broken
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
X-List-Received-Date: Wed, 09 Mar 2011 20:26:39 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 03/09/11 12:04, Richard Purdie wrote:
> On Wed, 2011-03-09 at 11:42 -0700, Gary Thomas wrote:
>> I updated to master (fab742bd4693ed3092690a20dd32d53fe27c3d4c) and tried again.
>> I don't see any difference - the run using the sstate cache as a mirror
>> seems to do all the same work as without.  Here's how I tested it.
>>
>> * Build original tree
>>     % POKYCONF=meta-cobra3530p60/conf . /tmp/poky-amltd/poky-init-build-env /local/p60_step1
>>     ... adjust conf/local.conf
>>     % bitbake amltd-console-image
>>
>> * Rebuild, using previous result for SSTATE_MIRRORS
>>     % POKYCONF=meta-cobra3530p60/conf . /tmp/poky-amltd/poky-init-build-env /local/p60_step2
>>     ... adjust conf/local.conf
>>     % bitbake amltd-console-image
>>
>> The only difference between the two runs is enabling SSTATE_MIRRORS in local.conf
>>     %  diff -u /local/p60_step?/conf/local.conf
>>      --- /local/p60_step1/conf/local.conf    2011-03-09 08:28:18.266933061 -0700
>>      +++ /local/p60_step2/conf/local.conf    2011-03-09 09:57:51.365932951 -0700
>>      @@ -53,4 +53,7 @@
>>       IMAGE_LINGUAS ?= "en-us"
>>
>>       # Minimize feature set
>>       DISTRO_FEATURES ?= "alsa"
>>      +SSTATE_MIRRORS ?= "\
>>      +file://.* file:///local/p60_step1/sstate-cache/"
>>
>> The results seem to have gone through all the same steps (or nearly so).  The output
>> from the runs is at
>>     http://www.mlbassoc.com/poky/build.step1
>>     http://www.mlbassoc.com/poky/build.step2
>>
>> Comparing the two build trees:
>>     % ls /local/p60_step1/tmp/work/*/*/temp/log.do_compile | wc
>>       144     144   12521
>>     % ls /local/p60_step2/tmp/work/*/*/temp/log.do_compile | wc
>>       143     143   12427
>>     % du -s /local/p60_step?
>>     15229296        /local/p60_step1
>>     15162760        /local/p60_step2
>>
>> I know this procedure used to work (or at least close).  Am I doing
>> something wrong?
>
> You're not doing anything wrong and this is the same scenario I've been
> testing with. After I'd fixed the origin problem it created a problem
> with file urls containing globing. I managed to break the original patch
> with the globing fix. The good news is the problem is simple and I've
> pushed a fix.
>
> It should work *much* better than you've seen above, not needing to
> rerun many tasks so if its working it will be very obvious.

Yes, indeed it does!  I just reran step2 from scratch and it finished
in only 13 minutes (with a lot of other things on the build machine so
this is quite good).  There's still quite a lot of stuff in the build
tree:
   % du -s /local/p60_step2
   7285332 /local/p60_step2
but that's only about 1/2 of before.  The results seem very close:
   % ls -l /local/p60_step2/tmp/deploy/images/
   total 10748
   -rwxrw-r--  1 gthomas gthomas 5446150 Mar  9 13:15 amltd-console-image-cobra3530p60-20110309200339.rootfs.tar.bz2
   lrwxrwxrwx  1 gthomas gthomas      62 Mar  9 13:15 amltd-console-image-cobra3530p60.tar.bz2 -> amltd-console-image-cobra3530p60-20110309200339.rootfs.tar.bz2
   drwxrwxr-x 91 gthomas gthomas    4096 Mar  9 13:08 licenses
   -rw-rw-r--  1 gthomas gthomas 3077911 Mar  9 09:24 modules-2.6.37-r0-cobra3530p60.tgz
   -rw-r--r--  1 gthomas gthomas 2468564 Mar  9 09:24 uImage-2.6.37-r0-cobra3530p60-20110309153435.bin
   lrwxrwxrwx  1 gthomas gthomas      48 Mar  9 09:24 uImage-cobra3530p60.bin -> uImage-2.6.37-r0-cobra3530p60-20110309153435.bin
   % ls -l /local/p60_step1/tmp/deploy/images/
   total 10748
   -rwxrw-r--  1 gthomas gthomas 5446783 Mar  9 09:53 amltd-console-image-cobra3530p60-20110309153435.rootfs.tar.bz2
   lrwxrwxrwx  1 gthomas gthomas      62 Mar  9 09:53 amltd-console-image-cobra3530p60.tar.bz2 -> amltd-console-image-cobra3530p60-20110309153435.rootfs.tar.bz2
   drwxrwxr-x 92 gthomas gthomas    4096 Mar  9 09:06 licenses
   -rw-rw-r--  1 gthomas gthomas 3077911 Mar  9 09:24 modules-2.6.37-r0-cobra3530p60.tgz
   -rw-r--r--  1 gthomas gthomas 2468564 Mar  9 09:24 uImage-2.6.37-r0-cobra3530p60-20110309153435.bin
   lrwxrwxrwx  1 gthomas gthomas      48 Mar  9 09:24 uImage-cobra3530p60.bin -> uImage-2.6.37-r0-cobra3530p60-20110309153435.bin

I unpacked the resulting image tarballs and they match, modulo the
package install times in the opkg database.

Looks like it's working correctly now :-)

Can you explain what the sstate files are and how I might make use of them?
In particular, I'd like to be able to hand my customers a sstate cache which
holds the majority of the tools they might need to speed startup.  Sending
the whole thing is a bit problematic as it's quite large, so if I can winnow
it a bit it would help.

Thanks for getting this back in order

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

