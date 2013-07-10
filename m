Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED104E00722
	for <poky@yoctoproject.org>; Wed, 10 Jul 2013 12:58:52 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 10 Jul 2013 12:56:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,1038,1363158000"; d="scan'208";a="343547389"
Received: from unknown (HELO [10.255.13.73]) ([10.255.13.73])
	by orsmga001.jf.intel.com with ESMTP; 10 Jul 2013 12:58:27 -0700
Message-ID: <51DDBCE3.6000502@linux.intel.com>
Date: Wed, 10 Jul 2013 12:58:27 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130514 Thunderbird/17.0.6
MIME-Version: 1.0
To: ChenQi <Qi.Chen@windriver.com>
References: <cover.1373438138.git.Qi.Chen@windriver.com>
	<9915990f3fb2466fb2146394f65154e21b35890d.1373438138.git.Qi.Chen@windriver.com>
	<5822283.x6sXiXjJIc@helios> <51DD2574.7060608@windriver.com>
	<1373477607.3028.45.camel@envy.home>
In-Reply-To: <1373477607.3028.45.camel@envy.home>
Cc: qingtao.cao@windriver.com, Paul Eggleton <paul.eggleton@linux.intel.com>,
	Darren Hart <dvhart@linux.intel.com>, poky@yoctoproject.org
Subject: Re: [PATCH 1/2] poky-tiny.conf: add extra libc features
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
X-List-Received-Date: Wed, 10 Jul 2013 19:58:55 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/10/2013 10:33 AM, Darren Hart wrote:
> On Wed, 2013-07-10 at 17:12 +0800, ChenQi wrote:
>> On 07/10/2013 04:30 PM, Paul Eggleton wrote:
>>> Hi Qi / Darren,
>>>
>>> On Wednesday 10 July 2013 14:37:12 Qi.Chen@windriver.com wrote:
>>>> From: Chen Qi <Qi.Chen@windriver.com>
>>>>
>>>> Add two extra libc features, libc-spawn and libc-rcmd, as they are
>>>> needed to successfully compile the shadow package which is needed
>>>> if we set USER_GROUP_SETTIGNS in some configuration file.
>>>>
>>>> [YOCTO #4074]
>>>>
>>>> Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
>
> I maintain poky-tiny, please Cc me on patches:
>
> Cc: Darren Hart <dvhart@linux.intel.com>
>
>>>> ---
>>>>    meta-yocto/conf/distro/poky-tiny.conf |    2 +-
>>>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> diff --git a/meta-yocto/conf/distro/poky-tiny.conf
>>>> b/meta-yocto/conf/distro/poky-tiny.conf index 755667f..9d9ea3c 100644
>>>> --- a/meta-yocto/conf/distro/poky-tiny.conf
>>>> +++ b/meta-yocto/conf/distro/poky-tiny.conf
>>>> @@ -62,7 +62,7 @@ ASSUME_PROVIDED += "pkgconfig$"
>>>>
>>>>    # Reconfigure eglibc for a smaller installation
>>>>    # Comment out any of the lines below to disable them in the build
>>>> -DISTRO_FEATURES_LIBC_TINY = "libc-libm libc-crypt"
>>>> +DISTRO_FEATURES_LIBC_TINY = "libc-libm libc-crypt libc-spawn libc-rcmd"
>>>>    DISTRO_FEATURES_LIBC_TINY_append_x86-64 = " libc-libm-big"
>>>>
>>>>    # Required for "who"
>>> Is this really appropriate for poky-tiny? It seems to me it might be
>>> orthogonal to the point of poky-tiny which is to be pretty much as light as
>>> possible.
>>>
>
> All such changes should include size delta...
>
>>> Cheers,
>>> Paul
>>>
>> I added these two extra libc features because I wanted
>> USER_GROUP_SETTINGS to have effect for poky-tiny.
>>
>> For now, because of lack of libc features, adding packages to poky-tiny
>> is likely to fail.
>> So the question here is, are we deciding that poky-tiny equals to
>> 'limited-featured libc + tiny init + busybox"? If so, maybe we need to a
>> mechanism to warn user when they try to add packages to poky-tiny.
>
> poky-tiny is meant to be a starting point, typically the approach is to
> create your own distro either derived from or copied and modified from
> poky-tiny. poky-tiny should remain a bare minimum, in fact, it should
> probably be made smaller, not larger.
>
>>
>> Besides, removing the libc features doesn't seem to have significant
>> effects on the size of the image.
>>
>> chenqi@pek-qchen1-d1:~/poky$ ls -lh
>> build-tiny/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs/lib/libc-2.17.so
>>
>> -rwxr-xr-x 1 chenqi chenqi 1.1M Jul 10 13:49
>> build-tiny/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs/lib/libc-2.17.so
>> chenqi@pek-qchen1-d1:~/poky$ ls -lh
>> build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs/lib/libc-2.17.so
>>
>> -rwxr-xr-x 1 chenqi chenqi 1.5M Jul  3 11:23
>> build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/rootfs/lib/libc-2.17.so
>>
>
> Am I reading that right? 400k? That's *very* significant when we're
> building sub 5MB images (including the kernel).
>
> Please use "size" instead of "ls -lh" to get a more accurate
> representation of the space usage. From my Fedora laptop by way of
> example:
>
> $ size libc-2.17.so
>     text	   data	    bss	    dec	    hex	filename
> 1788428	  20840	  18944	1828212	 1be574	libc-2.17.so
>

I am going to NAK this change regardless of the size, I don't think this 
is the right direction.

Sau!

>
> Thanks,
>

