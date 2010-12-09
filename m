Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 005B64C80B70
	for <poky@yoctoproject.org>; Thu,  9 Dec 2010 13:25:13 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 09 Dec 2010 11:25:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,321,1288594800"; d="scan'208";a="685598459"
Received: from unknown (HELO [10.255.13.201]) ([10.255.13.201])
	by orsmga001.jf.intel.com with ESMTP; 09 Dec 2010 11:25:13 -0800
Message-ID: <4D012D18.1090406@linux.intel.com>
Date: Thu, 09 Dec 2010 11:25:12 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Wolfgang Denk <wd@denx.de>
References: <1291756443-28767-1-git-send-email-wd@denx.de>
	<201012081124.45901.paul.eggleton@linux.intel.com>
	<20101208113542.9D65E140688@gemini.denx.de>
	<4D00042C.6040403@linux.intel.com>
	<20101209085846.264F5D301D6@gemini.denx.de>
In-Reply-To: <20101209085846.264F5D301D6@gemini.denx.de>
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
X-List-Received-Date: Thu, 09 Dec 2010 19:25:14 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/09/2010 12:58 AM, Wolfgang Denk wrote:
> Dear Saul,
>
> In message<4D00042C.6040403@linux.intel.com>  you wrote:
>>
>> Thanks for your patches and assistance.
>>
>> Not sure if you saw the Release Notes regarding F14 and building
>> make-native first and installing that locally due to problems with F14's
>> make.  See http://bugzilla.pokylinux.org/show_bug.cgi?id=467
>> and http://www.yoctoproject.org/download/yocto-project-4-0-release-notes
>
> Yes, I saw trhis, but decided it made more sense to fix the broken
> Makefiles, especially as this was trivial to do, and in case of eglibc
> I could just apply the corresponding commit from OE.
>
> But actually the make-3.82 issues are the smallest of my problems.
>
> I'm trying to build Poky for some PowerPC and ARM architectures
> (PPC6xx, PPC4xx, ARM Kirkwood, etc.), and see a number of build
> issues.  I started reportung these:
> http://bugzilla.pokylinux.org/show_bug.cgi?id=572
> http://bugzilla.pokylinux.org/show_bug.cgi?id=574
>
> Are there any plans to include PPC and ARM targets for example int he
> autobuilder testing?
>
This has been addressed by both Josh and RP.

>> Yes, this should build you can see the status of master on our build
>> machine at http://autobuilder.pokylinux.org:8010/waterfall we are
>> working on stabilizing the build (meta-toolchain-sdk is failing currently).
>
> What I cannot see (maybe I just don't know where to look) is if the
> autobuilder includes any PPC and ARM targets at all, and if so, which
> these are.
>
Again already answered.

>>> Yes, it is unrelated. It's one of the targets I use for testing.
>>>
>> You should investigate creating a BSP Layer such as meta-kilauea that
>> you can put your changes into.
>
> Sorry for asking stupid questions - I'm still pretty new to Poky and
> haven't really understood some of the concepts: what would be the
> benefit (for me, or for the project) of such a layer?  Why not adding
> just another machine configuration?
>
The intent of the core metadata provided with poky is that it is stable 
and tested regularly, so a core set of machines (including qemu) for 
each major architecture are chosen.  These are maintained and QA'ed by 
the Yocto maintainers.

We help support layers where other machines configurations can reside 
and are maintained and tested by their contributors, but are not part of 
the core metadata.

As the community builds a clearer policy and selection mechanism will be 
developed.

Sau!

>> Thanks again, if you find more problems please let us now and we will
>> pull the changes.
>
> Thanks!
>
> Best regards,
>
> Wolfgang Denk
>

