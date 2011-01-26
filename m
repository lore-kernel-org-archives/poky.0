Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id B64AD4C811AA
	for <poky@yoctoproject.org>; Tue, 25 Jan 2011 21:51:41 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0Q3p664010561;
	Tue, 25 Jan 2011 19:51:06 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 25 Jan 2011 19:51:05 -0800
Received: from Macintosh-5.local ([172.25.36.227]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 25 Jan 2011 19:51:04 -0800
Message-ID: <4D3F9A27.3050409@windriver.com>
Date: Tue, 25 Jan 2011 21:51:03 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: "Tian, Kevin" <kevin.tian@intel.com>
References: <1295993245.27814.133.camel@rex>	<D5AB6E638E5A3E4B8F4406B113A5A19A31D0C878@shsmsx501.ccr.corp.intel.com>	<625BA99ED14B2D499DC4E29D8138F1504DB5BB71E1@shsmsx502.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504DB5BB7203@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504DB5BB7203@shsmsx502.ccr.corp.intel.com>
X-OriginalArrivalTime: 26 Jan 2011 03:51:05.0035 (UTC)
	FILETIME=[41BCF1B0:01CBBD0C]
Cc: poky <poky@yoctoproject.org>
Subject: Re: Master stability update
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
X-List-Received-Date: Wed, 26 Jan 2011 03:51:42 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 1/25/11 9:05 PM, Tian, Kevin wrote:
>> From: Tian, Kevin
>> Sent: Wednesday, January 26, 2011 10:52 AM
>>
>>> From: Xu, Dongxiao
>>> Sent: Wednesday, January 26, 2011 10:46 AM
>>>
>>> Richard Purdie wrote:
>>>> We merged the features into master. I just want to highlight the
>>>> status of the following issues:
>>>>
>>>> * pseudo problem causing failure of meta-toolchain and corruption of
>>>> certain file permissions - fixed in master
>>>>
>>>> * the -live image issues some people and the autobuilder were seeing
>>>> - fixed in master
>>>>
>>>> * the perf issue for linux-yocto-stable - fixed in master
>>>>
>>>> The following are know issues with master:
>>>>
>>>> * Using rm_work and switching machines to machines of the same
>>>> "multimachine" architecture breaks.
>>>
>>> After sysroot is per machine, we may need to reserve the "image" folder
>> even
>>> when rm_work, since for the second machine build, do_populate_sysroot and
>>> do_package will be re-run to populate files into a different sysroot folder.
>>>
>>>>
>>>> * When switching machines of the same "multimachine" architecture
>>>> (e.g.
>>>> emenlow to atom-pc), some sstate packages are changing checksums when
>>>> at first glance they shouldn't (e.g. perl do_install). A quick scan
>>>> of my sstate directory:
>>>
>>> I also have a look at my local build sstate directories, there are 17 packages
>>> whose prebuilt result could not shared betweeen atom-pc and emenlow.
>> Some
>>> of them may be not a problem since there are ${MACHINE} variables used in
>>> do_install(), some others are strange why do_install will have two different
>>> signatures between two different machines.
>>>
>>> I will spend some time investigating it.
>>>
>>
>> Note that checksum changes may not come from do_install itself, which
>> including
>> the hash from other tasks that do_install depends on. To capture the latter
>> possibility, you can simply use "bitbake -S poky-image-minimal" which only
>> generates
>> .siginfo for all the tasks w/o actually running them. This way you can compare
>> the
>> difference between emenlow and atom-pc easily to see what actually change.
>>
> 
> After a quick check, I guess this is not a problem. for example perl.do_configure
> changes checksum due to $MACHINE in dependency variables as Dongxiao said.
> Once perl is not reusable, at least ~10 recieps (libzypp, libtool, rpm, ...) are not
> reusable too because perl is in their task dependency chain.
> 
> I didn't check all the differences yet, but overall feeling is that this should be OK
> as Dongxiao mentioned there're several obvious MACHINE related recipes. I'll
> leave to Dongxiao for final confirmation. :-)

It might be nice (if not a bit dangerous) to be able to say "I want perl version
X.Y.Z.  I don't really care about the checksum, as long as the version matches..."

In the case of perl, this is likely to do exactly what we want/need.  In the
case of other packages (particularly libraries) this could cause serious problems...

--Mark

> Thanks
> Kevin
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


