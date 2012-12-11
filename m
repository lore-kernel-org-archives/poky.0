Return-Path: <constantinx.musca@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31F58E00777
	for <poky@yoctoproject.org>; Tue, 11 Dec 2012 06:17:36 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 11 Dec 2012 06:17:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,259,1355126400"; d="scan'208";a="232236033"
Received: from costin-desktop (HELO [10.237.105.152]) ([10.237.105.152])
	by orsmga001.jf.intel.com with ESMTP; 11 Dec 2012 06:17:34 -0800
Message-ID: <50C740A2.8060400@intel.com>
Date: Tue, 11 Dec 2012 16:18:10 +0200
From: Constantin Musca <constantinx.musca@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121016 Thunderbird/16.0.1
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <1355130479-17774-1-git-send-email-constantinx.musca@intel.com>
	<50C63883.3080306@linux.intel.com>
In-Reply-To: <50C63883.3080306@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH v2] poky-tiny.conf: blacklist inappropriate image options
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
X-List-Received-Date: Tue, 11 Dec 2012 14:17:36 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/10/2012 09:31 PM, Saul Wold wrote:
> On 12/10/2012 01:07 AM, Constantin Musca wrote:
>> Blacklist all images that fail when using poky-tiny
>>
>> poky-tiny image tests:
>> 1. build-appliance-image
>>      * ERROR: Nothing RPROVIDES libx11-dev
>> 2. core-image-minimal-*
>>      * ok
>> 3. core-image-base
>>      * libcap fails at do_compile
>> 4. core-image-basic
>>      * libcap fails at do_compile
>> 5. core-image-clutter
>>      * ERROR: Nothing PROVIDES virtual/libx11
>> 6. core-image-gtk-directfb
>>      * ERROR: Nothing RPROVIDES libxt
>> 7. core-image-lsb, core-image-lsb-dev, core-image-lsb-sdk
>>      * ERROR: Nothing RPROVIDES libxt
>> 8. core-image-rt
>>      * ERROR: Multiple .bb files are due to be built which each 
>> provide virtual/kernel
>> (/home/dev/yocto/poky/meta/recipes-kernel/linux/linux-yocto-rt_3.4.bb
>> /home/dev/yocto/poky/meta/recipes-kernel/linux/linux-yocto-tiny_3.4.bb).
>> 9. core-image-rt-sdk
>>      * ERROR: Nothing PROVIDES xext
>> 10. core-image-sato, core-image-sato-dev, core-image-sato-sdk
>>      * ERROR: Nothing PROVIDES libxft
>> 11. core-image-x11
>>      * ERROR: Nothing PROVIDES virtual/libx11
>> 12. q4te-demo-image
>>      * libcap fails at do_compile
>>
>> [YOCTO #2565]
>>
>> Signed-off-by: Constantin Musca <constantinx.musca@intel.com>
>> ---
>>   meta-yocto/conf/distro/poky-tiny.conf | 17 +++++++++++++++++
>>   1 file changed, 17 insertions(+)
>>
>> diff --git a/meta-yocto/conf/distro/poky-tiny.conf 
>> b/meta-yocto/conf/distro/poky-tiny.conf
>> index d40748e..9197a7c 100644
>> --- a/meta-yocto/conf/distro/poky-tiny.conf
>> +++ b/meta-yocto/conf/distro/poky-tiny.conf
>> @@ -120,3 +120,20 @@ MACHINE_ESSENTIAL_EXTRA_RDEPENDS = ""
>>   # will build perl in case this package is installed. Since we don't 
>> care about
>>   # this script for the purposes of tiny, remove the dependency from 
>> here.
>>   RDEPENDS_${PN}-mtrace_pn-eglibc = ""
>> +
>> +INHERIT += "blacklist"
> Won't this have the same problem when build from command line as the 
> last patch? I thought this was changing to an _append instead?
>
> Thanks
>     Sau!
>
>
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
We will not have the same problem because there are only INHERIT += 
statements (no ?= INHERIT). The _append method doesn't work because it 
adds "blacklist" too late.

Cheers,
Constantin

