Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9965A4C80A74
	for <poky@yoctoproject.org>; Mon,  6 Dec 2010 17:59:39 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 06 Dec 2010 15:59:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,307,1288594800"; d="scan'208";a="581164843"
Received: from doubt.jf.intel.com (HELO [10.24.142.240]) ([10.24.142.240])
	by orsmga002.jf.intel.com with ESMTP; 06 Dec 2010 15:59:38 -0800
Message-ID: <4CFD78DD.9040102@linux.intel.com>
Date: Mon, 06 Dec 2010 15:59:25 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101027 Lightning/1.0b2 Thunderbird/3.1.6
MIME-Version: 1.0
To: Koen Kooi <koen@dominion.thruhere.net>
References: <4CFD6EFA.8050503@linux.intel.com>
	<9CD5F035-CD09-492D-9066-7C1C770E6105@dominion.thruhere.net>
In-Reply-To: <9CD5F035-CD09-492D-9066-7C1C770E6105@dominion.thruhere.net>
Cc: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>, "Purdie,
	Richard" <richard.purdie@intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Mon, 06 Dec 2010 23:59:39 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/06/2010 03:24 PM, Koen Kooi wrote:
>
> Op 7 dec 2010, om 00:17 heeft Darren Hart het volgende geschreven:
>
>> I'm having trouble determining what the best practice is for naming a linux kernel recipe.
>>
>> The meta-linaro layer contains a linux-linaro recipe, and eventually I'd like it to contain two. One for the stable kernel and one for the development kernel. These are currently 2.6.35 and 2.6.37 respectively. I currently have:
>>
>> linux-linaro-2.6.35_git.bb
>> PV=2.6.35
>>
>> This results in directory names in the build tree like:
>> linux-linaro-2.6.36_2.6.35 (or similar, with the version duplicated). As I understand it, the PV _must_ contain a standard Linux kernel version along the lines of 2.6.[0-9]+-* (and parsing fails without it).
>>
>> In order to both track the version and distinguish between stable and dev, would something like the following be appropriate? This also replaces _git with _KERNELVER (as proposed by Marcin).
>>
>> linux-linaro-stable_2.6.35.bb
>> PV=2.6.35+git${SRCREV}
>>
>> linux-linaro-dev_2.6.37.bb
>> PV=2.6.37+git${SRCREV}
>
> using that will break upgrade paths since git revisions aren't monotonically increasing. I use something like this:
>
> PV = "2.6.36+2.6.37-rc4"
> PR = "r3"
> PR_append = "+gitr${SRCREV}"
> SRCREV = "a04fd22204b13ce34a3f8a8157f83c44d64f8da9"
>
> And increase PR manually everytime SRCREV changes.
>

Hrm, this mostly just raises more questions for me !

There are 5 ways to specify versions that I can see here:

recipe-name_VERSION.bb
PV
PR
PR_append

I have been looking at these as follows:

recipe-name_VERSION.bb
This is a high level version that aids users in identifying this package 
over another one with a similar name but of a different version.

PV
Package version
I think of this as a specific source version. For instance, the package 
VERSION might be 2.6.33 in the bb filename, but the PV might be 2.6.33.7.

PR
Package revision
I think of PR as specific to the recipe. If I change the do_install(){}
function for instance, I would bump this revision. It would also change 
if the PV (and thus the SRC_URI) changed (back to r0). But it primarily 
indicates a change in the recipe itself, and triggers a rebuild even if 
the underlying sources didn't change.

http://www.yoctoproject.org/docs/poky-ref-manual/poky-ref-manual.html#usingpoky-changes-prbump

PR_append
I haven't used this, but from my point of view, this looks like it 
belongs in bbappend files. A way to simply append a tag to identify a 
recipe as an extension of another recipe. Perhpas a -dev for example 
which would include a bunch of developer centric kernel config settings 
that aren't necessarily appropriate in the main recipe.
linux_2.6.33-dev.bb for example might have lots of the more intrusive 
tracing settings enabled.

PE
Package epoch
This is rarely used and is a sort of super major number apparently - 
something like the 2 in the linux kernel revisions these days. A package 
version can be explicitly described from most to least significant bits as:
PN_PE.PV.PR

INC_PR
Used for "nested packages". In the dev example above the PR might be set 
to "${INC_PR}-dev I guess. I haven't used this myself.


I get most of the above from the poky-ref-manual:
http://www.yoctoproject.org/docs/poky-ref-manual/poky-ref-manual.html

But in practice there seems to be a fair amount of interpretation left 
to the author.

Thoughts?

-- 
Darren Hart
Yocto Linux Kernel

