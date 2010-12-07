Return-Path: <scott.a.garman@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0C2DA4C811D0
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 12:54:23 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 07 Dec 2010 10:54:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,311,1288594800"; d="scan'208";a="865555076"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by fmsmga001.fm.intel.com with ESMTP; 07 Dec 2010 10:54:23 -0800
Received: from [10.255.13.43] (10.255.13.43) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Tue, 7 Dec 2010 11:54:22 -0700
Message-ID: <4CFE82DC.5020608@intel.com>
Date: Tue, 7 Dec 2010 10:54:20 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <4CFD94DD.7010906@intel.com> <4CFE7269.4000507@intel.com>
	<1291747386.9405.3.camel@scimitar>
In-Reply-To: <1291747386.9405.3.camel@scimitar>
Subject: Re: Master Stability
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
X-List-Received-Date: Tue, 07 Dec 2010 18:54:24 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/07/2010 10:43 AM, Joshua Lock wrote:
> On Tue, 2010-12-07 at 09:44 -0800, Elizabeth Flanagan wrote:
>> Acked-by: Beth Flanagan
>>
>> (Stands on build engineer soap box)
>>
>> If at all possible, when you try to verify a fix, do a full clean build
>> for more than just one arch using BB_NUMBER_THREADS and PARALLEL_MAKE.
>> With the number of pull requests coming through, it becomes more and
>> more vital to verify patches prior to sending them out.
>>
>> Preferably, I'd like to start seeing people add something like a
>> Verified-with:<build target>  tag to pull requests, so we can at least
>> identify pulls that need more peer review than normal.
>
> Personally I'd like to see links to an autobuilder report showing it has
> succeeded and if such a tag is *not* on a pull request it's
> automatically pushed to an autobuilder instance with the success of the
> build sent back to the list as a reply to the patch thread.
>
> I think hardware constraints make this a bit of a pipe dream though?

We're definitely hardware constrained for it. I want a pony also. ;)

Beth has started working on customizing Buildbot's web interface to 
allow finer-grained control over what gets built. A longer-range goal of 
this is eventually be able to pick which targets and architectures get 
built from a custom autobuilder buildset. That way someone with a commit 
to quilt (which has very few dependencies) wouldn't have to build all of 
poky-image-sato to demonstrate their build works. With something like 
that in place, we can start to consider having individual developers 
test their changes on our autobuilder infrastructure. Which would kick ass.

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

