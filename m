Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0321D4C80188
	for <poky@yoctoproject.org>; Wed, 27 Apr 2011 17:47:11 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 27 Apr 2011 15:47:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,276,1301900400"; d="scan'208";a="739378903"
Received: from unknown (HELO [10.255.13.18]) ([10.255.13.18])
	by orsmga001.jf.intel.com with ESMTP; 27 Apr 2011 15:47:11 -0700
Message-ID: <4DB89CEE.8050702@intel.com>
Date: Wed, 27 Apr 2011 15:47:10 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Kang Kai <kai.kang@windriver.com>
References: <cover.1303895739.git.kai.kang@windriver.com>
	<8924c9d60a2f03478c9b18ba54bad461d91553b8.1303895739.git.kai.kang@windriver.com>
In-Reply-To: <8924c9d60a2f03478c9b18ba54bad461d91553b8.1303895739.git.kai.kang@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/3] groff: update to 1.20.1
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
X-List-Received-Date: Wed, 27 Apr 2011 22:47:12 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/27/2011 02:30 AM, Kang Kai wrote:
> From: Kang Kai<kai.kang@windriver.com>
>
> Update groff to 1.20.1, add SUMMARY and LICENSE info
>> From OE 70bf94cd8669f549ca90581e9592d409b6e24e2e
> Fixes [Yocto 879]
>
Why did you not updated the existing recipe, via a git mv and then edit 
it.  We do not keep older recipes around, so they should be cleaned up.

Also, why do we need a native for this recipe?  For dealing with 
documentation native side?

Sau!

> Signed-off-by: Kang Kai<kai.kang@windriver.com>
> ---
>   meta/recipes-extended/groff/groff_1.20.1.bb |   36 +++++++++++++++++++++++++++
>   1 files changed, 36 insertions(+), 0 deletions(-)
>   create mode 100644 meta/recipes-extended/groff/groff_1.20.1.bb
>
> diff --git a/meta/recipes-extended/groff/groff_1.20.1.bb b/meta/recipes-extended/groff/groff_1.20.1.bb
> new file mode 100644
> index 0000000..e0e198f
> --- /dev/null
> +++ b/meta/recipes-extended/groff/groff_1.20.1.bb
> @@ -0,0 +1,36 @@
> +SUMMARY = "GNU Troff software"
> +DESCRIPTION = "The groff (GNU troff) software is a typesetting package which reads plain text mixed with \
> +formatting commands and produces formatted output."
> +SECTION = "base"
> +HOMEPAGE = "ftp://ftp.gnu.org/gnu/groff/"
> +LICENSE = "GPLv2"
> +PR = "r0"
> +
> +LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
> +
> +SRC_URI = "${GNU_MIRROR}/groff/groff-${PV}.tar.gz"
> +
> +SRC_URI[md5sum] = "48fa768dd6fdeb7968041dd5ae8e2b02"
> +SRC_URI[sha256sum] = "b645878135cb620c6c417c5601bfe96172245af12045540d7344938b4c2cd805"
> +
> +DEPENDS = "groff-native"
> +DEPENDS_virtclass-native = ""
> +
> +inherit autotools
> +
> +PARALLEL_MAKE = ""
> +
> +do_configure_prepend() {
> +	if [ "${BUILD_SYS}" != "${HOST_SYS}" ]; then
> +		sed -i \
> +		    -e '/^GROFFBIN=/s:=.*:=${STAGING_BINDIR_NATIVE}/groff:' \
> +		    -e '/^TROFFBIN=/s:=.*:=${STAGING_BINDIR_NATIVE}/troff:' \
> +		    -e '/^GROFF_BIN_PATH=/s:=.*:=${STAGING_BINDIR_NATIVE}:' \
> +		    -e '/^GROFF_BIN_DIR=/s:=.*:=${STAGING_BINDIR_NATIVE}:' \
> +		    ${S}/contrib/*/Makefile.sub \
> +		    ${S}/doc/Makefile.in \
> +		    ${S}/doc/Makefile.sub
> +	fi
> +}
> +
> +BBCLASSEXTEND = "native"


