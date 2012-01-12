Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A73DE0030C
	for <poky@yoctoproject.org>; Thu, 12 Jan 2012 07:33:31 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id DA5FFF8122F; Thu, 12 Jan 2012 08:33:28 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 83B70F811E8;
	Thu, 12 Jan 2012 08:33:27 -0700 (MST)
Message-ID: <4F0EFD47.1070708@mlbassoc.com>
Date: Thu, 12 Jan 2012 08:33:27 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Martin Jansa <martin.jansa@gmail.com>
References: <4F0EAE81.8030800@mlbassoc.com>
	<20120112131352.GC3452@jama.jama.net>
	<4F0EE095.1090709@mlbassoc.com>
	<20120112133749.GD3452@jama.jama.net>
In-Reply-To: <20120112133749.GD3452@jama.jama.net>
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
X-List-Received-Date: Thu, 12 Jan 2012 15:33:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-01-12 06:37, Martin Jansa wrote:
> On Thu, Jan 12, 2012 at 06:31:01AM -0700, Gary Thomas wrote:
>> On 2012-01-12 06:13, Martin Jansa wrote:
>>> On Thu, Jan 12, 2012 at 02:57:21AM -0700, Gary Thomas wrote:
>>>> I'm trying to understand why sstate sometimes [most times in my case]
>>>> is not reusable.  Comparing some of the .siginfo files gives me some
>>>> info, e.g.
>>>>
>>>> $ bitbake-diffsigs p60_poky/sstate-cache/sstate-pseudo-native-i686-linux-1.2-r4-i686-2-66ad8e10f260d506d065831a738c04a3_populate-sysroot.tgz.siginfo
>>>> p60_test_pass1/sstate-cache/sstate-pseudo-native-i686-linux-1.2-r4-i686-2-c7e01d52b467bbe3af0556a43806521a_populate-sysroot.tgz.siginfo
>>>> Hash for dependent task virtual:nativepseudo_1.2.bb.do_install changed from 9edd41e331b29f08941225709c325a0d to 9865df7c4aa84fdb288c06faecf63426
>>>>
>>>> How do I figure out what went into the hash(es) that changed?
>>>
>>> Try to look in stamps directory
>>>
>>> something like:
>>> tmp-eglibc/stamps/x86_64-linux/pseudo-native-1.2-r4.do_install.sigdata.504f9aac443e1f135aa2d1cbcf84c614
>>
>> How can I interpret the contents of that file?
>
> find file for virtual:nativepseudo_1.2.bb.do_install
> with checksum 9edd41e331b29f08941225709c325a0d and
> with checksum 9865df7c4aa84fdb288c06faecf63426 and
> then compare them with bitbake-diffsigs again
>
> or use bitbake-diffsigs for one sigdata file

I worked this down to the do_patch in pseudo-native:
$ bitbake-diffsigs p60_poky/tmp/stamps/i686-linux/pseudo-native-1.2-r4.do_patch.sigdata.6e97a41d825568db298fdc9dbaed563c 
p60_test_pass1/tmp/stamps/i686-linux/pseudo-native-1.2-r4.do_patch.sigdata.a0d4e99625c211f4f1d793213014ac07
basehash changed from f5994d735ee2b909b72ee811364befc1 to 564be8db4146afa5fc3579dc4c1618d3
Variable DATE value changed from 20120110 to 20120111
Hash for dependent task quilt-native_0.50.bb.do_populate_sysroot changed from 9307106f3c5dfd49d953e206cb1b6da5 to 24151a370083d625b84a2afb77955021

Why is DATE as a variable important?
Why is it not ignored by this statement in ./meta/classes/patch.bbclass?
    patch_do_patch[vardepsexclude] = "DATE SRCDATE PATCHRESOLVE"

As is, it seems that the sstate cache is only good on the day it
was made :-(

Here's what I tried yesterday:
   * Create a new build, e.g.
     % . /local/poky/oe-init-build-env /local/test_pass1
     -- adjust local.conf to match desired target
     % bitbake core-image-minimal
   * Create a new build, using the previous one's sstate-cache
     % . /local/poky/oe-init-build-env /local/test_pass2
     -- adjust local.conf to match desired target
     -- enable sstate cache via these lines in local.conf:
          SSTATE_MIRRORS ?= "\
          file://.* file:///local/test_pass1/sstate-cache/"
     % bitbake core-image-minimal

This all went to plan - the sstate cache was reused for every package except
one.  For some reason, dbus-1 had to be rebuilt.

Today, I tried it again, just like the second step.  Low and behold, virtually
none of the sstate packages were reused :-(  This seems totally broken to me
and has been filed as bug #1896

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

