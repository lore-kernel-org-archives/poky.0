Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 22FE24C81065
	for <poky@yoctoproject.org>; Thu, 20 Jan 2011 17:26:03 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 20 Jan 2011 15:26:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,354,1291622400"; d="scan'208";a="649427495"
Received: from unknown (HELO [10.255.14.114]) ([10.255.14.114])
	by fmsmga002.fm.intel.com with ESMTP; 20 Jan 2011 15:26:02 -0800
Message-ID: <4D38C48A.2090508@linux.intel.com>
Date: Thu, 20 Jan 2011 15:26:02 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Jiajun Xu <jiajun.xu@intel.com>
References: <cover.1294883271.git.jiajun.xu@intel.com>
In-Reply-To: <cover.1294883271.git.jiajun.xu@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] qemuimagetest: Use the same image in sanity testing to fix the timeout issue on autobuilder
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
X-List-Received-Date: Thu, 20 Jan 2011 23:26:03 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/12/2011 05:50 PM, Jiajun Xu wrote:
> Fixes [BUGID #595]
>
> Because of the QEMU booting slowness issue(see bug #646 and #618), autobuilder
> is suffering a timeout issue when running sanity test. We introduce variable
> SHARE_IMAGE here to fix the issue. It is by default set to 1. Poky will copy
> latest built-out image and keep using it in sanity testing. If it is set to 0,
> latest built-out image will be copied and tested for each case, which will take
> much time.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: jxu49/master
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jxu49/master
>
> Thanks,
>      Jiajun Xu<jiajun.xu@intel.com>
> ---
>
>
> Jiajun Xu (1):
>    qemuimagetest: Use the same image in sanity testing to fix the
>      timeout issue on autobuilder
>
>   meta/classes/imagetest-qemu.bbclass                |   22 +++++++++++++++++--
>   meta/conf/local.conf.sample                        |    8 +++++++
>   scripts/qemuimage-testlib                          |    7 ++++++
>   scripts/qemuimage-tests/sanity/compiler            |    2 +-
>   scripts/qemuimage-tests/sanity/connman             |    2 +-
>   scripts/qemuimage-tests/sanity/dmesg               |    2 +-
>   scripts/qemuimage-tests/sanity/rpm_query           |    2 +-
>   scripts/qemuimage-tests/sanity/scp                 |    2 +-
>   scripts/qemuimage-tests/sanity/shutdown            |    7 +++++-
>   scripts/qemuimage-tests/sanity/ssh                 |    2 +-
>   scripts/qemuimage-tests/sanity/zypper_help         |    2 +-
>   scripts/qemuimage-tests/sanity/zypper_search       |    2 +-
>   .../scenario/qemuarm/poky-image-lsb                |    2 +-
>   .../scenario/qemuarm/poky-image-sato               |    2 +-
>   .../scenario/qemuarm/poky-image-sdk                |    2 +-
>   .../scenario/qemumips/poky-image-lsb               |    2 +-
>   .../scenario/qemumips/poky-image-sato              |    2 +-
>   .../scenario/qemumips/poky-image-sdk               |    2 +-
>   .../scenario/qemuppc/poky-image-lsb                |    2 +-
>   .../scenario/qemuppc/poky-image-sato               |    2 +-
>   .../scenario/qemuppc/poky-image-sdk                |    2 +-
>   .../scenario/qemux86-64/poky-image-lsb             |    2 +-
>   .../scenario/qemux86-64/poky-image-sato            |    2 +-
>   .../scenario/qemux86-64/poky-image-sdk             |    2 +-
>   .../scenario/qemux86/poky-image-lsb                |    2 +-
>   .../scenario/qemux86/poky-image-sato               |    2 +-
>   .../scenario/qemux86/poky-image-sdk                |    2 +-
>   27 files changed, 63 insertions(+), 27 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Merged into Master

Thanks
	Sau!


