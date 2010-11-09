Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4063C4C80815
	for <poky@yoctoproject.org>; Mon,  8 Nov 2010 18:34:01 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 08 Nov 2010 16:34:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,172,1288594800"; d="scan'208";a="675561742"
Received: from unknown (HELO [10.255.13.55]) ([10.255.13.55])
	by orsmga001.jf.intel.com with ESMTP; 08 Nov 2010 16:34:00 -0800
Message-ID: <4CD896F7.2000603@intel.com>
Date: Mon, 08 Nov 2010 16:33:59 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1289057313.git.dvhart@linux.intel.com>
	<4CD6C358.8010907@linux.intel.com> <4CD782A9.8080201@windriver.com>
	<4CD81E51.1040304@linux.intel.com>
In-Reply-To: <4CD81E51.1040304@linux.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Tue, 09 Nov 2010 00:34:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/08/2010 07:59 AM, Darren Hart wrote:
> On 11/07/2010 08:55 PM, Bruce Ashfield wrote:
>> On 10-11-07 10:18 AM, Darren Hart wrote:
>>> On 11/06/2010 11:28 AM, Darren Hart wrote:
>>>> The following patches replace the existing create-pull-request script
>>>> and create
>>>> a new send-pull-request. See 2/3 for details on the motivation and
>>>> functionality
>>>> of the new create-pull-request script.
>>>
>>> Thinking about this, I realized that the script would be usefull for
>>> just sending patches as well (for developers without a contrib branch).
>>> Perhaps the scripts should not contain "pull" in their name and the
>>> remote git branch as well as the hosting site should be both optional
>>> and configurable. These are relatively trivial changes which we could
>>> address in a subsequent series if people agree that this initial set is
>>> the right approach for our project.
>>
>> I saw these in action at the LPC, and I like the two
>> phase approach here. Since it gives a chance to edit/update
>> review before sending, and like 'git mailinfo' it creates
>> the parts you need and doesn't actually do anything
>> without a second command :)
>>
>> Having the patches via email is key for me, so I'm glad
>> to see that in place. Do we assume that discretion will
>> be used and we don't need a throttle/limit on the patches ?
>> But then again, thinking about it, 200+ patch dumps
>> to go lkml without the world ending (and it shouldn't
>> really be common here) so this probably isn't an issue.
>
> I thought a bit about ensuring proper ordering (I've made scripts wait 5
> seconds between patches before). As for abuse... well, I think it is
> unlikely - if someone wants to abuse the list, there are innumerable
> ways to go about it, this being one of the least efficient ;-)
>
I think we also need a way to only send the initial email (and not the 
patches) since I work with the team to pull together multiple patches 
that are already on the list and re-send the request to the Yocto alias, 
I don't want to flood the list with duplicate match info.

Also on a minor nit note: can you change the Branch to include contrib/ 
that way it can be a cut and paste for doing some of the local git 
operations.

>>
>> So definitely acked-by me.
>>
>
> Excellent - and this brings up a point I wanted to discuss. One of the
> stated reasons for doing this was to facilitate peer review. Now that I
> have Bruce's Acked-by:, I could reword the commit messages to include
> them, or Richard could add them when he does the pull, but I do think
> they should be present in the final commits to poky proper.
>
I am not sure we need to get into updating the patch or commit messages 
with Acked-by lines, the email archives should suffice.

Sau!


> Richard - how would you like to see that done? My suggestion would be
> that if you accept these as they are, that you append Bruce's Acked-by
> and your Signed-off-by. If I end up having to take another pass and send
> a V2 pull request, I could confirm Bruce still agrees (in a side
> channel) and add his Acked-by.
>
> Thanks,
>


