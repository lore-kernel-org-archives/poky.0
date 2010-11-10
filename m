Return-Path: <saul.wold@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 032EC4C811AC;
	Wed, 10 Nov 2010 13:40:44 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 10 Nov 2010 11:40:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,179,1288594800"; d="scan'208";a="347126223"
Received: from unknown (HELO [10.255.13.55]) ([10.255.13.55])
	by azsmga001.ch.intel.com with ESMTP; 10 Nov 2010 11:40:43 -0800
Message-ID: <4CDAF53B.2030906@intel.com>
Date: Wed, 10 Nov 2010 11:40:43 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <1289250400-16953-1-git-send-email-bruce.ashfield@windriver.com>
In-Reply-To: <1289250400-16953-1-git-send-email-bruce.ashfield@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PULL] misc (minor) kernel fixes
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
X-List-Received-Date: Wed, 10 Nov 2010 19:40:47 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/08/2010 01:06 PM, Bruce Ashfield wrote:
> In preparation for some larger kernel changes being sent
> for review, I'm clearing my queue of a few minor changes
> that were done while working on the 0.9 release.
>
> The uImage one is particularly interesting, since it was
> a fix for the default beagle board uImage being completely
> unbootable.
>
> The force revisions is largely cosmetic, but it is used
> by my upcoming kernel dev layer and I think it is more in
> the spirit of other variables that are set from local
> configurations.
>
> The following changes since commit e417aa98e4b4170f4b4aaf805cc8ea20f8593604:
>    Bruce Ashfield (1):
>          wrs_meta: add USB options for wacom tablet support
>
> are available in the git repository at:
>
>    ssh://git@git.pokylinux.org/poky-contrib zedd/kernel-fixes
>
> Bruce Ashfield (2):
>        linux-wrs: rename force_revisions and allow override
>        kernel: prefer the kernel produced uImage
>
>   meta/classes/kernel.bbclass                |    4 +++-
>   meta/recipes-kernel/linux/linux-wrs_git.bb |    6 +++---
>   2 files changed, 6 insertions(+), 4 deletions(-)
>
>
Merged into Master

Thanks
	Sau!


