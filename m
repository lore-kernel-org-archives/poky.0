Return-Path: <constantinx.musca@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9A58E0127C
	for <poky@yoctoproject.org>; Wed, 21 Nov 2012 08:11:28 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 21 Nov 2012 08:11:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,293,1352102400"; d="scan'208";a="220697079"
Received: from costin-desktop (HELO [10.237.105.152]) ([10.237.105.152])
	by azsmga001.ch.intel.com with ESMTP; 21 Nov 2012 08:11:27 -0800
Message-ID: <50ACFD54.4090808@intel.com>
Date: Wed, 21 Nov 2012 18:12:04 +0200
From: Constantin Musca <constantinx.musca@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121016 Thunderbird/16.0.1
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <1353328788-31664-1-git-send-email-constantinx.musca@intel.com>
	<50AC01FD.7090104@linux.intel.com>
In-Reply-To: <50AC01FD.7090104@linux.intel.com>
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
X-List-Received-Date: Wed, 21 Nov 2012 16:11:29 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/21/2012 12:19 AM, Darren Hart wrote:
> Hi Constantin,
>
> On 11/19/2012 04:39 AM, Constantin Musca wrote:
>> Blacklist all images that aren't core-image-minimal-*
>>
> This needs a description as to what the problem is and why this change
> is needed. Note that the bug is here for reference, but cannot be relied
> upon to provide context. That is what the git log is for.
>
> I believe the core-image-rt image should also build, but I haven't tried
> recently. trace-cmd might break that.
>
> What sort of error is the user presented with when trying to build one
> of the blacklisted images?
>
> As I've stated in the bug, I'd be happier with an image whitelist than a
> blacklist as it is hopelessly unmaintainable. Have we explored the
> whitelist approach?
>
> Finally, please remember to CC the maintainer of the files you are
> modifying when that information is obvious. It is also good practice to
> CC the active bugzilla commenters when available.
>
> Thanks,
>
> Darren
>
>> [YOCTO #2565]
>>
>> Signed-off-by: Constantin Musca <constantinx.musca@intel.com>
>> ---
>>   meta-yocto/conf/distro/poky-tiny.conf | 17 +++++++++++++++++
>>   1 file changed, 17 insertions(+)
>>
>> diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
>> index d40748e..121534e 100644
>> --- a/meta-yocto/conf/distro/poky-tiny.conf
>> +++ b/meta-yocto/conf/distro/poky-tiny.conf
>> @@ -120,3 +120,20 @@ MACHINE_ESSENTIAL_EXTRA_RDEPENDS = ""
>>   # will build perl in case this package is installed. Since we don't care about
>>   # this script for the purposes of tiny, remove the dependency from here.
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
Hi Darren,

I will come back with build errors for incompatible images as soon as I 
test all the images using the poky-tiny distro. Do you agree with the 
following whitelist approach?
- create poky-tiny.bbclass in meta-yocto which will contain an anonymous 
python function for checking whether a package is a whitelisted image
- the whitelist variable (configurable from poky-tiny.conf) will be 
called TINY_IMAGE_WHITELIST


Cheers,
Constantin


