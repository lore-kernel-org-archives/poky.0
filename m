Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5F1354C80AA4;
	Mon, 28 Feb 2011 14:48:51 -0600 (CST)
Received: from [128.224.146.67] (yow-bashfiel-d1.ottawa.windriver.com
	[128.224.146.67])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1SKmmYX016599
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 28 Feb 2011 12:48:49 -0800 (PST)
Message-ID: <4D6C0A2F.7090709@windriver.com>
Date: Mon, 28 Feb 2011 15:48:47 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110208 Thunderbird/3.1.8 ThunderBrowse/3.3.5
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1298429140.git.bruce.ashfield@windriver.com>
	<4D6BEF31.1030400@linux.intel.com>
In-Reply-To: <4D6BEF31.1030400@linux.intel.com>
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
X-List-Received-Date: Mon, 28 Feb 2011 20:48:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11-02-28 01:53 PM, Darren Hart wrote:
> On 02/22/2011 06:49 PM, Bruce Ashfield wrote:
>> Richard/Saul,
>
> Hi Bruce, I'm a little late to the party, but was wondering what your
> thoughts are on the whole OSS thing. It seems we should be as consistent
> as possible in our various Yocto Linux kernel images. Do we want to
> support OSS? I recall several years ago that OSS had drivers that Alsa
> did not and was needed for some boards - is that still the case? My
> feeling is, if possible, I'd like to just have alsa in our kernels and
> help reduce the raging redundancy in the audio API space.

alsa is the defacto / first choice for me.

That's partially why I chose to make this an
optional config block for this feature. That way
it is optional, and only applied to the specific qemu
images that we decided to add it for. All other kernels
and BSPs are unaffected.

If/when we get ALSA working for these qemu based machines,
we can easily drop this. But it looks like the only avenue
for the sound support immediately, so we slide it in
in as shallow a manner as possible.

Any and all patches to convert back to ALSA will be
happily merged! :)

Bruce

>
> --
> Darren
>
>>
>> This Fixes [BUGID #488 #734]
>>
>> As discussed, this enables the configuration options for qemu
>> audio for x86/x86-64 (limited to this for now). I did build and
>> boot testing (but couldn't directly test audio) for the impacted
>> qemu boards.
>>
>> The commit message from the patch tells the rest of the story:
>>
>> Enable audio for qemux86/qemux86-64 via the following kernel
>> configuration options.
>>
>> CONFIG_SOUND_OSS_CORE=y
>> CONFIG_SOUND_OSS_CORE_PRECLAIM=ythe
>> CONFIG_SND_RAWMIDI=m
>> CONFIG_SND_SEQUENCER=y
>> CONFIG_SND_OSSEMUL=y
>> CONFIG_SND_MIXER_OSS=y
>> CONFIG_SND_PCM_OSS=y
>> CONFIG_SND_PCM_OSS_PLUGINS=y
>> CONFIG_SND_SEQUENCER_OSS=y
>> CONFIG_SND_RAWMIDI_SEQ=m
>> CONFIG_SND_AC97_CODEC=m
>> CONFIG_SND_ENS1370=m
>> CONFIG_SND_INTEL8X0=m
>> CONFIG_AC97_BUS=m
>>
>> The mechanism to trigger these options is in the form of an
>> optional kernel feature that is only appended for qemux86
>> and qemux86-64, but is contained within the kernel tree.
>>
>> This allows several things:
>>
>> - the options to be available/shared for all boards
>> - the options to be in tree
>> - to not add the options to every board, which unecessarily
>> bloats the default configuration.
>>
>>
>> Pull URL: git://git.pokylinux.org/poky-contrib.git
>> Branch: zedd/kernel
>> Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel
>>
>> Thanks,
>> Bruce Ashfield<bruce.ashfield@windriver.com>
>> ---
>>
>>
>> Bruce Ashfield (1):
>> linux-yocto: enable audio for selected qemu targets
>>
>> meta/classes/kernel-yocto.bbclass | 4 +++-
>> .../conf/distro/include/poky-default-revisions.inc | 4 ++--
>> meta/recipes-kernel/linux/linux-yocto_git.bb | 6 ++++--
>> 3 files changed, 9 insertions(+), 5 deletions(-)
>>
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>
>


