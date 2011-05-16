Return-Path: <scott.a.garman@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2B4B84C80334
	for <poky@yoctoproject.org>; Mon, 16 May 2011 11:58:37 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 16 May 2011 09:58:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,375,1301900400"; 
   d="scan'208";a="2353658"
Received: from unknown (HELO [10.255.12.130]) ([10.255.12.130])
	by fmsmga002.fm.intel.com with ESMTP; 16 May 2011 09:58:36 -0700
Message-ID: <4DD157BC.6050506@intel.com>
Date: Mon, 16 May 2011 09:58:36 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4DD10B56.1060700@mlbassoc.com> <4DD1524C.9020305@intel.com>
	<4DD15593.5030400@mlbassoc.com>
In-Reply-To: <4DD15593.5030400@mlbassoc.com>
Subject: Re: [PATCH resend] Kernel command line options for runqemu
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
X-List-Received-Date: Mon, 16 May 2011 16:58:37 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/16/2011 09:49 AM, Gary Thomas wrote:
> On 05/16/2011 10:35 AM, Saul Wold wrote:
>> On 05/16/2011 04:32 AM, Gary Thomas wrote:
>>> This patch lets the user add options to the kernel command line when
>>> started via runqemu. Very useful for things like 'psplash=false'
>>>
>>>
>>>
>>> _______________________________________________
>>> poky mailing list
>>> poky@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/poky
>>
>> Gary,
>>
>> This is a reasonable idea, but it exposes an internal variable that
>> might change in the future, so am I hesitant to take this.
>
> Without it, the only way to change the kernel command line is by
> editing the script, which doesn't seem very friendly.
>
> Would you feel better if it were a special variable, just for
> this purpose, which is by default empty? I was just using the
> infrastructure that was already in place.

Hi Gary,

I believe this is being tracked with bug #1019:

http://bugzilla.pokylinux.org/show_bug.cgi?id=1019

I do not have an ETA on this except for "before 1.1". Your workaround 
could be used in the meantime.

I haven't given any thought to creating an environment variable "API" to 
the script, so I'm not comfortable taking the patch currently.

As a temporary workaround, you could use the patch locally.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

