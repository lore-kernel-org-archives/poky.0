Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9B56D4C80570
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 12:04:24 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 27 Apr 2011 10:04:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,275,1301900400"; d="scan'208";a="634894855"
Received: from unknown (HELO [10.255.13.18]) ([10.255.13.18])
	by orsmga002.jf.intel.com with ESMTP; 27 Apr 2011 10:04:23 -0700
Message-ID: <4DB84C96.8010806@intel.com>
Date: Wed, 27 Apr 2011 10:04:22 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Kang Kai <kai.kang@windriver.com>
References: <cover.1303895739.git.kai.kang@windriver.com>
	<059207ed64e1bbe7ab25f0aee8225e3f9a9ed937.1303895739.git.kai.kang@windriver.com>
In-Reply-To: <059207ed64e1bbe7ab25f0aee8225e3f9a9ed937.1303895739.git.kai.kang@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 2/3] lsbsetup: add commands install_initd and	remove_initd
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
X-List-Received-Date: Wed, 27 Apr 2011 17:04:24 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/27/2011 02:30 AM, Kang Kai wrote:
> From: Kang Kai<kai.kang@windriver.com>
>
> Add commands install_initd and remove_initd link to chkconfig, which
> can handler LSB format init.d scripts. Needed by LSB commands check.
> Bump PR to r2
> Part fixes [Yocto 520]
>
> Signed-off-by: Kang Kai<kai.kang@windriver.com>
> ---
>   meta/recipes-extended/lsb/lsbsetup_0.9.bb |    7 ++++++-
>   1 files changed, 6 insertions(+), 1 deletions(-)
>
> diff --git a/meta/recipes-extended/lsb/lsbsetup_0.9.bb b/meta/recipes-extended/lsb/lsbsetup_0.9.bb
> index 5fd0584..73720ea 100644
> --- a/meta/recipes-extended/lsb/lsbsetup_0.9.bb
> +++ b/meta/recipes-extended/lsb/lsbsetup_0.9.bb
> @@ -2,7 +2,7 @@ DESCRIPTION = "auto-setup environment for lsb test"
>   SECTION = "console/utils"
>   PRIORITY = "required"
>   LICENSE = "GPLv2"
> -PR = "r1"
> +PR = "r2"
>
>   LIC_FILES_CHKSUM = "file://LSB_Setup.sh;beginline=3;endline=16;md5=97451c7c0786ce5bbe9ac58042945583"
>
> @@ -14,4 +14,9 @@ do_install() {
>           # Only install file if it has a contents
>           install -d ${D}/usr/bin
>           install -m 0755 ${S}/LSB_Setup.sh ${D}/usr/bin
> +        mkdir -p ${D}/usr/lib/lsb
I think this should be an install -d not a mkdir

> +        ln -sf ${base_sbindir}/chkconfig ${D}/${libdir}/lsb/install_initd
> +        ln -sf ${base_sbindir}/chkconfig ${D}/${libdir}/lsb/remove_initd
>   }
> +
> +FILES_${PN} += "${libdir}/lsb"


