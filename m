Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 729004C811F3
	for <poky@yoctoproject.org>; Fri, 13 May 2011 11:49:47 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 13 May 2011 09:49:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,365,1301900400"; 
   d="scan'208";a="1343027"
Received: from unknown (HELO [10.255.12.119]) ([10.255.12.119])
	by fmsmga002.fm.intel.com with ESMTP; 13 May 2011 09:49:46 -0700
Message-ID: <4DCD6128.6030506@linux.intel.com>
Date: Fri, 13 May 2011 09:49:44 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Kang Kai <kai.kang@windriver.com>
References: <cover.1305266909.git.kai.kang@windriver.com>
	<7d8bd25d3d5664125484582160518ce857cac2f5.1305266909.git.kai.kang@windriver.com>
In-Reply-To: <7d8bd25d3d5664125484582160518ce857cac2f5.1305266909.git.kai.kang@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 2/4] foomatic-filters: add a link to pass LSB printing test
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
X-List-Received-Date: Fri, 13 May 2011 16:49:47 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/13/2011 12:56 AM, Kang Kai wrote:
> From: Kang Kai<kai.kang@windriver.com>
>
> LSB printing test will test a foomatic-rip under cups' directory,
> so add it as link.
> Part fixes [Yocto 904]
>
> Signed-off-by: Kang Kai<kai.kang@windriver.com>
> ---
>   .../foomatic/foomatic-filters_4.0.7.bb             |    9 ++++++++-
>   1 files changed, 8 insertions(+), 1 deletions(-)
>
> diff --git a/meta/recipes-extended/foomatic/foomatic-filters_4.0.7.bb b/meta/recipes-extended/foomatic/foomatic-filters_4.0.7.bb
> index 8d70400..43e9c8d 100644
> --- a/meta/recipes-extended/foomatic/foomatic-filters_4.0.7.bb
> +++ b/meta/recipes-extended/foomatic/foomatic-filters_4.0.7.bb
> @@ -10,7 +10,7 @@ format using a printer-specific, but spooler-independent PPD file. \
>   "
>
>   DEPENDS += "cups perl libxml2"
> -PR = "r0"
> +PR = "r1"
>
>   LICENSE = "GPLv2+"
>   LIC_FILES_CHKSUM = "file://${WORKDIR}/foomatic-filters-${PV}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
> @@ -20,4 +20,11 @@ SRC_URI = "http://www.openprinting.org/download/foomatic/foomatic-filters-${PV}.
>   SRC_URI[md5sum] = "20abd25c1c98b2dae68709062a132a7d"
>   SRC_URI[sha256sum] = "090313fae40b177f505d9c9b93d7a4d7188b6d5d18b6ae41ab24903ac983478d"
>
> +do_install_append_linuxstdbase() {
> +    install -d ${D}${libdir}/cups/filter
> +    ln -sf ../../../bin/foomatic-rip ${D}${libdir}/cups/filter
Kai Kang:

This should really be an absolute patch instead of a relative, there are 
distros that might have a different exec_prefix

> +}
> +
> +FILES_${PN} += "${libdir}/cups/filter/foomatic-rip"

Should this be _linuxstdbase also?

> +
>   inherit autotools
Sau!

