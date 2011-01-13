Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6F93D4C810AF
	for <poky@yoctoproject.org>; Wed, 12 Jan 2011 23:57:06 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 12 Jan 2011 21:57:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,316,1291622400"; d="scan'208";a="877097320"
Received: from unknown (HELO [10.255.14.15]) ([10.255.14.15])
	by fmsmga001.fm.intel.com with ESMTP; 12 Jan 2011 21:57:05 -0800
Message-ID: <4D2E9431.9030800@intel.com>
Date: Wed, 12 Jan 2011 21:57:05 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <1294781008-28927-1-git-send-email-dvhart@linux.intel.com>
In-Reply-To: <1294781008-28927-1-git-send-email-dvhart@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] trace-cmd: Bump SRCREV and recipe PV and PR values.
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
X-List-Received-Date: Thu, 13 Jan 2011 05:57:06 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/11/2011 01:23 PM, Darren Hart wrote:
> Upgrade to 6c696cec3f264a9399241b6e648f58bc97117d49 which
> includes fixes to the Makefile to allow for user override of
> CC and AR via the environment as well as python SWIG wrapper
> fixes.
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: dvhart/tracing
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/tracing
>
> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
> CC: Bruce Ashfield<bruce.ashfield@windriver.com>
> CC: Tom Zanussi<tom.zanussi@intel.com>
> ---
>   .../conf/distro/include/poky-default-revisions.inc |    2 +-
>   meta/recipes-kernel/trace-cmd/kernelshark_git.bb   |    2 +-
>   meta/recipes-kernel/trace-cmd/trace-cmd_git.bb     |    8 ++++----
>   3 files changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
> index e094109..a41ca39 100644
> --- a/meta/conf/distro/include/poky-default-revisions.inc
> +++ b/meta/conf/distro/include/poky-default-revisions.inc
> @@ -167,7 +167,7 @@ SRCREV_pn-swabber-native ??= "a0792390c5d6d5a5bade7ab155c80eef3f30fa52"
>   SRCREV_pn-sysprof ??= "38a6af1f0a45e528fd2842983da71e0f23c70d6a"
>   SRCREV_pn-table ??= "4b267533ce16656cba4104fc39dc12709c1bdddf"
>   SRCREV_pn-tasks ??= "ea52d46d691c5fce4473ea4e24a35411381f3a65"
> -TRACECMDREV ?= "0d252224626bd6926324f023a65f20c165232891"
> +TRACECMDREV ?= "6c696cec3f264a9399241b6e648f58bc97117d49"
>   SRCREV_pn-trace-cmd ??= ${TRACECMDREV}
>   SRCREV_pn-kernelshark ??= ${TRACECMDREV}
>   SRCREV_pn-tidy ??= "e25416e1293e1074bfa6727c80527dcff5b1f3cb"
> diff --git a/meta/recipes-kernel/trace-cmd/kernelshark_git.bb b/meta/recipes-kernel/trace-cmd/kernelshark_git.bb
> index ddf7c1e..bfe7d99 100644
> --- a/meta/recipes-kernel/trace-cmd/kernelshark_git.bb
> +++ b/meta/recipes-kernel/trace-cmd/kernelshark_git.bb
> @@ -4,7 +4,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe \
>                       file://kernel-shark.c;beginline=6;endline=8;md5=2c22c965a649ddd7973d7913c5634a5e"
>
>   PR = r0
> -PV = "1.0.4+git${SRCPV}"
> +PV = "1.0.5+git${SRCPV}"
>
>   DEPENDS = "gtk+"
>   RDEPENDS_${PN} = "trace-cmd"
> diff --git a/meta/recipes-kernel/trace-cmd/trace-cmd_git.bb b/meta/recipes-kernel/trace-cmd/trace-cmd_git.bb
> index bc03b0c..8fe62d4 100644
> --- a/meta/recipes-kernel/trace-cmd/trace-cmd_git.bb
> +++ b/meta/recipes-kernel/trace-cmd/trace-cmd_git.bb
> @@ -3,16 +3,16 @@ LICENSE = "GPLv2"
>   LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe \
>                       file://trace-cmd.c;beginline=6;endline=8;md5=2c22c965a649ddd7973d7913c5634a5e"
>
> -PR = r2
> -PV = "1.0.4+git${SRCPV}"
> +PR = r0
> +PV = "1.0.5+git${SRCPV}"
>
>   inherit pkgconfig
>
>   SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/rostedt/trace-cmd.git;protocol=git"
>   S = "${WORKDIR}/git"
>
> -EXTRA_OEMAKE = "'CC=${CC}' 'AR=${AR}' 'prefix=${prefix}'"
> +EXTRA_OEMAKE = "'prefix=${prefix}'"
>
>   do_install() {
> -	oe_runmake CC="${CC}" AR="${AR}" prefix="${prefix}" DESTDIR="${D}" install
> +	oe_runmake prefix="${prefix}" DESTDIR="${D}" install
>   }
Pulled into Master

Thanks
	Sau!


