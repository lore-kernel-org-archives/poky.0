Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0EFBE4C80B70
	for <poky@yoctoproject.org>; Thu,  6 Jan 2011 11:46:58 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 06 Jan 2011 09:46:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,284,1291622400"; d="scan'208";a="644154196"
Received: from unknown (HELO [10.255.14.7]) ([10.255.14.7])
	by fmsmga002.fm.intel.com with ESMTP; 06 Jan 2011 09:46:58 -0800
Message-ID: <4D25FFFD.9030203@intel.com>
Date: Thu, 06 Jan 2011 09:46:37 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1294291150.git.jiajun.xu@intel.com>
In-Reply-To: <cover.1294291150.git.jiajun.xu@intel.com>
Subject: Re: [PATCH 0/1] qemuimagetest: Remove connman test for lsb image	and fix one warning in Test_Create_Qemu
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
X-List-Received-Date: Thu, 06 Jan 2011 17:46:59 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/05/2011 09:21 PM, Jiajun Xu wrote:
> There is no connman in LSB image. So we need to remove connman test from it.
> And when we check if ip address fetched by Test_Fetch_Target_IP is valid,
> we should use "==" operator for string comparison.
>
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
>    qemuimagetest: Remove connman test for lsb image and fix one warning
>      in Test_Create_Qemu
>
>   scripts/qemuimage-testlib                          |    2 +-
>   .../scenario/qemuarm/poky-image-lsb                |    1 -
>   .../scenario/qemumips/poky-image-lsb               |    1 -
>   .../scenario/qemuppc/poky-image-lsb                |    1 -
>   .../scenario/qemux86-64/poky-image-lsb             |    1 -
>   .../scenario/qemux86/poky-image-lsb                |    1 -
>   6 files changed, 1 insertions(+), 6 deletions(-)
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
Pulled into Master

Thanks
    Sau!



