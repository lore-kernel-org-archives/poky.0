Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id A28434C805BB
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 17:34:47 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 Mar 2011 15:34:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,195,1299484800"; d="scan'208";a="898038682"
Received: from unknown (HELO [10.255.12.146]) ([10.255.12.146])
	by fmsmga001.fm.intel.com with ESMTP; 16 Mar 2011 15:34:47 -0700
Message-ID: <4D813AED.4030605@linux.intel.com>
Date: Wed, 16 Mar 2011 15:34:21 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
References: <4D812FD5.5050504@linux.intel.com> <4D81307F.80702@linux.intel.com>
	<4D813515.2030801@linux.intel.com>
In-Reply-To: <4D813515.2030801@linux.intel.com>
Subject: Re: [PATCH A] n450: add optimization flags to gtk+ for n450 to avoid gcc core2 bug
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
X-List-Received-Date: Wed, 16 Mar 2011 22:34:47 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



On 03/16/2011 03:09 PM, Darren Hart wrote:
> On 03/16/2011 02:49 PM, Darren Hart wrote:
>>
>> Fixes [YOCTO #853]
>>
>> Without these added optimization flags, the matchbox-panel (and
>> possibly other)
>> applications would segfault. This patch applies the change only to the
>> gtk+
>> recipe for the n450 bsp.
>>
>> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
>> CC: Ke Yu<ke.yu@intel.com>
>> ---
>> meta-n450/recipes-gnome/gtk+/gtk+_2.22.1.bbappend | 2 ++
>> 1 files changed, 2 insertions(+), 0 deletions(-)
>> create mode 100644 meta-n450/recipes-gnome/gtk+/gtk+_2.22.1.bbappend
>>
>> diff --git a/meta-n450/recipes-gnome/gtk+/gtk+_2.22.1.bbappend
>> b/meta-n450/recipes-gnome/gtk+/gtk+_2.22.1.bbappend
>> new file mode 100644
>> index 0000000..3af4187
>> --- /dev/null
>> +++ b/meta-n450/recipes-gnome/gtk+/gtk+_2.22.1.bbappend
>> @@ -0,0 +1,2 @@
>> +#-fomit-frame-pointer in default FULL_OPTIMIZATION will cause
>> matchbox-panel segfault on n450
>> +FULL_OPTIMIZATION_n450 = "-fexpensive-optimizations
>> -frename-registers -O2 -ggdb -feliminate-unused-debug-types"
>
>
> Note that this patch only addresses the problem for the n450, and it
> would remain on the atom-pc. If we don't want to take Patch B, then we
> would need another solution for atom-pc. The only thing that comes to
> mind would be to add the above to the core gtk+ recipe in the form:
>
> #-fomit-frame-pointer in default FULL_OPTIMIZATION will cause
> matchbox-panel segfault on atom-pc
> FULL_OPTIMIZATION_atom-pc = "-fexpensive-optimizations
> -frename-registers -O2 -ggdb -feliminate-unused-debug-types"

Guess I should have looked at the recipe first :-) It already does this. 
I'll push the n450 patch per Saul's preference of minimal change.

--
Darren

>
>
> Thoughts?
>

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

