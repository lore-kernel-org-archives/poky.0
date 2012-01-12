Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C98FE0030C
	for <poky@yoctoproject.org>; Thu, 12 Jan 2012 09:06:50 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 75F05F811E8; Thu, 12 Jan 2012 10:06:46 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 9883FF811E8;
	Thu, 12 Jan 2012 10:06:41 -0700 (MST)
Message-ID: <4F0F1321.8080706@mlbassoc.com>
Date: Thu, 12 Jan 2012 10:06:41 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: McClintock Matthew-B29882 <B29882@freescale.com>
References: <4F0EAE81.8030800@mlbassoc.com>
	<20120112131352.GC3452@jama.jama.net>
	<4F0EE095.1090709@mlbassoc.com>
	<20120112133749.GD3452@jama.jama.net>
	<4F0EFD47.1070708@mlbassoc.com>
	<CAEsOVNcLNJ2iD2YANL6z2ris6kjbQ1kbky2onu8hZrNTim=P+Q@mail.gmail.com>
In-Reply-To: <CAEsOVNcLNJ2iD2YANL6z2ris6kjbQ1kbky2onu8hZrNTim=P+Q@mail.gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: sstate info
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
X-List-Received-Date: Thu, 12 Jan 2012 17:06:50 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-01-12 09:53, McClintock Matthew-B29882 wrote:
> First off, what version of Yocto are you running? I've made a lot of
> fixes post 1.1 release (others have made some as well ;)), and I
> believe lots of these fixes will be in the 1.1.1 release. They should
> all be in master, although I've not tested master sstate-cache in a
> while now.
>
> On Thu, Jan 12, 2012 at 9:33 AM, Gary Thomas<gary@mlbassoc.com>  wrote:
>> I worked this down to the do_patch in pseudo-native:
>> $ bitbake-diffsigs
>> p60_poky/tmp/stamps/i686-linux/pseudo-native-1.2-r4.do_patch.sigdata.6e97a41d825568db298fdc9dbaed563c
>> p60_test_pass1/tmp/stamps/i686-linux/pseudo-native-1.2-r4.do_patch.sigdata.a0d4e99625c211f4f1d793213014ac07
>> basehash changed from f5994d735ee2b909b72ee811364befc1 to
>> 564be8db4146afa5fc3579dc4c1618d3
>> Variable DATE value changed from 20120110 to 20120111
>> Hash for dependent task quilt-native_0.50.bb.do_populate_sysroot changed
>> from 9307106f3c5dfd49d953e206cb1b6da5 to 24151a370083d625b84a2afb77955021
>>
>
> This is telling you that you need to look at the quilt-native task
> now. Nothing is wrong about the signature for psuedo-natve.
>
>> Why is DATE as a variable important?
>> Why is it not ignored by this statement in ./meta/classes/patch.bbclass?
>>    patch_do_patch[vardepsexclude] = "DATE SRCDATE PATCHRESOLVE"
>
> DATE is not important, that is why we are explicitly telling the
> signature to ignore this variable.

It seems that DATE needs to be ignored other places as well.  Digging
further, I find:

$ bitbake-diffsigs p60_poky/tmp/stamps/i686-linux/quilt-native-0.50-r0.do_patch.sigdata.216968eaca38198b88a7520be02e3fca 
p60_test_pass1/tmp/stamps/i686-linux/quilt-native-0.50-r0.do_patch.sigdata.0ce7898e700de80ff8afcb0850ec4ed0
basehash changed from 4863b21531f8236184a7c3b16da3ea13 to 7ee430d1251148b2509ef2aefb6e5443
Variable DATE value changed from 20120110 to 20120111

which is why pseudo-native changed which is why almost every other
recipe signature changed :-(

>
>> As is, it seems that the sstate cache is only good on the day it
>> was made :-(
>
> This is possible, but you need to check the upstream task that
> changed. Since psuedo-native depends on quilt-native it's getting a
> new signature since something that changed in quilt-native might
> effect psuedo-native.
>
>> Here's what I tried yesterday:
>>   * Create a new build, e.g.
>>     % . /local/poky/oe-init-build-env /local/test_pass1
>>     -- adjust local.conf to match desired target
>>     % bitbake core-image-minimal
>>   * Create a new build, using the previous one's sstate-cache
>>     % . /local/poky/oe-init-build-env /local/test_pass2
>>     -- adjust local.conf to match desired target
>>     -- enable sstate cache via these lines in local.conf:
>>          SSTATE_MIRRORS ?= "\
>>          file://.* file:///local/test_pass1/sstate-cache/"
>>     % bitbake core-image-minimal
>>
>> This all went to plan - the sstate cache was reused for every package except
>> one.  For some reason, dbus-1 had to be rebuilt.
>
> This should work. I'm building on one machine and reusing on others
> including native cache. I'm doing thing on something close to what
> 1.1.1 will look like.

It did work *YESTERDAY*, but the exact same steps today do not work.
There were no changes to my poky source tree and no new packages
were downloaded.

>
>> Today, I tried it again, just like the second step.  Low and behold,
>> virtually
>> none of the sstate packages were reused :-(  This seems totally broken to me
>> and has been filed as bug #1896
>
> -M

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

