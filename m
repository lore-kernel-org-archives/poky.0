Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3445BE006BA
	for <poky@yoctoproject.org>; Tue, 22 Nov 2011 13:44:41 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 22 Nov 2011 13:44:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,555,1315206000"; d="scan'208";a="94255779"
Received: from unknown (HELO [10.255.12.38]) ([10.255.12.38])
	by fmsmga002.fm.intel.com with ESMTP; 22 Nov 2011 13:44:23 -0800
Message-ID: <4ECC17B7.2030503@linux.intel.com>
Date: Tue, 22 Nov 2011 13:44:23 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:8.0) Gecko/20111115 Thunderbird/8.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <cover.1321402302.git.josh@linux.intel.com>
	<7c8386ea75beeecb76ba507a6d42cc78a23758e6.1321402302.git.josh@linux.intel.com>
	<1321961328.18926.54.camel@ted>
In-Reply-To: <1321961328.18926.54.camel@ted>
Cc: poky@yoctoproject.org
Subject: Re: [RFC PATCH 1/1] clutter: drop unneeded bbappends
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
X-List-Received-Date: Tue, 22 Nov 2011 21:44:41 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 22/11/11 03:28, Richard Purdie wrote:
> On Tue, 2011-11-15 at 16:16 -0800, Joshua Lock wrote:
>> The --with-flavour-glx option is the default in clutter.inc now
>>
>> Signed-off-by: Joshua Lock<josh@linux.intel.com>
>> ---
>>   .../clutter/clutter-1.6_1.6.18.bbappend            |    4 ----
>>   .../clutter/clutter-1.8_1.8.0.bbappend             |    4 ----
>>   .../recipes-graphics/clutter/clutter_git.bbappend  |    4 ----
>>   3 files changed, 0 insertions(+), 12 deletions(-)
>>   delete mode 100644 meta-yocto/recipes-graphics/clutter/clutter-1.6_1.6.18.bbappend
>>   delete mode 100644 meta-yocto/recipes-graphics/clutter/clutter-1.8_1.8.0.bbappend
>>   delete mode 100644 meta-yocto/recipes-graphics/clutter/clutter_git.bbappend
>>
>> diff --git a/meta-yocto/recipes-graphics/clutter/clutter-1.6_1.6.18.bbappend b/meta-yocto/recipes-graphics/clutter/clutter-1.6_1.6.18.bbappend
>> deleted file mode 100644
>> index c7cc683..0000000
>> --- a/meta-yocto/recipes-graphics/clutter/clutter-1.6_1.6.18.bbappend
>> +++ /dev/null
>> @@ -1,4 +0,0 @@
>> -DEPENDS_atom-pc = "${STDDEPENDS} virtual/xserver-xf86 virtual/libgl"
>> -EXTRA_OECONF_atom-pc = "${BASE_CONF} --with-flavour=glx"
>> -PACKAGE_ARCH_atom-pc = "${MACHINE_ARCH}"
>
>
> I'm fine with this but one question - is the virtual/xserver dependency
> still needed? If so we should add it to .inc. I'm in favour of merging
> this patch though.

My git fu is failing me so I've not been able to work out why 
virtual/xserver was added to the DEPENDS for atom-pc. I suspect it's not 
needed, though - I've been able to build clutter-1.8 for atom-pc in a 
clean TMPDIR without virtual/xserver in DEPENDS (though I have found a 
fix for cogl - expect it soon).

Cheers,
Joshua
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

