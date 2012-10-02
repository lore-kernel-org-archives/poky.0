Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8374E00524
	for <poky@yoctoproject.org>; Tue,  2 Oct 2012 07:56:41 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 02 Oct 2012 07:56:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,523,1344236400"; d="scan'208";a="199632572"
Received: from unknown (HELO [10.255.13.203]) ([10.255.13.203])
	by azsmga001.ch.intel.com with ESMTP; 02 Oct 2012 07:56:28 -0700
Message-ID: <506B009C.4000307@linux.intel.com>
Date: Tue, 02 Oct 2012 07:56:28 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120911 Thunderbird/15.0.1
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <cover.1348958103.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1348958103.git.tom.zanussi@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] yocto-bsp: fix for xserver-xorg-config bbappend FILESPATH
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 02 Oct 2012 14:56:42 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 09/29/2012 04:45 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
>
> This patchset fixes Yocto bug Bug 3158 [xserver-xorg-config_0.1.bbappend
> bsp FILESPATH not set in a robust manner].
>
> It also removes a few 'test' config options left in a couple of the
> machine templates.
>
> The following changes since commit 7c39c87d52c20e47cf90275a16e4517a296c8388:
>
>    documentation: adt-manual, yocto-project-qs - Added tarball installer info (2012-09-28 17:54:28 +0100)
>
> are available in the git repository at:
>
>    git://git.yoctoproject.org/poky-contrib.git tzanussi/yocto-bsp-filesextrapaths
>    http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/yocto-bsp-filesextrapaths
>
> Tom Zanussi (2):
>    yocto-bsp: use FILESEXTRAPATHS for xserver-xf86-config bbappends
>    yocto-bsp: remove 'test' options from user-config.cfg
>
>   .../{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"      | 4 +---
>   .../{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"      | 4 +---
>   .../target/arch/powerpc/recipes-kernel/linux/files/user-config.cfg    | 4 ----
>   .../recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend    | 3 +--
>   .../target/arch/qemu/recipes-kernel/linux/files/user-config.cfg       | 4 ----
>   .../{{ if xserver == \"y\": }} xserver-xf86-config_0.1.bbappend"      | 4 +---
>   6 files changed, 4 insertions(+), 19 deletions(-)
>
Merged into Poky Master

Thanks
	Sau!

