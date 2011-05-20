Return-Path: <saul.wold@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id DFB5C4C80052
	for <poky@yoctoproject.org>; Fri, 20 May 2011 10:06:58 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 20 May 2011 08:06:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,242,1304319600"; d="scan'208";a="439801772"
Received: from unknown (HELO [10.255.12.39]) ([10.255.12.39])
	by azsmga001.ch.intel.com with ESMTP; 20 May 2011 08:06:49 -0700
Message-ID: <4DD68388.7090309@intel.com>
Date: Fri, 20 May 2011 08:06:48 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
References: <cover.1305655392.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1305655392.git.nitin.a.kamble@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [OE-core] [PATCH 0/1] switch to gcc 4.6.0 for x86 x86-64 & arm
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
X-List-Received-Date: Fri, 20 May 2011 15:06:59 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/17/2011 11:07 AM, Nitin A Kamble wrote:
> From: Nitin A Kamble<nitin.a.kamble@intel.com>
>
> gcc 4.6.0 is good enough to switch for x86, x86-64&  arm now.
>
> I could build core-sdk images and run them through the qemu machines
> when compiled with gcc 4.6.0.
>
> mips&  ppc are still not ready, mainly the kernel compilation issues
> with gcc 4.6.0. These kernel issues are being worked on by Bruce.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: nitin/misc
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/misc
>
> Thanks,
>      Nitin A Kamble<nitin.a.kamble@intel.com>
> ---
>
>
> Nitin A Kamble (1):
>    tcmode-default: switch to gcc 4.6.0 for x86, x86-64&  arm
>
>   meta/conf/distro/include/tcmode-default.inc |    8 ++++++--
>   1 files changed, 6 insertions(+), 2 deletions(-)
>

Merged into oe-core and poky

Thanks
	Sau!


