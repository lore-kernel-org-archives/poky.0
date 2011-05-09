Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4852B4C800BA
	for <poky@yoctoproject.org>; Mon,  9 May 2011 11:25:59 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 09 May 2011 09:25:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,341,1301900400"; d="scan'208";a="690192988"
Received: from unknown (HELO [10.255.12.75]) ([10.255.12.75])
	by fmsmga002.fm.intel.com with ESMTP; 09 May 2011 09:25:52 -0700
Message-ID: <4DC8158F.8000502@intel.com>
Date: Mon, 09 May 2011 09:25:51 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1304707415.git.dvhart@linux.intel.com>
	<f84aab2a71b49321c4975325b17767b3ca6abbcc.1304707415.git.dvhart@linux.intel.com>
In-Reply-To: <f84aab2a71b49321c4975325b17767b3ca6abbcc.1304707415.git.dvhart@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] u-boot: correct COPYING MD5SUM
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
X-List-Received-Date: Mon, 09 May 2011 16:25:59 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/06/2011 11:47 AM, Darren Hart wrote:
> From: Darren Hart<dvhart@linux.intel.com>
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: dvhart/u-boot
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/u-boot
>
> Thanks,
>      Darren Hart<dvhart@linux.intel.com>
> ---
>
>
> Darren Hart (1):
>    u-boot: correct COPYING MD5SUM
>
>   meta/recipes-bsp/uboot/u-boot_git.bb |    4 ++--
>   1 files changed, 2 insertions(+), 2 deletions(-)
>
>
> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
> ---
>   meta/recipes-bsp/uboot/u-boot_git.bb |    4 ++--
>   1 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/meta/recipes-bsp/uboot/u-boot_git.bb b/meta/recipes-bsp/uboot/u-boot_git.bb
> index 66e7898..d8c196a 100644
> --- a/meta/recipes-bsp/uboot/u-boot_git.bb
> +++ b/meta/recipes-bsp/uboot/u-boot_git.bb
> @@ -1,14 +1,14 @@
>   require u-boot.inc
>
>   LICENSE = "GPLv2+"
> -LIC_FILES_CHKSUM = "file://COPYING;md5=1707d6db1d42237583f50183a5651ecb \
> +LIC_FILES_CHKSUM = "file://COPYING;md5=4c6cde5df68eff615d36789dc18edd3b \
>                       file://README;beginline=1;endline=22;md5=3a00ef51d3fc96e9d6c1bc4708ccd3b5"
>
>   FILESDIR = "${@os.path.dirname(bb.data.getVar('FILE',d,1))}/u-boot-git/${MACHINE}"
>
>   SRCREV = "v2010.12"
>   PV = "v2010.12+${PR}+git${SRCPV}"
> -PR="r1"
> +PR="r2"
>
>   SRC_URI = "git://git.denx.de/u-boot.git;branch=master;protocol=git"
>
Pulled into oe-core and poky master

Thanks
	Sau!


