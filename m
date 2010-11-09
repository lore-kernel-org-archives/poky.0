Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 95E444C81068
	for <poky@yoctoproject.org>; Tue,  9 Nov 2010 10:14:39 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oA9GEbL8027317;
	Tue, 9 Nov 2010 08:14:37 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 9 Nov 2010 08:14:36 -0800
Received: from Macintosh-5.local ([172.25.36.228]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 9 Nov 2010 08:14:36 -0800
Message-ID: <4CD9736B.9070902@windriver.com>
Date: Tue, 09 Nov 2010 10:14:35 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.12) Gecko/20101027 Thunderbird/3.1.6
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4CD9456C.7090907@mlbassoc.com> <4CD968B0.2050505@windriver.com>
	<4CD972D3.6070305@mlbassoc.com>
In-Reply-To: <4CD972D3.6070305@mlbassoc.com>
X-OriginalArrivalTime: 09 Nov 2010 16:14:36.0952 (UTC)
	FILETIME=[344AC180:01CB8029]
Cc: poky@yoctoproject.org
Subject: Re: New staging error
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
X-List-Received-Date: Tue, 09 Nov 2010 16:14:39 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/9/10 10:12 AM, Gary Thomas wrote:
> On 11/09/2010 08:28 AM, Mark Hatle wrote:
>> On 11/9/10 6:58 AM, Gary Thomas wrote:
>>> With the new staging (master of 2010-11-08), I'm seeing lots of these
>>> messages
>>> when I build from scratch:
>>>
>>> NOTE: Running setscene task 81 of 364
>>> (/local/poky-amltd/meta/recipes-core/sysvinit/sysvinit_2.88dsf.bb:do_populate_sysroot_setscene)
>>>
>>> NOTE: package netbase-4.41-r1: task do_populate_sysroot_setscene: Started
>>> NOTE: Staging package
>>> /home/local/poky-new2/sstate-cache/sstate-netbase-ppc603e-poky-linux-4.41-r1-ppc603e-1-83766f23e3f9013cb26b768478638f1d_populate-sysroot.tgz
>>> does not exist
>>> ERROR: ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be
>>> preloaded: ignored.
>>> ERROR: ld.so: object 'libpseudo.so' from LD_PRELOAD cannot be
>>> preloaded: ignored.
>>>
>>> Questions:
>>> * What does this mean? Can I fix it somehow?
>>> * If it's ignored, it should be a WARNING, not an ERROR
>>>
>>
>> It is an error, but unfortunately not one that can caught. (The error
>> comes from ld.so, which will happily ignore a failed preload. If someone
>> knows how to make it fatal, we should do so!)
>>
>> I've normally seen the libpseudo.so failed to preload when either you
>> are running as root (as a safety precaution against tampering), you've
>> upgraded your host's libc since pseudo was built, or suddenly you are
>> running 64-bit (or 32-bit) binaries when pseudo is built for the other
>> architecture type.
>
> None of these are the case.  I was simply trying to test/verify the staging
> mechanism.  I think the error happens because LD_PRELOAD=libpseudo.so seems
> to be set, even before the sysroots tree where it lives has been populated.

Odd -- we definitely want to fix this.  Sounds like a bug in the staging code.. 
(Note, we're working on changing some of the way pseudo loads into memory as 
well as operates through the run sequence -- so it might have the side effect of 
fixing this issue....  but it's worth filing this as a bug, and if you have a 
way to reproduce it file that as well.)

--Mark

>> I'd suggest checking to see if you can figure out what caused the
>> message so we can get it fixed. But if you are unable to figure it out,
>> you'll need to clean and rebuild pseudo-native. (I don't remember the
>> clean target to ignore the sstate cache... or maybe we're planning on
>> adding one and haven't yet.) You may need to 'rm' pseudo from the sstate
>> cache. To force it to build fresh.
>
>


