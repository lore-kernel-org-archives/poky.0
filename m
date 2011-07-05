Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7FA6D4C80227
	for <poky@yoctoproject.org>; Tue,  5 Jul 2011 18:23:29 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 05 Jul 2011 16:23:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,481,1304319600"; d="scan'208";a="22974511"
Received: from unknown (HELO [10.255.13.240]) ([10.255.13.240])
	by azsmga001.ch.intel.com with ESMTP; 05 Jul 2011 16:23:17 -0700
Message-ID: <4E139CE5.4070102@linux.intel.com>
Date: Tue, 05 Jul 2011 16:23:17 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <cover.1309412032.git.xiaofeng.yan@windriver.com>	<b5b0312005639c617b40ce2c0f6860eb08ba28a8.1309412032.git.xiaofeng.yan@windriver.com>
	<1309878836.20015.720.camel@rex>
In-Reply-To: <1309878836.20015.720.camel@rex>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] poky-lsb: Change provider of virtual/libx11 to libx11-trim
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
X-List-Received-Date: Tue, 05 Jul 2011 23:23:30 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/05/2011 08:13 AM, Richard Purdie wrote:
> On Fri, 2011-07-01 at 17:36 +0800, Xiaofeng Yan wrote:
>> From: Xiaofeng Yan<xiaofeng.yan@windriver.com>
>>
>> BUG 1196 reports  compilation error like the following information from package startup-notification  when the provider of virtual/libx11 was libx11
>> | configure: error: Cannot find x11-xcb
>> | ERROR: oe_runconf failed
>> | ERROR: Function 'do_configure' failed (see
>>
>> Fix [BUGID #1196]
>> Signed-off-by: Xiaofeng Yan<xiaofeng.yan@windriver.com>
>> ---
>>   meta-yocto/conf/distro/poky-lsb.conf |    2 +-
>>   1 files changed, 1 insertions(+), 1 deletions(-)
>>
>> diff --git a/meta-yocto/conf/distro/poky-lsb.conf b/meta-yocto/conf/distro/poky-lsb.conf
>> index 49d12da..5385012 100644
>> --- a/meta-yocto/conf/distro/poky-lsb.conf
>> +++ b/meta-yocto/conf/distro/poky-lsb.conf
>> @@ -4,6 +4,6 @@ DISTRO = "poky-lsb"
>>   DISTROOVERRIDES = "poky:linuxstdbase"
>>
>>   DISTRO_FEATURES_append = " pam largefile"
>> -PREFERRED_PROVIDER_virtual/libx11 = "libx11"
>> +PREFERRED_PROVIDER_virtual/libx11 = "libx11-trim"
>>
>
> This looks like a backwards step. Why is libx11 not pulling in xcb as I
> suspect it should be...
>
Richard,

The x11-xcb, seems to be part of libx11-trim, so possibly creating a new 
recipe that that peels x11-xcb from libx11-trim is possibly another 
approach. The xcb packages don't seem to provide x11-xcb directly.

Sau!

> Cheers,
>
> Richard
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

