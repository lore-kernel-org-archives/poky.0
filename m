Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 58DB04C80BD4
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 10:40:21 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 184EA16605D0; Thu, 20 Jan 2011 09:40:21 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 90F7C166053A;
	Thu, 20 Jan 2011 09:40:19 -0700 (MST)
Message-ID: <4D386573.5020309@mlbassoc.com>
Date: Thu, 20 Jan 2011 09:40:19 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4D3850B3.2030100@mlbassoc.com>
	<1295539103.2487.4.camel@scimitar>	<0778F003-B27E-402C-BDE2-D7B3B7CA8CE9@dominion.thruhere.net>
	<4D386417.2040506@mlbassoc.com>
In-Reply-To: <4D386417.2040506@mlbassoc.com>
Subject: Re: What's taking so long??
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
X-List-Received-Date: Thu, 20 Jan 2011 16:40:21 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/20/2011 09:34 AM, Gary Thomas wrote:
> On 01/20/2011 09:04 AM, Koen Kooi wrote:
>>
>> Op 20 jan 2011, om 16:58 heeft Joshua Lock het volgende geschreven:
>>
>>> On Thu, 2011-01-20 at 08:11 -0700, Gary Thomas wrote:
>>>> My target platform/distro uses IPK and I have a local kernel
>>>> recipe which is based on the pre linux-yocto recipe that was
>>>> used by Poky. When I build& package the kernel, I have
>>>> terrible performance - this is new, it used to be just fine.
>>>>
>>>> Here's what I mean. Building for my kernel and timing the
>>>> various steps, e.g.
>>>> % time bitbake virtual/kernel -c compile
>>>>
>>>> My kernel:
>>>> compile 1m49s
>>>> deploy 0m16s
>>>> populate_sysroot 0m38s
>>>> package 23m20s
>>>>
>>>> Just to compare, using OTS Poky for BeagleBoard:
>>>> compile 5m07s
>>>> deploy 0m36s
>>>> populate_sysroot 0m29s
>>>> package 5m02s
>>>>
>>>> That's a five-fold difference in the time to build& package
>>>> the kernel.
>>>
>>> This is a significant performance impact. Thanks for taking the time to
>>> do some profiling.
>>>
>>> I've filed a bug http://bugzilla.pokylinux.org/show_bug.cgi?id=666 and
>>> we'll get someone looking into that as a matter of priority.
>>>
>>>>
>>>> What am I doing [wrong?] that makes this so?
>>>> Would it be better if I switched to RPM like the BB is using?
>>>>
>>>
>>> It looks like the slow paths are in package format independent code, so
>>> probably not.
>>
>>> From a chat I had with RP 2 weeks ago:
>>
>> Koen: there's still something slow in bitbake log output
>> Koen: do_package takes eons (> 10mins) with almost zero IO and CPU
>> Koen: ctrl-c'ing it shows it's in the installed-but-not-packaged output
>> Richard Purdie: poky's bitbake or upstream?
>> Koen: I only tried poky bitbake so far
>> Koen: upstream is slow as well, but I don't recall being so slow
>> Koen: we talked about it at ELC
>> Richard Purdie: My memory isn't remembering that
>> Richard Purdie: This is do_package for the kernel or something large?
>> Koen: kernel
>> Koen: but I think anything would trigger it
>> Koen: it feels like bitbake is only doing N lines of output per second
>> Koen: effectively throttling it
>> Koen: and with you have a 4k lines out output....
>> Richard Purdie: The message handling means thread context switching
>> Richard Purdie: in runqueue.py there is a number 4096 and a 0 on the line below
>> Richard Purdie: try changing the 0 for something like 100000
>> Richard Purdie: You won't get nice console output but it might run faster
>> Richard Purdie: Was poky running "faster" until recently?
>> Koen: I think so
>> Koen: I haven't measured it
>>
>> Does doing:
>>
>> Richard Purdie: in runqueue.py there is a number 4096 and a 0 on the line below
>> Richard Purdie: try changing the 0 for something like 100000
>>
>> help?
>
> No.
>

Note: I got tired of waiting for this (I needed to rebuild
anyway) and typed ^C.  I got this dump which I don't understand:

NOTE: Sending SIGTERM to remaining 1 tasks
Warning, worker left partial message: <event>(ilogging
LogRecord
p1
(dp2
S'taskpid'
p3
I23606
sS'threadName'
p4
S'MainThread'
p5
sS'name'
p6
S'BitBake'
p7
sS'thread'
p8
I-1216357584
sS'created'
p9
F1295541481.8053031
sS'process'
p10
I23606
sS'processName'
p11
S'MainProcess'
p12
sS'args'
p13
(tsS'module'
p14
S'__init__'
p15
sS'filename'
p16
S'__init__.py'
p17
sS'levelno'
p18
I20
sS'exc_text'
p19
NsS'pathname'
p20
S'/home/local/poky-amltd/bitbake/lib/bb/__init__.py'
p21
sS'lineno'
p22
I85
sS'msg'
p23
S'  /kernel/arch/arm/plat-s3c64xx/dev-audio.c'
p24
sS'exc_info'
p25
NsS'funcName'
p26
S'note'
p27

What does it mean?  Maybe it helps understand the problem.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

