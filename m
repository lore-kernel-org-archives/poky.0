Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7F41C4C80050
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 21:46:31 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 06 Dec 2010 19:46:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,308,1288594800"; d="scan'208";a="581216983"
Received: from unknown (HELO [10.255.13.18]) ([10.255.13.18])
	by orsmga002.jf.intel.com with ESMTP; 06 Dec 2010 19:46:30 -0800
Message-ID: <4CFDAE16.3030703@linux.intel.com>
Date: Mon, 06 Dec 2010 19:46:30 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <4CFD6EFA.8050503@linux.intel.com> <4CFD8581.5080106@windriver.com>
In-Reply-To: <4CFD8581.5080106@windriver.com>
Cc: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>, poky@yoctoproject.org
Subject: Re: Proper recipe naming and PV definition
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
X-List-Received-Date: Tue, 07 Dec 2010 03:46:31 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/06/2010 04:53 PM, Bruce Ashfield wrote:
> On 10-12-06 6:17 PM, Darren Hart wrote:
>> I'm having trouble determining what the best practice is for naming a
>> linux kernel recipe.
>>
>> The meta-linaro layer contains a linux-linaro recipe, and eventually I'd
>> like it to contain two. One for the stable kernel and one for the
>> development kernel. These are currently 2.6.35 and 2.6.37 respectively.
>> I currently have:
>>
>> linux-linaro-2.6.35_git.bb
>> PV=2.6.35
>>
>> This results in directory names in the build tree like:
>> linux-linaro-2.6.36_2.6.35 (or similar, with the version duplicated). As
>> I understand it, the PV _must_ contain a standard Linux kernel version
>> along the lines of 2.6.[0-9]+-* (and parsing fails without it).
>>
>> In order to both track the version and distinguish between stable and
>> dev, would something like the following be appropriate? This also
>> replaces _git with _KERNELVER (as proposed by Marcin).
>>
>> linux-linaro-stable_2.6.35.bb
>> PV=2.6.35+git${SRCREV}
>>
>> linux-linaro-dev_2.6.37.bb
>> PV=2.6.37+git${SRCREV}
>
> For me the _git is not negotiable. It is the indication of
> the source of the package. One of the main points about building
> from an upstream git source is that we can bump it via the
> SRCREV and leave the recipe alone.
>
> I'm going to continue using this:
>
> PV = "${LINUX_VERSION}+git${SRCPV}"

You have SRCPV here - I believe you intended SRCREV - correct?

If so, then your PV looks the same as mine above. The place where I 
replaced the _git was in the filename of the recipe. It still isn't 
clear to me what the _VERSION part of recipe-name_VERSION.bb is meant to 
indicate or how exactly it is used. It clearly isn't the exact and 
complete version of the source, that is what PE.PV is for, and PR 
identifies the recipe version (for lack of a better description).

For linux-yocto, _git is not actually very descriptive, while 
linux-yocto_2.6.34 and linux-yocto_2.6.37 are (there are two git trees - 
so "_git" doesn't tell the user much about where the source comes from). 
Whether the backing sourcecode source is a tarball, a git tree, or 
something else entirely is, IMO, an implementation detail which is 
adequately described by the PV we have agreed on above. This is used in 
the directory name of the build and IIRC in the messages printed to the 
console and logs, so the package and it's source should remain clear.

I do appreciate the value of -stable and -dev naming which don't have to 
change just because the underlying version changed - although I can see 
the argument that being forced to change when the version changes makes 
the change obvious to all users - which can be valuable.

A few more iterations on this and I think we'll have something :-)

-- 
Darren Hart
Yocto Linux Kernel

