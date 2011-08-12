Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6DAFE011B6
	for <poky@yoctoproject.org>; Thu, 11 Aug 2011 17:51:55 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7C0q23L020909
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 11 Aug 2011 17:52:02 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.18.204) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Thu, 11 Aug 2011 17:52:02 -0700
Message-ID: <4E44792F.5000402@windriver.com>
Date: Thu, 11 Aug 2011 20:51:59 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.7; en-US;
	rv:1.9.2.20) Gecko/20110804 Thunderbird/3.1.12
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <cover.1313090099.git.bruce.ashfield@windriver.com>	
	<606861a92864cb728203fdf5db286d684d2537eb.1313090099.git.bruce.ashfield@windriver.com>
	<1313106445.14274.478.camel@rex>
In-Reply-To: <1313106445.14274.478.camel@rex>
Cc: poky@yoctoproject.org, Liming Wang <liming.wang@windriver.com>,
	saul.wold@intel.com
Subject: Re: [PATCH 1/1] meta-yocto: remove apm from beagleboard MACHINE_FEATURES
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
X-List-Received-Date: Fri, 12 Aug 2011 00:51:56 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-08-11 7:47 PM, Richard Purdie wrote:
> On Thu, 2011-08-11 at 15:16 -0400, Bruce Ashfield wrote:
>> Fixes [YOCTO: #916]
>>
>> apm is not something that we require in our yocto reference beagleboard
>> BSP. It currently is listed in the MACHINE_FEATURES for the board, which
>> leads to the runtime message:
>>
>>    Starting advanced power management daemon: No APM support in kernel
>>
>> Since "/proc/apm" is not present. The board config we are targeting does
>> not have the hardware to back this, so adding the emulation support
>> wouldn't yield useful data. We'll leave this extended functionality for
>> other more appropriate beagleboard configs.
>
> On arm it used to be the case that this was the only way to expose user
> interface to suspend/resume the machine. Its not so much about their
> being hardware present for it as the whole kernel side was emulation of
> the user space notification part.
>
> Has something changed in recent kernels in this area?

I won't claim to be an expert here .. but I haven't used apmd
on many machines in quite a while. Assuming suspend_ops is
implemented, it is typically just something ike this:

  echo mem > /sys/power/state

    or

  echo standby > /sys/power/state

With a wakeup via the rtc, or whatever the board offers. I'm
cc'ing Liming on this, since he's been poking at the board recently
and may have more hands on information to share.

If we ARE removing this capability, then we'll take the other option
that we had for this case and enable the emulation.

Cheers,

Bruce




>
> Cheers,
>
> Richard
>
>
>


