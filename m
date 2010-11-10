Return-Path: <saul.wold@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9969E4C80FA4
	for <poky@yoctoproject.org>; Wed, 10 Nov 2010 13:40:38 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 10 Nov 2010 11:40:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,179,1288594800"; d="scan'208";a="347126189"
Received: from unknown (HELO [10.255.13.55]) ([10.255.13.55])
	by azsmga001.ch.intel.com with ESMTP; 10 Nov 2010 11:40:37 -0800
Message-ID: <4CDAF535.2040209@intel.com>
Date: Wed, 10 Nov 2010 11:40:37 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <1289250091-15889-1-git-send-email-bruce.ashfield@windriver.com>
In-Reply-To: <1289250091-15889-1-git-send-email-bruce.ashfield@windriver.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PULL] qemumips wacom tablet support
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
X-List-Received-Date: Wed, 10 Nov 2010 19:40:38 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/08/2010 01:01 PM, Bruce Ashfield wrote:
> The following changes fix the qemumips target to have wacom USB
> tablet support. This fixes bugid #394.
>
> The following changes since commit 724088189e699c67adf949f5baaa8de83483c82c:
>    Richard Purdie (1):
>          Poky ->  Yocto name change
>
> are available in the git repository at:
>
>    ssh://git@git.pokylinux.org/poky-contrib zedd/kernel
>
> Bruce Ashfield (2):
>        qemumips: re-enable wacom and standard USB UI options
>        wrs_meta: add USB options for wacom tablet support
>
> J. Aaron Gamble (2):
>        Added qemumips /etc/pointercal file for touchscreen calibration
>        tslib: 32bit big endian support
>
>   .../conf/distro/include/poky-default-revisions.inc |    2 +-
>   .../formfactor/files/qemumips/machconfig           |    4 +-
>   .../pointercal/files/qemumips/pointercal           |    1 +
>   .../tslib/tslib/32bitBE-support.patch              |   52 ++++++++++++++++++++
>   meta/recipes-graphics/tslib/tslib_1.0.bb           |    4 +-
>   scripts/poky-qemu-internal                         |    2 +-
>   6 files changed, 60 insertions(+), 5 deletions(-)
>   create mode 100644 meta/recipes-bsp/pointercal/files/qemumips/pointercal
>   create mode 100644 meta/recipes-graphics/tslib/tslib/32bitBE-support.patch
>
>
>
Merged into Master

Thanks
	Sau!


