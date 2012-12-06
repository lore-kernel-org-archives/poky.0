Return-Path: <constantinx.musca@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21655E01454
	for <poky@yoctoproject.org>; Thu,  6 Dec 2012 05:12:51 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 06 Dec 2012 05:12:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,230,1355126400"; d="scan'208";a="176961299"
Received: from costin-desktop (HELO [10.237.105.152]) ([10.237.105.152])
	by AZSMGA002.ch.intel.com with ESMTP; 06 Dec 2012 05:12:49 -0800
Message-ID: <50C099EF.2020106@intel.com>
Date: Thu, 06 Dec 2012 15:13:19 +0200
From: Constantin Musca <constantinx.musca@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121016 Thunderbird/16.0.1
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <1353328788-31664-1-git-send-email-constantinx.musca@intel.com>
	<50C02D93.1060208@linux.intel.com>
In-Reply-To: <50C02D93.1060208@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] poky-tiny.conf: blacklist inappropriate image options
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 06 Dec 2012 13:12:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/06/2012 07:30 AM, Saul Wold wrote:
> On 11/19/2012 04:39 AM, Constantin Musca wrote:
>> Blacklist all images that aren't core-image-minimal-*
>>
>> [YOCTO #2565]
>>
>
> During my testing of MUT, I found that poky-tiny would not build with 
> this patch.
>
> Please verify.
>
> You can see the failure here:
>
> http://autobuilder.yoctoproject.org:8010/builders/nightly-tiny/builds/357/steps/shell_43/logs/stdio 
>
>
> I was able to reproduce it on my desktop machine.
>
> Sau!
>
>> Signed-off-by: Constantin Musca <constantinx.musca@intel.com>
>> ---
>>   meta-yocto/conf/distro/poky-tiny.conf | 17 +++++++++++++++++
>>   1 file changed, 17 insertions(+)
>>
>> diff --git a/meta-yocto/conf/distro/poky-tiny.conf 
>> b/meta-yocto/conf/distro/poky-tiny.conf
>> index d40748e..121534e 100644
>> --- a/meta-yocto/conf/distro/poky-tiny.conf
>> +++ b/meta-yocto/conf/distro/poky-tiny.conf
>> @@ -120,3 +120,20 @@ MACHINE_ESSENTIAL_EXTRA_RDEPENDS = ""
>>   # will build perl in case this package is installed. Since we don't 
>> care about
>>   # this script for the purposes of tiny, remove the dependency from 
>> here.
>>   RDEPENDS_${PN}-mtrace_pn-eglibc = ""
>> +
>> +INHERIT_DISTRO += "blacklist"
>> +PNBLACKLIST[build-appliance-image] = "not buildable with poky-tiny"
>> +PNBLACKLIST[core-image-base] = "not buildable with poky-tiny"
>> +PNBLACKLIST[core-image-basic] = "not buildable with poky-tiny"
>> +PNBLACKLIST[core-image-clutter] = "not buildable with poky-tiny"
>> +PNBLACKLIST[core-image-gtk-directfb] = "not buildable with poky-tiny"
>> +PNBLACKLIST[core-image-lsb] = "not buildable with poky-tiny"
>> +PNBLACKLIST[core-image-lsb-dev] = "not buildable with poky-tiny"
>> +PNBLACKLIST[core-image-lsb-sdk] = "not buildable with poky-tiny"
>> +PNBLACKLIST[core-image-rt] = "not buildable with poky-tiny"
>> +PNBLACKLIST[core-image-rt-sdk] = "not buildable with poky-tiny"
>> +PNBLACKLIST[core-image-sato] = "not buildable with poky-tiny"
>> +PNBLACKLIST[core-image-sato-dev] = "not buildable with poky-tiny"
>> +PNBLACKLIST[core-image-sato-sdk] = "not buildable with poky-tiny"
>> +PNBLACKLIST[core-image-x11] = "not buildable with poky-tiny"
>> +PNBLACKLIST[qt4e-demo-image] = "not buildable with poky-tiny"
>>
I only tested it using hob. It seems that Hob includes it in a different 
way. The solution is to use INHERIT_DISTRO_append = " blacklist" in 
order to permit INHERIT_DISTRO ?= "debian devshell sstate license" to 
work (_append is delayed until the end of parsing). I will send patch v2.


Cheers,
Constantin

