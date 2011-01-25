Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id BC81C4C8085F
	for <poky@yoctoproject.org>; Tue, 25 Jan 2011 11:19:56 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 25 Jan 2011 09:19:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,375,1291622400"; d="scan'208";a="596327486"
Received: from unknown (HELO [10.255.14.118]) ([10.255.14.118])
	by orsmga002.jf.intel.com with ESMTP; 25 Jan 2011 09:19:56 -0800
Message-ID: <4D3F063B.7070707@intel.com>
Date: Tue, 25 Jan 2011 09:19:55 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <1295958916.5641.8.camel@scimitar>	<4D3EF134.3030803@linux.intel.com>
	<1295971229.21832.1.camel@scimitar>
In-Reply-To: <1295971229.21832.1.camel@scimitar>
Subject: Re: Please ensure you are using layout variables in recipes
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
X-List-Received-Date: Tue, 25 Jan 2011 17:19:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/25/2011 08:00 AM, Joshua Lock wrote:
> On Tue, 2011-01-25 at 07:50 -0800, Darren Hart wrote:
>> On 01/25/2011 04:35 AM, Joshua Lock wrote:
>>> Hi all,
>>>
>>> When creating/editing recipes can we please ensure consistent use of
>>> layout variables, rather than absolute paths.
>>
>> Hi Josh,
>>
>> When I was putting together the mediatomb scripts I remember running
>> into this. We typically have to write custom init scripts, for example,
>> in order to deal with this as well as some other subtleties and
>> assumptions made by the package init author. In these cases, it would be
>> really useful to have a layer skeleton, which also included skeleton
>> recipes, images, etc. All commented, complete with documentation links
>> to aid people through the process. Seeing it all together in final form
>> would go a long way to helping people get it right the first (or maybe
>> the second) time. I've discussed this with Saul as well, maybe something
>> we need to get on the schedule?
>
> I was just proposing something similar. Of course all of our metadata
> should meet the same high standards but it would make sense to have
> somewhere to point at as the canonical example.
>
> Scheduling time to work providing example definitely gets my backing.
>
This is still on my radar, and was partly what I was thinking about this 
for my talk.  I have been thinking about a Yocto Metadata Philosophy, 
that shares our update vision (based on some of the recent input) along 
with layer/recipe implementation and examples. We can add to this init 
scripts and other examples of commonly modified files.

Sau!

> Cheers,
> Joshua


