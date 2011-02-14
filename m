Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 354DC4C80093
	for <poky@lists.pokylinux.org>; Mon, 14 Feb 2011 11:04:12 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 14 Feb 2011 09:04:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,469,1291622400"; d="scan'208";a="388554860"
Received: from unknown (HELO [10.255.14.142]) ([10.255.14.142])
	by azsmga001.ch.intel.com with ESMTP; 14 Feb 2011 09:04:07 -0800
Message-ID: <4D59608C.4090203@linux.intel.com>
Date: Mon, 14 Feb 2011 09:04:12 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4D55A061.8040901@mlbassoc.com>
	<1297461009.3188.4.camel@elmorro>	<AANLkTinBo5qKwAPcCP2+MbgZ-CzCoDuO_HT-KB3+AwtK@mail.gmail.com>
	<4D55B94E.9070700@mlbassoc.com>
In-Reply-To: <4D55B94E.9070700@mlbassoc.com>
Cc: Poky <poky@lists.pokylinux.org>, Chris Larson <clarson@kergoth.com>
Subject: Re: Useless syslogd
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
X-List-Received-Date: Mon, 14 Feb 2011 17:04:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/11/2011 02:33 PM, Gary Thomas wrote:
> On 02/11/2011 03:27 PM, Chris Larson wrote:
>> On Fri, Feb 11, 2011 at 2:50 PM, Tom Zanussi<tom.zanussi@intel.com>
>> wrote:
>>> On Fri, 2011-02-11 at 12:47 -0800, Gary Thomas wrote:
>>>> ... at least out of the box.
>>>>
>>>> It seems that syslog is configured to store its messages in
>>>> a buffer (memory only?) by default:
>>>>
>>>> $ cat meta/recipes-core/busybox/files/syslog.conf
>>>> DESTINATION="buffer" # log destinations (buffer file remote)
>>>> ...
>>>>
>>>> This doesn't seem very useful to me. I know I can override this
>>>> in my platform recipes, but I was just wondering what's the
>>>> rationale? Would it not make more sense to chose DESTINATION="file"?
>>>> Otherwise, where do the messages go? How can I see them?
>>>>
>>>
>>> I think 'logread' is hooked up to read from the buffer, but it seems to
>>> be broken at the moment...
>>
>> logread is indeed the way to access the circular buffer, though it
>> does seem like operating against a file would be more consistent -- I
>> think the original logic was that most of the targeted devices didn't
>> have a writable area to put the logs, other than flash, if that, but
>> using tmpfs seems just as good a solution and the logs can be read in
>> a more traditional fashion..
>
> Indeed. I hacked it before(*) so that /var/log could be ramdisk
> and then rotate the logs to FLASH periodically. Sadly, this
> isn't supported out of the box (at least busybox's logrotate
> insists on keeping the rotated files in /var/log), but I think
> it's the best of both worlds.
>
> (*) using an ad-hoc logrotate that could have the rotated files
> end up in a directory other than /var/log
>

I think this is a good idea, but I don't know that anyone will have the 
time to jump on it right now. May I suggest you open a bug / feature 
enhancement so we don't lose track of this?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

