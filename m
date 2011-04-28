Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B495A4C80337
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 19:56:13 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 27 Apr 2011 17:56:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,277,1301900400"; d="scan'208";a="739431656"
Received: from unknown (HELO [10.255.13.18]) ([10.255.13.18])
	by orsmga001.jf.intel.com with ESMTP; 27 Apr 2011 17:56:12 -0700
Message-ID: <4DB8BB2C.8040704@intel.com>
Date: Wed, 27 Apr 2011 17:56:12 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1303257574.git.dvhart@linux.intel.com>	<1303262313.5518.295.camel@rex>
	<4DB8A220.6040806@linux.intel.com>
In-Reply-To: <4DB8A220.6040806@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] kernel-rt: fix build issues
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
X-List-Received-Date: Thu, 28 Apr 2011 00:56:14 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/27/2011 04:09 PM, Darren Hart wrote:
>
>
> On 04/19/2011 06:18 PM, Richard Purdie wrote:
>> On Tue, 2011-04-19 at 17:02 -0700, Darren Hart wrote:
>>> From: Darren Hart<dvhart@linux.intel.com>
>>>
>>> The linux-yocto-rt recipe wasn't building in master or bernard. This brings the
>>> recipe up to date with the linux-yocto* recipes and corrects the build failures.
>>> This patch should be applied to both bernard and master.
>>>
>>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>>>    Branch: dvhart/bernard/rt
>>>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/bernard/rt
>>>
>>> Thanks,
>>>      Darren Hart<dvhart@linux.intel.com>
>>> ---
>>>
>>>
>>> Darren Hart (1):
>>>    kernel-rt: use correct branch names and new git SRC_REV format
>>
>> Merged to master, thanks.
>
> Can we also merge to Bernard please? Without it, meta-rt will not build.
>
Staged into the stage/bernard area.

Sau!

> --
> Darren
>
>>
>> Richard
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>


