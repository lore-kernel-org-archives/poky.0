Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 454FD4C80815
	for <poky@yoctoproject.org>; Mon,  8 Nov 2010 09:59:15 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 08 Nov 2010 07:59:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,314,1286175600"; d="scan'208";a="345958999"
Received: from unknown (HELO [10.255.12.208]) ([10.255.12.208])
	by azsmga001.ch.intel.com with ESMTP; 08 Nov 2010 07:59:13 -0800
Message-ID: <4CD81E51.1040304@linux.intel.com>
Date: Mon, 08 Nov 2010 07:59:13 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <cover.1289057313.git.dvhart@linux.intel.com>
	<4CD6C358.8010907@linux.intel.com> <4CD782A9.8080201@windriver.com>
In-Reply-To: <4CD782A9.8080201@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3] git-pull: new pull request generation and sending scripts
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
X-List-Received-Date: Mon, 08 Nov 2010 15:59:15 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/07/2010 08:55 PM, Bruce Ashfield wrote:
> On 10-11-07 10:18 AM, Darren Hart wrote:
>> On 11/06/2010 11:28 AM, Darren Hart wrote:
>>> The following patches replace the existing create-pull-request script
>>> and create
>>> a new send-pull-request. See 2/3 for details on the motivation and
>>> functionality
>>> of the new create-pull-request script.
>>
>> Thinking about this, I realized that the script would be usefull for
>> just sending patches as well (for developers without a contrib branch).
>> Perhaps the scripts should not contain "pull" in their name and the
>> remote git branch as well as the hosting site should be both optional
>> and configurable. These are relatively trivial changes which we could
>> address in a subsequent series if people agree that this initial set is
>> the right approach for our project.
>
> I saw these in action at the LPC, and I like the two
> phase approach here. Since it gives a chance to edit/update
> review before sending, and like 'git mailinfo' it creates
> the parts you need and doesn't actually do anything
> without a second command :)
>
> Having the patches via email is key for me, so I'm glad
> to see that in place. Do we assume that discretion will
> be used and we don't need a throttle/limit on the patches ?
> But then again, thinking about it, 200+ patch dumps
> to go lkml without the world ending (and it shouldn't
> really be common here) so this probably isn't an issue.

I thought a bit about ensuring proper ordering (I've made scripts wait 5 
seconds between patches before). As for abuse... well, I think it is 
unlikely - if someone wants to abuse the list, there are innumerable 
ways to go about it, this being one of the least efficient ;-)

>
> So definitely acked-by me.
>

Excellent - and this brings up a point I wanted to discuss. One of the 
stated reasons for doing this was to facilitate peer review. Now that I 
have Bruce's Acked-by:, I could reword the commit messages to include 
them, or Richard could add them when he does the pull, but I do think 
they should be present in the final commits to poky proper.

Richard - how would you like to see that done? My suggestion would be 
that if you accept these as they are, that you append Bruce's Acked-by 
and your Signed-off-by. If I end up having to take another pass and send 
a V2 pull request, I could confirm Bruce still agrees (in a side 
channel) and add his Acked-by.

Thanks,

-- 
Darren Hart
Embedded Linux Kernel

