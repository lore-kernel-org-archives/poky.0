Return-Path: <bruce.ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 35C384C80049;
	Tue, 22 Feb 2011 20:48:31 -0600 (CST)
Received: from localhost.localdomain (yow-bashfiel-d2.ottawa.windriver.com
	[128.224.146.167])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1N2mSHq010742;
	Tue, 22 Feb 2011 18:48:29 -0800 (PST)
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: rpurdie@linux.intel.com
Date: Tue, 22 Feb 2011 21:49:27 -0500
Message-Id: <cover.1298429140.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 1.7.0.4
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: [PATCH 0/1] linux-yocto: enable audio for qemux86 and qemux86-64
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
X-List-Received-Date: Wed, 23 Feb 2011 02:48:31 -0000

Richard/Saul,

This Fixes [BUGID #488 #734]

As discussed, this enables the configuration options for qemu
audio for x86/x86-64 (limited to this for now). I did build and
boot testing (but couldn't directly test audio) for the impacted
qemu boards.

The commit message from the patch tells the rest of the story:

Enable audio for qemux86/qemux86-64 via the following kernel
configuration options.

  CONFIG_SOUND_OSS_CORE=y
  CONFIG_SOUND_OSS_CORE_PRECLAIM=y
  CONFIG_SND_RAWMIDI=m
  CONFIG_SND_SEQUENCER=y
  CONFIG_SND_OSSEMUL=y
  CONFIG_SND_MIXER_OSS=y
  CONFIG_SND_PCM_OSS=y
  CONFIG_SND_PCM_OSS_PLUGINS=y
  CONFIG_SND_SEQUENCER_OSS=y
  CONFIG_SND_RAWMIDI_SEQ=m
  CONFIG_SND_AC97_CODEC=m
  CONFIG_SND_ENS1370=m
  CONFIG_SND_INTEL8X0=m
  CONFIG_AC97_BUS=m

The mechanism to trigger these options is in the form of an
optional kernel feature that is only appended for qemux86
and qemux86-64, but is contained within the kernel tree.

This allows several things:

  - the options to be available/shared for all boards
  - the options to be in tree
  - to not add the options to every board, which unecessarily
    bloats the default configuration.


Pull URL: git://git.pokylinux.org/poky-contrib.git
  Branch: zedd/kernel
  Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel

Thanks,
    Bruce Ashfield <bruce.ashfield@windriver.com>
---


Bruce Ashfield (1):
  linux-yocto: enable audio for selected qemu targets

 meta/classes/kernel-yocto.bbclass                  |    4 +++-
 .../conf/distro/include/poky-default-revisions.inc |    4 ++--
 meta/recipes-kernel/linux/linux-yocto_git.bb       |    6 ++++--
 3 files changed, 9 insertions(+), 5 deletions(-)


