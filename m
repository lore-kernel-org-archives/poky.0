Return-Path: <Tom_Rini@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by mx1.pokylinux.org (Postfix) with ESMTP id A346F4C800A0
	for <poky@yoctoproject.org>; Wed,  9 Mar 2011 13:26:30 -0600 (CST)
Received: from svr-orw-fem-01.mgc.mentorg.com ([147.34.98.93])
	by relay1.mentorg.com with esmtp 
	id 1PxP1i-0005wz-2L from Tom_Rini@mentor.com 
	for poky@yoctoproject.org; Wed, 09 Mar 2011 11:26:30 -0800
Received: from SVR-ORW-FEM-04.mgc.mentorg.com ([147.34.97.41]) by
	svr-orw-fem-01.mgc.mentorg.com over TLS secured channel with
	Microsoft SMTPSVC(6.0.3790.4675); Wed, 9 Mar 2011 11:26:29 -0800
Received: from [172.30.80.238] (147.34.91.1) by svr-orw-fem-04.mgc.mentorg.com
	(147.34.97.41) with Microsoft SMTP Server id 14.1.270.1;
	Wed, 9 Mar 2011 11:26:29 -0800
Message-ID: <4D77D45C.2090304@mentor.com>
Date: Wed, 9 Mar 2011 12:26:20 -0700
From: Tom Rini <tom_rini@mentor.com>
Organization: Mentor Graphics Corporation
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <625BA99ED14B2D499DC4E29D8138F150575567B0A1@shsmsx502.ccr.corp.intel.com>
	<9DA5872FEF993D41B7173F58FCF6BE9431E845BA@orsmsx504.amr.corp.intel.com>
In-Reply-To: <9DA5872FEF993D41B7173F58FCF6BE9431E845BA@orsmsx504.amr.corp.intel.com>
X-OriginalArrivalTime: 09 Mar 2011 19:26:29.0898 (UTC)
	FILETIME=[E41CE6A0:01CBDE8F]
Subject: Re: PERL and FULLPERL from MakeMaker.pm
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
X-List-Received-Date: Wed, 09 Mar 2011 19:26:31 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 03/09/2011 12:10 PM, Kamble, Nitin A wrote:
>
>
>> -----Original Message-----
>> From: Tian, Kevin
>> Sent: Wednesday, March 09, 2011 12:24 AM
>> To: poky@yoctoproject.org; openembedded-core@lists.openembedded.org
>> Cc: Kamble, Nitin A
>> Subject: PERL and FULLPERL from MakeMaker.pm
>>
>> Hi, all,
>>
>> I just found that several perl-based projects (e.g. sgmlspl and git)
>> failed to find
>> ExtUtils modules, when sstate cache is used for perl-native while
>> original build
>> directory generating sstate packages have been deleted.
>>
>> We have a perl wrapper to make sure @INC correctly including current
>> build
>> sysroot, which however doesn't solve the problem seen here.
>>
>> Those projects make use of MakeMaker.pm to generate their Makefiles on
>> the
>> fly, while MakeMaker.pm generates below lines:
>>
>> PERL = /media/builds-0/demo-0309/tmp/sysroots/x86_64-
>> linux/usr/bin/perl.real
>> FULLPERL =
>> /media/builds-0/demo-0309/tmp/sysroots/x86_64-linux/usr/bin/perl.real
>>
>> I can work around the issues by manually changing Makefile when the
>> error
>> occurs.
>>
>> I know little about perl internals, and thus would like to know whether
>> it's a
>> easy issue to tackle. I didn't find any explicit files containing a
>> perl.real from
>> perl-native sstate package, except the perl wrapper script. So it's
>> interesting
>> how MakeMaker.pm finds the perl.real binary.
>>
>> I reported a bug at:
>> http://bugzilla.yoctoproject.org/post_bug.cgi
>>
>> Thanks,
>> Kevin
>
> Kevin,
>    Looks like the build path for perl.real is used. I think it should be a path from the native sysroot. Thanks for opening the bug.

IIRC some of this stuff can be overridden today via the env, it's just not.

-- 
Tom Rini
Mentor Graphics Corporation

