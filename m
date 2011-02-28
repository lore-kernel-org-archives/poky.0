Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6D0614C800A4;
	Mon, 28 Feb 2011 12:53:38 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 28 Feb 2011 10:53:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,241,1297065600"; d="scan'208";a="714250625"
Received: from unknown (HELO [10.255.12.138]) ([10.255.12.138])
	by orsmga001.jf.intel.com with ESMTP; 28 Feb 2011 10:53:37 -0800
Message-ID: <4D6BEF31.1030400@linux.intel.com>
Date: Mon, 28 Feb 2011 10:53:37 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <cover.1298429140.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1298429140.git.bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH 0/1] linux-yocto: enable audio for qemux86 and qemux86-64
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
X-List-Received-Date: Mon, 28 Feb 2011 18:53:38 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/22/2011 06:49 PM, Bruce Ashfield wrote:
> Richard/Saul,

Hi Bruce, I'm a little late to the party, but was wondering what your 
thoughts are on the whole OSS thing. It seems we should be as consistent 
as possible in our various Yocto Linux kernel images. Do we want to 
support OSS? I recall several years ago that OSS had drivers that Alsa 
did not and was needed for some boards - is that still the case? My 
feeling is, if possible, I'd like to just have alsa in our kernels and 
help reduce the raging redundancy in the audio API space.

--
Darren

>
> This Fixes [BUGID #488 #734]
>
> As discussed, this enables the configuration options for qemu
> audio for x86/x86-64 (limited to this for now). I did build and
> boot testing (but couldn't directly test audio) for the impacted
> qemu boards.
>
> The commit message from the patch tells the rest of the story:
>
> Enable audio for qemux86/qemux86-64 via the following kernel
> configuration options.
>
>    CONFIG_SOUND_OSS_CORE=y
>    CONFIG_SOUND_OSS_CORE_PRECLAIM=y
>    CONFIG_SND_RAWMIDI=m
>    CONFIG_SND_SEQUENCER=y
>    CONFIG_SND_OSSEMUL=y
>    CONFIG_SND_MIXER_OSS=y
>    CONFIG_SND_PCM_OSS=y
>    CONFIG_SND_PCM_OSS_PLUGINS=y
>    CONFIG_SND_SEQUENCER_OSS=y
>    CONFIG_SND_RAWMIDI_SEQ=m
>    CONFIG_SND_AC97_CODEC=m
>    CONFIG_SND_ENS1370=m
>    CONFIG_SND_INTEL8X0=m
>    CONFIG_AC97_BUS=m
>
> The mechanism to trigger these options is in the form of an
> optional kernel feature that is only appended for qemux86
> and qemux86-64, but is contained within the kernel tree.
>
> This allows several things:
>
>    - the options to be available/shared for all boards
>    - the options to be in tree
>    - to not add the options to every board, which unecessarily
>      bloats the default configuration.
>
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: zedd/kernel
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel
>
> Thanks,
>      Bruce Ashfield<bruce.ashfield@windriver.com>
> ---
>
>
> Bruce Ashfield (1):
>    linux-yocto: enable audio for selected qemu targets
>
>   meta/classes/kernel-yocto.bbclass                  |    4 +++-
>   .../conf/distro/include/poky-default-revisions.inc |    4 ++--
>   meta/recipes-kernel/linux/linux-yocto_git.bb       |    6 ++++--
>   3 files changed, 9 insertions(+), 5 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

