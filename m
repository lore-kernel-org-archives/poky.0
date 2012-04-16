Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33A3CE0030B
	for <poky@yoctoproject.org>; Mon, 16 Apr 2012 08:17:26 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 16 Apr 2012 08:16:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="89590499"
Received: from unknown (HELO [10.255.12.25]) ([10.255.12.25])
	by AZSMGA002.ch.intel.com with ESMTP; 16 Apr 2012 08:16:58 -0700
Message-ID: <4F8C37EA.9050307@linux.intel.com>
Date: Mon, 16 Apr 2012 08:16:58 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: Dongxiao Xu <dongxiao.xu@intel.com>
References: <cover.1334562500.git.dongxiao.xu@intel.com>
In-Reply-To: <cover.1334562500.git.dongxiao.xu@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1][PULL] meta-yocto: Move OELAYOUT_ABI definition to poky.conf
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
X-List-Received-Date: Mon, 16 Apr 2012 15:17:27 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/16/2012 12:52 AM, Dongxiao Xu wrote:
> Hi Richard,
>
> This pull request contains a commit that moves the OELAYOUT_ABI definition from abi_version.conf
> to poky.conf, which could fix [YOCTO #2303].
>
> This pull request does depend on another pull request (bitbake.conf: Include abi_version.conf in earlier stage) that I sent in oe-core mailing list.
>
> Please help to review and pull.
>
> Thanks,
> Dongxiao
>
> The following changes since commit 2ddf7d3e8326e8cb07101ddb2d6e5dc6866371e2:
>
>    gcc-configure-common.inc: Stop gcc looking at build system paths (2012-04-15 18:09:57 +0100)
>
> are available in the git repository at:
>    git://git.pokylinux.org/poky-contrib dxu4/hob-bugfix-yocto
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/hob-bugfix-yocto
>
> Dongxiao Xu (1):
>    meta-yocto: Move OELAYOUT_ABI definition to poky.conf
>
>   meta-yocto/conf/abi_version.conf |    7 -------
>   meta-yocto/conf/distro/poky.conf |    7 +++++++
>   2 files changed, 7 insertions(+), 7 deletions(-)
>   delete mode 100644 meta-yocto/conf/abi_version.conf
>

Merged into Poky Master

Thanks
	Sau!

