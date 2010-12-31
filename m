Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4E5C94C80BD4
	for <poky@yoctoproject.org>; Fri, 31 Dec 2010 02:02:35 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 31 Dec 2010 00:02:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,254,1291622400"; d="scan'208";a="642052806"
Received: from unknown (HELO [10.255.13.218]) ([10.255.13.218])
	by fmsmga002.fm.intel.com with ESMTP; 31 Dec 2010 00:02:34 -0800
Message-ID: <4D1D8DF2.8050000@intel.com>
Date: Fri, 31 Dec 2010 00:01:54 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1293731824.git.dvhart@linux.intel.com>
	<46ff85bda463e94c40f5bd682ee97fab8baf0cbf.1293731824.git.dvhart@linux.intel.com>
In-Reply-To: <46ff85bda463e94c40f5bd682ee97fab8baf0cbf.1293731824.git.dvhart@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 3/3] kernelshark: add ftrace gui viewer
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
X-List-Received-Date: Fri, 31 Dec 2010 08:02:35 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/28/2010 05:10 PM, Darren Hart wrote:
> The trace-cmd source includes a graphical trace viewer, but we
> don't want to make the trace-cmd recipe depend on gtk+. This
> patch adds a second recipe in the meta/recipes-kernel/trace-cmd
> directory which uses the trace-cmd SRCREV and RDEPENDS on trace-cmd
> to ensure compatibility.
>
> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
> CC: Tom Zanussi<tom.zanussi@intel.com>
> ---
>   meta/recipes-kernel/trace-cmd/kernelshark_git.bb |   21 +++++++++++++++++++++
>   1 files changed, 21 insertions(+), 0 deletions(-)
>   create mode 100644 meta/recipes-kernel/trace-cmd/kernelshark_git.bb
>
> diff --git a/meta/recipes-kernel/trace-cmd/kernelshark_git.bb b/meta/recipes-kernel/trace-cmd/kernelshark_git.bb
> new file mode 100644
> index 0000000..d2913c9
> --- /dev/null
> +++ b/meta/recipes-kernel/trace-cmd/kernelshark_git.bb
> @@ -0,0 +1,21 @@
> +DESCRIPTION = "Graphical trace viewer for Ftrace"
> +LICENSE = "GPL"
Can you be more specific to the version of GPL?

> +LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe"
> +
> +PR = r0
> +PV = "1.0.4+git${SRCPV}"
> +
> +DEPENDS = "gtk+"
> +RDEPENDS = "trace-cmd"
> +
> +inherit pkgconfig
> +
> +SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/rostedt/trace-cmd.git;protocol=git"
> +SRCREV = "${SRCREV_pn-trace-cmd}"
> +S = "${WORKDIR}/git"
> +
> +EXTRA_OEMAKE = "'CC=${CC}' 'AR=${AR}' 'prefix=${prefix}' gui"
> +
> +do_install() {
> +	oe_runmake CC="${CC}" AR="${AR}" prefix="${prefix}" DESTDIR="${D}" install_gui
> +}


