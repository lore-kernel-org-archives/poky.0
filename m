Return-Path: <Tom_Rini@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7FB614C811EC
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 09:15:22 -0600 (CST)
Received: from svr-orw-exc-10.mgc.mentorg.com ([147.34.98.58])
	by relay1.mentorg.com with esmtp 
	id 1PjvTN-0004jg-01 from Tom_Rini@mentor.com ;
	Mon, 31 Jan 2011 07:15:21 -0800
Received: from na2-mail.mgc.mentorg.com ([134.86.114.213]) by
	SVR-ORW-EXC-10.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Mon, 31 Jan 2011 07:15:20 -0800
Received: from [172.30.80.99] ([172.30.80.99]) by na2-mail.mgc.mentorg.com
	with Microsoft SMTPSVC(6.0.3790.3959); 
	Mon, 31 Jan 2011 08:15:19 -0700
Message-ID: <4D46D1FD.6090104@mentor.com>
Date: Mon, 31 Jan 2011 08:15:09 -0700
From: Tom Rini <tom_rini@mentor.com>
Organization: Mentor Graphics Corporation
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <1296248841-8015-1-git-send-email-tom_rini@mentor.com>
	<1296486772.13501.13306.camel@rex>
In-Reply-To: <1296486772.13501.13306.camel@rex>
X-OriginalArrivalTime: 31 Jan 2011 15:15:19.0877 (UTC)
	FILETIME=[AC656F50:01CBC159]
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] perl-native: Update for userelocatableinc and non-shared libperl
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
X-List-Received-Date: Mon, 31 Jan 2011 15:15:23 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 01/31/2011 08:12 AM, Richard Purdie wrote:
> On Fri, 2011-01-28 at 14:07 -0700, Tom Rini wrote:
>> Rather than using a wrapper switch to using upstreams support for
>> relocation.  While in here, bring in the mangling to use
>> /usr/bin/env perl rather than /full/path/to in order to work
>> in deep directory paths.
>>
>> Signed-off-by: Tom Rini<tom_rini@mentor.com>
>> ---
>>   meta/recipes-devtools/perl/perl-native_5.12.2.bb |   25 +++++++++++++--------
>>   1 files changed, 15 insertions(+), 10 deletions(-)
>>
>> diff --git a/meta/recipes-devtools/perl/perl-native_5.12.2.bb b/meta/recipes-devtools/perl/perl-native_5.12.2.bb
>> index 14da569..a634da5 100644
>> --- a/meta/recipes-devtools/perl/perl-native_5.12.2.bb
>> +++ b/meta/recipes-devtools/perl/perl-native_5.12.2.bb
>> @@ -4,8 +4,7 @@ SECTION = "libs"
>>   LICENSE = "Artistic|GPL"
>>   LIC_FILES_CHKSUM = "file://Copying;md5=2b4c6ffbcfcbdee469f02565f253d81a \
>>   		    file://Artistic;md5=f921793d03cc6d63ec4b15e9be8fd3f8"
>> -DEPENDS = "virtual/db-native gdbm-native"
>> -PR = "r2"
>> +PR = "r3"
>
> Dropping DEPENDS like this needs an explanation. I've happened to read
> the OE patch but could we add something here for the record please?

Certainly.  In the configure line there was already -Ui_db/ndbm/gdbm so 
these libraries weren't actually being used by perl (which is handy 
since in the OE case I then make autoconf/automake-native depend on this 
perl to fix some races).

-- 
Tom Rini
Mentor Graphics Corporation

