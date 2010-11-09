Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id AD7A74C80FA8
	for <poky@yoctoproject.org>; Tue,  9 Nov 2010 00:45:51 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 08 Nov 2010 22:45:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,173,1288594800"; d="scan'208";a="346301586"
Received: from unknown (HELO [10.255.12.238]) ([10.255.12.238])
	by azsmga001.ch.intel.com with ESMTP; 08 Nov 2010 22:45:50 -0800
Message-ID: <4CD8EE1C.7060701@linux.intel.com>
Date: Mon, 08 Nov 2010 22:45:48 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: Saul Wold <saul.wold@intel.com>
References: <cover.1289057313.git.dvhart@linux.intel.com>
	<4CD6C358.8010907@linux.intel.com> <4CD782A9.8080201@windriver.com>
	<4CD81E51.1040304@linux.intel.com> <4CD896F7.2000603@intel.com>
In-Reply-To: <4CD896F7.2000603@intel.com>
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
X-List-Received-Date: Tue, 09 Nov 2010 06:45:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/08/2010 04:33 PM, Saul Wold wrote:
> On 11/08/2010 07:59 AM, Darren Hart wrote:

Hey Saul,

Thanks for the review!

> I think we also need a way to only send the initial email (and not the
> patches) since I work with the team to pull together multiple patches
> that are already on the list and re-send the request to the Yocto alias,
> I don't want to flood the list with duplicate match info.

This is really no different that it was originally. Just load the 
0000-cover-letter.txt into your favorite MUA and send away. 
Alternatively, you can just delete the other messages and use 
send-pull-request.sh.

I'd rather not make an option that makes it easy for people to not send 
the patches, as it may become the norm (as that is the habit people are 
already in). Will one of the options I mentioned work for you?

>
> Also on a minor nit note: can you change the Branch to include contrib/
> that way it can be a cut and paste for doing some of the local git
> operations.

The name "contrib" is user defined and cannot be relied upon to be the 
same on every system. The branch is relative to the poky-contrib.git 
repository, prepending "contrib" wouldn't be accurate.


>> Excellent - and this brings up a point I wanted to discuss. One of the
>> stated reasons for doing this was to facilitate peer review. Now that I
>> have Bruce's Acked-by:, I could reword the commit messages to include
>> them, or Richard could add them when he does the pull, but I do think
>> they should be present in the final commits to poky proper.
>>
> I am not sure we need to get into updating the patch or commit messages
> with Acked-by lines, the email archives should suffice.

It can be difficult to map commits to email threads, and when the ack 
occurs elsewhere, the history is completely lost. We don't need to track 
every "I like this patch", but I believe it is good practice to track 
key Acks from key reviewers.

Thanks,

-- 
Darren Hart
Embedded Linux Kernel

