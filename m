Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5777C4C800A5
	for <poky@lists.pokylinux.org>; Wed,  2 Feb 2011 11:40:58 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 02 Feb 2011 09:40:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,414,1291622400"; d="scan'208";a="883683422"
Received: from unknown (HELO [10.255.14.170]) ([10.255.14.170])
	by fmsmga001.fm.intel.com with ESMTP; 02 Feb 2011 09:40:55 -0800
Message-ID: <4D499729.5010809@linux.intel.com>
Date: Wed, 02 Feb 2011 09:40:57 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Mark Hatle <mark.hatle@windriver.com>
References: <4D497242.2000409@mlbassoc.com>	<AANLkTik21AK9-kuM78JU8=GHYmPNCOJobM3_VK1BY+V3@mail.gmail.com>
	<4D49758C.30109@windriver.com>
In-Reply-To: <4D49758C.30109@windriver.com>
Cc: Poky <poky@lists.pokylinux.org>, Chris Larson <clarson@kergoth.com>
Subject: Re: PR and .bbappend
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
X-List-Received-Date: Wed, 02 Feb 2011 17:40:58 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/02/2011 07:17 AM, Mark Hatle wrote:
> On 2/2/11 9:13 AM, Chris Larson wrote:
>> On Wed, Feb 2, 2011 at 8:03 AM, Gary Thomas<gary@mlbassoc.com>  wrote:
>>> Should .bbappend files have a PR in them?  If so, must it
>>> match the one in the main .bb file?
>>
>> All metadata in a .bbappend is essentially concatenated to the recipe.
>>   If you define PR in the .bbappend, it will override the one in the
>> recipe, which is unlikely what you want, as that loses information.
>> The better route is to do something like PR .= ".1" in the .bbappend,
>> and bump that when changing the bbappend file.
>
> I was going to suggest the same thing.  A good approach is to append a value to
> the existing PR.  (I suggest this get added as a best practice in the
> documentation on bbappend...  I'm not sure who the correct person is to point
> this out to though.)

That would be Scott R, on CC.

>
> --Mark
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

