Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id C0D4F4C80050
	for <poky@yoctoproject.org>; Fri, 31 Dec 2010 01:41:18 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 30 Dec 2010 23:41:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,254,1291622400"; d="scan'208";a="873258613"
Received: from unknown (HELO [10.255.13.230]) ([10.255.13.230])
	by fmsmga001.fm.intel.com with ESMTP; 30 Dec 2010 23:41:18 -0800
Message-ID: <4D1D890E.1010205@linux.intel.com>
Date: Thu, 30 Dec 2010 23:41:02 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@gmail.com>
References: <cover.1293731824.git.dvhart@linux.intel.com>	<a01f0a62cfa9dfd7d3c9809f9cb439100a9eb61d.1293731824.git.dvhart@linux.intel.com>	<AANLkTi=HVSpVxnx9QbU++mRMMW=csPz13PyT+vVX28b7@mail.gmail.com>	<4D1D07E7.7010000@linux.intel.com>
	<AANLkTi=Vb-Dp_FgSg45n2FjwbRYN7UfjQSgjGFadrn-s@mail.gmail.com>
In-Reply-To: <AANLkTi=Vb-Dp_FgSg45n2FjwbRYN7UfjQSgjGFadrn-s@mail.gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/3] trace-cmd: fix cross-compilation
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
X-List-Received-Date: Fri, 31 Dec 2010 07:41:19 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/30/2010 10:08 PM, Bruce Ashfield wrote:
> On Thu, Dec 30, 2010 at 5:29 PM, Darren Hart<dvhart@linux.intel.com>  wrote:
>> On 12/30/2010 01:02 PM, Bruce Ashfield wrote:
>>>
>>> On Tue, Dec 28, 2010 at 8:17 PM, Darren Hart<dvhart@linux.intel.com>
>>>   wrote:
>>>>
>>>> The trace-cmd Makefile forces certain variables, such as CC and AR.
>>>> It was using the host gcc and loader, fix it to use the poky-built
>>>> cross-compiler and linker.
>>>>
>>>> inherit pkgconfig to ensure we don't use the host pkg-config.
>>>>
>>>> Remove unecessary variables from the oemake commands, such as ARCH
>>>> and LD which aren't used by the Makefile.
>>>>
>>>> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
>>>> CC: Tom Zanussi<tom.zanussi@intel.com>
>>>
>>> I actually hacked up the original of this one .. ;)
>>
>> Right, sorry, forgot to check git blame on this one.
>
> Probably wouldn't have helped, in the recipe re-org it looks like my blame
> was dropped :)
>
>>
>>>
>>>
>>>> ---
>>>>   meta/recipes-kernel/trace-cmd/trace-cmd_git.bb |   12 +++++-------
>>>>   1 files changed, 5 insertions(+), 7 deletions(-)
>>>>
>>>> diff --git a/meta/recipes-kernel/trace-cmd/trace-cmd_git.bb
>>>> b/meta/recipes-kernel/trace-cmd/trace-cmd_git.bb
>>>> index e375afc..a7eca5f 100644
>>>> --- a/meta/recipes-kernel/trace-cmd/trace-cmd_git.bb
>>>> +++ b/meta/recipes-kernel/trace-cmd/trace-cmd_git.bb
>>>> @@ -2,18 +2,16 @@ DESCRIPTION = "User interface to Ftrace"
>>>>   LICENSE = "GPL"
>>>>   LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe"
>>>>
>>>> -PR = r1
>>>> +PR = r2
>>>>   PV = "1.0.4+git${SRCPV}"
>>>>
>>>> +inherit pkgconfig
>>>> +
>>>>   SRC_URI =
>>>> "git://git.kernel.org/pub/scm/linux/kernel/git/rostedt/trace-cmd.git;protocol=git"
>>>>   S = "${WORKDIR}/git"
>>>>
>>>> -
>>>> -do_compile() {
>>>> -       oe_runmake ARCH="${ARCH}" CC="${CC}" LD="${LD}" prefix=${prefix}
>>>> -}
>>>> +EXTRA_OEMAKE = "'CC=${CC}' 'AR=${AR}' 'prefix=${prefix}'"
>>>
>>> So we've determined that we don't need ARCH anymore ? At one point
>>> this did. Or is it coming from the pkgconfig inheritance now ?
>>
>> Good question. My understanding of setting these variables here was to
>> override whatever the Makefile was using. This makefile doesn't use ARCH at
>
> They were initially imported from a non-bitbake build of the tool, so there
> very well could have been differences introduced simply by the history. But
> yes, they were passed to override the defaults of the trace-cmd Makefile
> and prevent the defaults from being used.
>
> At one point, there were arch specific switches in the build to adapt to a
> different userspace on a per-arch basis. But those changes were circa
> March 2010 and they never were picked up.
>
>> all. Am I missing something about how this is used?
>
> It doesn't look like it, I was more noticing that you dropped ARCH, and
> was just looking to see if there were more details than just the commit
> message.

Nope, looks like trace-cmd's Makefile has just changed some.

Are you OK with these patches then?

-- 
Darren Hart
Yocto Linux Kernel

