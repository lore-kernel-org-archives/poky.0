Return-Path: <saul.wold@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8D4D84C811F5
	for <poky@pokylinux.org>; Thu, 20 Jan 2011 19:04:10 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 20 Jan 2011 17:04:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,354,1291622400"; d="scan'208";a="377697483"
Received: from unknown (HELO [10.255.14.114]) ([10.255.14.114])
	by azsmga001.ch.intel.com with ESMTP; 20 Jan 2011 17:04:09 -0800
Message-ID: <4D38DB86.1050404@intel.com>
Date: Thu, 20 Jan 2011 17:04:06 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Jiajun Xu <jiajun.xu@intel.com>
References: <cover.1295368476.git.jiajun.xu@intel.com>
In-Reply-To: <cover.1295368476.git.jiajun.xu@intel.com>
Cc: poky@pokylinux.org
Subject: Re: [PATCH 0/1] qemuimagetest: Use same image during sanity testing
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
X-List-Received-Date: Fri, 21 Jan 2011 01:04:10 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/18/2011 08:36 AM, Jiajun Xu wrote:
> To reduce the time on sanity testing, we remove variable SHARE_IMAGE and use
> a new variable TEST_SERIALIZE in local.conf. It is by default set to 1. Poky
> will copy and boot the to-be tested image for only once. It will not remove
> or kill the image and test cases will be serialized executed against the same
> image. If it is set to 0, image is always be copied for each cases, which takes
> much time. I had a experiment that latest qemuppc sato only takes 7 minutes to
> finish 9 sanity test cases, which takes more than 20 minutes before.
>
> I also removed sanity case "boot" for target sato/sdk/lsb because the other cases for
> these targets already cover the check point of "boot".
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
>    qemuimagetest: Use same image during sanity testing instead of
>      copying a new image for each case
>
>   meta/classes/imagetest-qemu.bbclass                |   33 +++++-
>   meta/conf/local.conf.sample                        |   10 +-
>   scripts/qemuimage-testlib                          |  110 ++++++++++++++------
>   scripts/qemuimage-tests/sanity/compiler            |    2 +-
>   scripts/qemuimage-tests/sanity/connman             |    2 +-
>   scripts/qemuimage-tests/sanity/dmesg               |    2 +-
>   scripts/qemuimage-tests/sanity/rpm_query           |    2 +-
>   scripts/qemuimage-tests/sanity/scp                 |    2 +-
>   scripts/qemuimage-tests/sanity/shutdown            |   11 +-
>   scripts/qemuimage-tests/sanity/ssh                 |    2 +-
>   scripts/qemuimage-tests/sanity/zypper_help         |    2 +-
>   scripts/qemuimage-tests/sanity/zypper_search       |    2 +-
>   .../scenario/qemuarm/poky-image-lsb                |    3 +-
>   .../scenario/qemuarm/poky-image-sato               |    3 +-
>   .../scenario/qemuarm/poky-image-sdk                |    3 +-
>   .../scenario/qemumips/poky-image-lsb               |    3 +-
>   .../scenario/qemumips/poky-image-sato              |    3 +-
>   .../scenario/qemumips/poky-image-sdk               |    3 +-
>   .../scenario/qemuppc/poky-image-lsb                |    3 +-
>   .../scenario/qemuppc/poky-image-sato               |    3 +-
>   .../scenario/qemuppc/poky-image-sdk                |    3 +-
>   .../scenario/qemux86-64/poky-image-lsb             |    3 +-
>   .../scenario/qemux86-64/poky-image-sato            |    3 +-
>   .../scenario/qemux86-64/poky-image-sdk             |    3 +-
>   .../scenario/qemux86/poky-image-lsb                |    3 +-
>   .../scenario/qemux86/poky-image-sato               |    3 +-
>   .../scenario/qemux86/poky-image-sdk                |    3 +-
>   27 files changed, 138 insertions(+), 87 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pulled into Master

Thanks
	Sau!


