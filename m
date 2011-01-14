Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 141A44C80039
	for <poky@yoctoproject.org>; Thu, 13 Jan 2011 23:47:22 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 13 Jan 2011 21:47:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,321,1291622400"; d="scan'208";a="592891663"
Received: from unknown (HELO [10.255.14.72]) ([10.255.14.72])
	by orsmga002.jf.intel.com with ESMTP; 13 Jan 2011 21:47:21 -0800
Message-ID: <4D2FE367.4030204@intel.com>
Date: Thu, 13 Jan 2011 21:47:19 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <cover.1294944942.git.tom.zanussi@intel.com>
	<53e1c664d18e7cbc04b76e7df1041fa615d84716.1294944942.git.tom.zanussi@intel.com>
In-Reply-To: <53e1c664d18e7cbc04b76e7df1041fa615d84716.1294944942.git.tom.zanussi@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] systemtap: new package
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
X-List-Received-Date: Fri, 14 Jan 2011 05:47:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/13/2011 11:55 AM, Tom Zanussi wrote:
> Add systemtap, a general-purpose script-directed dynamic tracing and
> performance analysis tool for Linux.
>
> Signed-off-by: Tom Zanussi<tom.zanussi@intel.com>
> ---
>   .../conf/distro/include/poky-default-revisions.inc |    1 +
>   meta/recipes-core/tasks/task-poky-tools.bb         |    1 +
>   meta/recipes-kernel/systemtap/systemtap_git.bb     |   28 ++++++++++++++++++++
>   3 files changed, 30 insertions(+), 0 deletions(-)
>   create mode 100644 meta/recipes-kernel/systemtap/systemtap_git.bb
>
> diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
> index 6b98091..c07e2c7 100644
> --- a/meta/conf/distro/include/poky-default-revisions.inc
> +++ b/meta/conf/distro/include/poky-default-revisions.inc
> @@ -165,6 +165,7 @@ SRCREV_pn-screenshot ??= "292"
>   SRCREV_pn-settings-daemon ??= "2059"
>   SRCREV_pn-swabber-native ??= "a0792390c5d6d5a5bade7ab155c80eef3f30fa52"
>   SRCREV_pn-sysprof ??= "38a6af1f0a45e528fd2842983da71e0f23c70d6a"
> +SRCREV_pn-systemtap ??= "4ab3a1863bf4f472acae7a809bf2b38d91658aa8"
>   SRCREV_pn-table ??= "4b267533ce16656cba4104fc39dc12709c1bdddf"
>   SRCREV_pn-tasks ??= "ea52d46d691c5fce4473ea4e24a35411381f3a65"
>   TRACECMDREV ?= "6c696cec3f264a9399241b6e648f58bc97117d49"
> diff --git a/meta/recipes-core/tasks/task-poky-tools.bb b/meta/recipes-core/tasks/task-poky-tools.bb
> index 60a95f9..c23a3fe 100644
> --- a/meta/recipes-core/tasks/task-poky-tools.bb
> +++ b/meta/recipes-core/tasks/task-poky-tools.bb
> @@ -51,6 +51,7 @@ RRECOMMENDS_task-poky-tools-profile = "\
>       kernel-module-oprofile \
>       blktrace \
>       sysprof \
> +    systemtap \
>       "
>
>   #    exmap-console
> diff --git a/meta/recipes-kernel/systemtap/systemtap_git.bb b/meta/recipes-kernel/systemtap/systemtap_git.bb
> new file mode 100644
> index 0000000..f28c946
> --- /dev/null
> +++ b/meta/recipes-kernel/systemtap/systemtap_git.bb
> @@ -0,0 +1,28 @@
> +DESCRIPTION = "SystemTap - script-directed dynamic tracing and performance analysis tool for Linux"
> +LICENSE = "GPLv2"
> +LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
> +
> +DEPENDS = "elfutils"
> +
> +PR = r0
> +PV = "1.4+git${SRCPV}"
> +
> +SRC_URI = "git://sources.redhat.com/git/systemtap.git;protocol=git \
> +          "
> +
> +EXTRA_OECONF = "--prefix=${D} --with-libelf=${STAGING_DIR_TARGET} --without-rpm \
> +	     ac_cv_file__usr_include_nss=no \
> +	     ac_cv_file__usr_include_nss3=no \
> +	     ac_cv_file__usr_include_nspr=no \
> +	     ac_cv_file__usr_include_nspr4=no \
> +	     ac_cv_file__usr_include_avahi_client=no \
> +	     ac_cv_file__usr_include_avahi_common=no "
> +
> +SRC_URI[md5sum]    = "cb202866ed704c44a876d041f788bdee"
> +SRC_URI[sha256sum] = "8ffe35caec0d937bd23fd78a3a8d94b58907cc0de0330b35e38f9f764815c459"
> +
> +COMPATIBLE_MACHINE = "(qemux86|qemux86-64|qemuppc|emenlow|crownbay|atom-pc|n450)"
> +
Tom,

Will this work for PPC hardware also such as the beagleboard?  I am just 
looking at the COMPATIBLE_MACHINE list and wondering.

Recently Richard suggested that we could use regular expressions here 
and negate the incompatible machine.

The more I think about this, we may need to extend this to work for 
generalized arches, not just machines.  I will work on writing an RFC 
for this.

Sau!

> +S = "${WORKDIR}/git"
> +
> +inherit autotools


