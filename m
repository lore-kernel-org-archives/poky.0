Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 724154C800BB
	for <poky@yoctoproject.org>; Tue, 17 May 2011 17:52:13 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id D8C2A1660334; Tue, 17 May 2011 16:52:12 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 138A51660163;
	Tue, 17 May 2011 16:52:12 -0600 (MDT)
Message-ID: <4DD2FC1C.9040409@mlbassoc.com>
Date: Tue, 17 May 2011 16:52:12 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4DCA9922.5000209@mlbassoc.com> <1305629810.3424.224.camel@rex>
In-Reply-To: <1305629810.3424.224.camel@rex>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: SSTATE MIRRORS only partly working?
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
X-List-Received-Date: Tue, 17 May 2011 22:52:13 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/17/2011 04:56 AM, Richard Purdie wrote:
> On Wed, 2011-05-11 at 08:11 -0600, Gary Thomas wrote:
>> Trying my SSTATE_MIRROR test with a recent Poky tree, I find
>> that for the most part, it doesn't work as expected (at least
>> not as I expect).
>>
>> Here's my test setup:
>>     * Create a complete build
>>       % . /local/poky/oe-init-build-env /local/build_orig
>>       % bitbake SOME-RECIPE
>>     * Use that build for the SSTATE_MIRROR
>>       % . /local/poky/oe-init-build-env /local/build_test
>>       -- edit conf/local.conf to have these lines:
>>           SSTATE_MIRRORS ?= "\
>>           file://.* file:///local/build_orig/sstate-cache/"
>>       % bitbake SOME-RECIPE
>>
>> What I find is that this second build is rebuilding a lot of
>> things, most strikingly the -native packages.  Looking into
>> it, I see that the original build creates
>>     sstate-pseudo-native-i686-linux-1.0-r0-i686-2-999fef0f7f260a6672c3678a831fa36f_populate-sysroot.tgz
>> but when the test build runs, it's looking for
>>     sstate-pseudo-native-i686-linux-1.0-r0-i686-2-feb469d055bfc4f32074e7e9499eaf22_populate-sysroot.tgz
>>
>> Odd, but it's not always different, for example
>>     sstate-perl-native-i686-linux-5.12.3-r2-i686-2-75d16ce5b7c945262d819c24f59d1c9f_populate-sysroot.tgz
>> is the same in both builds and is thus shared.
>>
>> Note that nothing else has changed, other than the process above.
>> The COREBASE tree is identical/untouched.
>>
>> Am I missing something here?
>
> Did you try comparing the siginfo/sigdata files using bitbake-diffsigs?
>
> That should give some clues about what changed.

Odd - I just tried this again after merging up to 31a763d7bd97f57586c6bb9ec223bfa7e333d21c
I can't make it happen again - SSTATE_MIRROR is working as I expect.  Sadly, I don't have
the trees from the previous attempt around any more to diagnose.

My previous merge of f285547a3820f394f7dd9dd974f876353d4ddc6c is when this happened.

I don't see anything obvious that changed between these two revisions that
might affect this, but I'm happy it seems to be working again.  If it breaks
again, I'll know what to look at.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

