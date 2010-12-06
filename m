Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9DA054C80039
	for <poky@lists.pokylinux.org>; Mon,  6 Dec 2010 05:19:45 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id B9E261660394; Mon,  6 Dec 2010 04:19:29 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id E6817166030A;
	Mon,  6 Dec 2010 04:19:05 -0700 (MST)
Message-ID: <4CFCC6A9.1060907@mlbassoc.com>
Date: Mon, 06 Dec 2010 04:19:05 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.12) Gecko/20101103 Fedora/1.0-0.33.b2pre.fc13
	Thunderbird/3.1.6
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
References: <201012031634.56033.paul.eggleton@linux.intel.com>	<4CF97DC2.8040209@mlbassoc.com>
	<4CFA3868.4020604@mlbassoc.com>
	<625BA99ED14B2D499DC4E29D8138F1504D475430F6@shsmsx502.ccr.corp.intel.com>
	<4CFB7F6F.60407@mlbassoc.com>
In-Reply-To: <4CFB7F6F.60407@mlbassoc.com>
Subject: Re: sstate status
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
X-List-Received-Date: Mon, 06 Dec 2010 11:19:46 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/05/2010 05:02 AM, Gary Thomas wrote:
> On 12/05/2010 04:19 AM, Tian, Kevin wrote:
>>> From: Gary Thomas
>>> Sent: Saturday, December 04, 2010 8:48 PM
>>>
>>> On 12/03/2010 04:31 PM, Gary Thomas wrote:
>>>> On 12/03/2010 09:34 AM, Paul Eggleton wrote:
>>>>> Hi all,
>>>>>
>>>>> I've been doing some tests with sstate, and I've managed to get to a
>>>>> stage where I can share the SSTATE_DIR between my two machines (one
>>>>> running Fedora 14 and the other Kubuntu 10.10) and almost get a
>>>>> successful build from a clean TMPDIR. My last test got to
>>>>> poky-image-minimal.do_rootfs and then failed due to some kind of
>>>>> package dependency issue:
>>>>>
>>>>> --------- snip ---------
>>>>> | Processing rpm...
>>>>> | Processing zypper...
>>>>> | error: Failed dependencies:
>>>>> | elfutils>= 0.148 is needed by rpm-5.1.10-r7.i586
>>>>> | libaugeas0>= 0.7.3 is needed by
>>>>> zypper-1.4.7+git0+9eb0e248e06c8d20ad054be2439149d9ede37531-r1.i586
>>>>> | ERROR: Task failed: ('function do_rootfs failed',
>>>>>
>>> '/home/pokystuff/tmp/work/qemux86-poky-linux/poky-image-minimal-1.0-r0/temp/log.
>>> do_rootfs.6874')
>>>>>
>>>>> --------- snip ---------
>>>>>
>>>>> A "bitbake -c clean augeas elfutils" and then "bitbake
>>>>> poky-image-minimal" again went through OK (and built the
>>>>> aforementioned recipes from sstate) , so I'm not sure what went wrong
>>>>> here.
>>>>>
>>>>> My current state of work is in the paule/sstate contrib branch, which
>>>>> is based on Kevin's tk/sstate branch. Kevin, I think the sooner we can
>>>>> move this towards master the better, then we can get some wider testing.
>>>>>
>>>>> FYI Joshua has made bug #507 into a tracking bug for current sstate
>>>>> issues:
>>>>> http://bugzilla.pokylinux.org/show_bug.cgi?id=507
>>>>
>>>> I gave this a simple try and it failed miserably. Working from a copy of
>>>> Paul's branch in poky-contrib, here's what I did:
>>>>
>>>> * On machine A (x86 Fedora 11)
>>>> % bitbake poky-image-minimal
>>>>
>>>> * On machine B (x86 Fedora 13)
>>>> -- Copy sstate-cache from machine A to /tmp/sstate-cache (rsync with
>>>> all perms& timestamps preserved)
>>>> -- Using the identical conf/local.conf file from machine A, except
>>>> I set up SSTATE_MIRRORS like this
>>>> SSTATE_MIRRORS ?= "\
>>>> file://.* file:///tmp/sstate-cache/"
>>>> % bitbake poky-image-minimal
>>>>
>>>> Fell apart pretty badly. Look at the output
>>>> http://www.mlbassoc.com/poky/poky_with_sstate.out
>>>>
>>>> Also, it seemed to be rebuilding a lot of packages. IMO, there's
>>>> no reason it should have to rebuild _any_
>>>>
>>>
>>> One thing that seems to be significant is the base build directory path.
>>> In the case above, they did not match, i.e.
>>> * On machine A, BUILDDIR=/tmp/sstate_testing
>>> * On machine B, BUILDDIR=/home/local/my_sstate_test
>>> I tried it this way as it matches my [customer's] expected usage.
>>
>> I think in usual case the directory paths would mismatch. So let's stick to that
>> configuration to expose more issues. In my previous debug, I have made it
>> in a good shape but would now turn to RP's branch to try more experiments.
>>
>> It would be good if you also try that one:
>> http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/log/?h=rpurdie/tweaks2
>>
>>>
>>> I've rerun the experiment again where I used identical paths on both
>>> machines and the results were vastly improved. It still takes a horrible
>>> length of time (64 minutes on a fast 4 processor box) and rebuilds way to
>>> many packages for just replaying what's already been done though (IMO).
>>> Results are at
>>> http://www.mlbassoc.com/poky/poky_with_sstate_same_paths.out
>>>
>>
>> In my run ~25min are consumed just for sstate check/installation on a NHM 4-core box.
>> then several minutes for rootfs generation if two builds totally match. the slow sstate
>> phase comes from same reason as a slow build - the 'exec' overhead. I use 'sato' as
>> the target.
>>
>> In your case, however there're still some packages rebuilt, such as gzip-native,
>> unifdef-native, eglibc-initial, ncurses, etc. and also gcc related packages are rebuilt
>> which just consumes time. Has your source tree changed between the two builds?
>
> No, identical source trees for all three runs.
>
> I'll try it again later today with Richard's tree.
>

I've now rerun this with Richard's tweak2 changes, building in completely
different tree paths.  While it did work, I don't see the point as it took
even longer the second time (using the sstate cache) and generated just as
much work :-(  Something is still not working as desired.

Original 'bitbake poky-image-minimal' into /tmp/sstate_testing
   time - 111 minutes
   space - 22.9 GB (in tmp)

Rerun, using the sstate-cache from the first run
   time - 114 minutes
   space - 21.7 GB

I think this last line from the rerun test is telling:
   NOTE: Tasks Summary: Attempted 1621 tasks of which 282 didn't need to be rerun and 0 failed.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

