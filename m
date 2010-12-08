Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 19DCA4C81233
	for <poky@yoctoproject.org>; Wed,  8 Dec 2010 16:18:23 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 08 Dec 2010 14:18:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,317,1288594800"; d="scan'208";a="581903582"
Received: from unknown (HELO [10.255.13.4]) ([10.255.13.4])
	by orsmga002.jf.intel.com with ESMTP; 08 Dec 2010 14:18:21 -0800
Message-ID: <4D00042C.6040403@linux.intel.com>
Date: Wed, 08 Dec 2010 14:18:20 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Wolfgang Denk <wd@denx.de>
References: <1291756443-28767-1-git-send-email-wd@denx.de>	<201012081124.45901.paul.eggleton@linux.intel.com>
	<20101208113542.9D65E140688@gemini.denx.de>
In-Reply-To: <20101208113542.9D65E140688@gemini.denx.de>
Cc: Vasily Khoruzhick <anarsoul@gmail.com>,
	Paul Eggleton <paul.eggleton@linux.intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/5] Fedora 14 Patches
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
X-List-Received-Date: Wed, 08 Dec 2010 22:18:23 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/08/2010 03:35 AM, Wolfgang Denk wrote:
> Dear Paul Eggleton,
>
> In message<201012081124.45901.paul.eggleton@linux.intel.com>  you wrote:
>>
>> FYI I'm building on a Fedora 14 x86_64 system here, as is Joshua Lock.
>
> Ah, that's good to know.
>
Wolfgang,

Thanks for your patches and assistance.

Not sure if you saw the Release Notes regarding F14 and building 
make-native first and installing that locally due to problems with F14's 
make.  See http://bugzilla.pokylinux.org/show_bug.cgi?id=467
and http://www.yoctoproject.org/download/yocto-project-4-0-release-notes


>> On Tuesday 07 December 2010 21:13:58 Wolfgang Denk wrote:
>>> From: Vasily Khoruzhick<anarsoul@gmail.com>
>>>
>>> The following is a series of patches trying to get Poky (both laverne
>>> 4.0 and top of tree) to build under a Fedora 14 x86_64 system.
>>
>> What are you building exactly? (distro/image/etc.)
>
> I've been testing mainly with laverne-4.0, and I'm tryting to build
> poky-image-sdk for some PowerPC and ARM configs.
>
>>> [1/5] eglibc: fix build issue with make-3.82
>>>   meta/recipes-core/eglibc/eglibc_2.12.bb            |    3 ++-
>>>   .../eglibc/files/eglibc-make-382.patch             |   15 +++++++++++++++
>>>   2 files changed, 17 insertions(+), 1 deletions(-)
>>
>> A similar fix has already been applied to master.
>
> I see. Must have missed that.
>
>>> [2/5] gstreamer: fix build issue with make-3.82
>>>   .../gstreamer-0.10.29/gstreamer-make-382.patch     |  178 ++++++++++++++++++++
>>>   .../gstreamer/gstreamer_0.10.30.bb                 |    5 +-
>>>   2 files changed, 181 insertions(+), 2 deletions(-)
>>
>> This patch is needed; however it doesn't seem to work because (a) the inner patch file is in the wrong directory (gstreamer-0.10.29 instead of gstreamer-0.10.30), and (b) when this is moved into the correct location on my system it fails do_patch. I hav
>> en't yet looked into why.
>
> Argh.  I missed that, too, when rebasing my patcehs (which were done
> against laverne-4.0) against current master. Sorry.
>
> Is master supposed to build poky-image-sdk for PowerPC?
>
Yes, this should build you can see the status of master on our build 
machine at http://autobuilder.pokylinux.org:8010/waterfall we are 
working on stabilizing the build (meta-toolchain-sdk is failing currently).

>>> [3/5] Add support for 40x configuration (kilauea from OE)
>>>   meta/conf/machine/include/tune-ppc405.inc          |    6 ++++++
>>>   meta/conf/machine/kilauea.conf                     |   22 ++++++++++++++++++++++
>>>   2 files changed, 28 insertions(+), 0 deletions(-)
>>
>> I'm guessing that this one is unrelated to getting things working on F14?
>
> Yes, it is unrelated. It's one of the targets I use for testing.
>
You should investigate creating a BSP Layer such as meta-kilauea that 
you can put your changes into.

>>> [4/5] elfutils-0.148: fix build problem with "ar"
>>>   .../elfutils/elfutils-0.148/ar-options.patch       |   11 +++++++++++
>>>   meta/recipes-devtools/elfutils/elfutils_0.148.bb   |    3 ++-
>>>   2 files changed, 13 insertions(+), 1 deletions(-)
>>>
>>> [5/5] elfutils-0.148: fix problems with `ld' not recognizing options
>>>   .../elfutils/elfutils-0.148/ld-compatibility.patch |   56 ++++++++++++++++++++
>>>   meta/recipes-devtools/elfutils/elfutils_0.148.bb   |    3 +-
>>>   2 files changed, 58 insertions(+), 1 deletions(-)
>>
>> Not sure about these two; for me with master this builds successfully. Could you retry with master and see if it works for you?
>
> Yes, will do.  I testes master about two weeks ago, when it didn't
> build, but I will retest this now.
>
Thanks again, if you find more problems please let us now and we will 
pull the changes.

Sau!

>
> Thanks.
>
> Best regards,
>
> Wolfgang Denk
>

