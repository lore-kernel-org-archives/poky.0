Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 241EC4C80A8C
	for <poky@yoctoproject.org>; Sat, 26 Feb 2011 16:47:07 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 26 Feb 2011 14:47:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,233,1297065600"; d="scan'208";a="606873336"
Received: from unknown (HELO [10.255.12.138]) ([10.255.12.138])
	by orsmga002.jf.intel.com with ESMTP; 26 Feb 2011 14:47:06 -0800
Message-ID: <4D6982EA.5050308@intel.com>
Date: Sat, 26 Feb 2011 14:47:06 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Scott Garman <scott.a.garman@intel.com>
References: <cover.1298677440.git.scott.a.garman@intel.com>
	<7ee2727c69b794194898a89cabc6e3c1c3022ab9.1298677440.git.scott.a.garman@intel.com>
In-Reply-To: <7ee2727c69b794194898a89cabc6e3c1c3022ab9.1298677440.git.scott.a.garman@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] linuxdoc-tools-native: disable doc builds requriing latex and dvips
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
X-List-Received-Date: Sat, 26 Feb 2011 22:47:07 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/25/2011 03:45 PM, Scott Garman wrote:
> From: Scott Garman<scott.a.garman@intel.com>
>
> This fixes the following errors during do_install on hosts which have
> latex and/or dvips installed:
>
> fmt_latex2e::postASP: LaTeX first run problem. Aborting ...
>
> dvips: ! DVI file can't be opened.
>
> Our goal is to have native versions of these tools eventually. Until
> then, disable these parts of the documentation install process.
>
> This fixes [BUGID #774].
>
> Signed-off-by: Scott Garman<scott.a.garman@intel.com>
> ---
>   .../linuxdoc-tools-native/disable_dvips_doc.patch  |   29 ++++++++++++++++++++
>   .../linuxdoc-tools-native/disable_tex_doc.patch    |   25 +++++++++++++++++
>   .../linuxdoc-tools/linuxdoc-tools-native_0.9.66.bb |    6 +++-
>   3 files changed, 58 insertions(+), 2 deletions(-)
>   create mode 100644 meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native/disable_dvips_doc.patch
>   create mode 100644 meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native/disable_tex_doc.patch
>
> diff --git a/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native/disable_dvips_doc.patch b/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native/disable_dvips_doc.patch
> new file mode 100644
> index 0000000..7ac1a1f
> --- /dev/null
> +++ b/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native/disable_dvips_doc.patch
> @@ -0,0 +1,29 @@
> +Disable building documentation which requires the dvips utility.
> +This patch should be dropped once we include a native version of
> +dvips.
> +
> +Signed-off-by: Scott Garman<scott.a.garman@intel.com>
> +diff -urN linuxdoc-tools-0.9.66.orig/doc/Makedoc.sh linuxdoc-tools-0.9.66/doc/Makedoc.sh
> +--- linuxdoc-tools-0.9.66.orig/doc/Makedoc.sh	2011-02-25 15:26:41.142917782 -0800
> ++++ linuxdoc-tools-0.9.66/doc/Makedoc.sh	2011-02-25 15:27:25.141917472 -0800
> +@@ -52,13 +52,13 @@
> + #	$TMPDIR/sgml2latex --pass="\usepackage{times}" -o dvi ./guide
> + #fi
> +
> +-if [ -n "`which dvips`" ]; then
> +-	echo "   + dvips">&2
> +-	dvips -t letter -o ./guide.ps ./guide.dvi
> +-	if [ -n "`which gzip`" -a -f ./guide.ps ]; then
> +-		gzip -fN ./guide.ps
> +-	fi
> +-fi
> ++#if [ -n "`which dvips`" ]; then
> ++#	echo "   + dvips">&2
> ++#	dvips -t letter -o ./guide.ps ./guide.dvi
> ++#	if [ -n "`which gzip`" -a -f ./guide.ps ]; then
> ++#		gzip -fN ./guide.ps
> ++#	fi
> ++#fi
> +
> +
> + echo "- Building info docs">&2
> diff --git a/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native/disable_tex_doc.patch b/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native/disable_tex_doc.patch
> new file mode 100644
> index 0000000..f47693b
> --- /dev/null
> +++ b/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native/disable_tex_doc.patch
> @@ -0,0 +1,25 @@
> +Disable building documentation which requires the latex utility.
> +This patch should be dropped once we include a native version of
> +latex.
> +
> +Signed-off-by: Scott Garman<scott.a.garman@intel.com>
> +diff -urN linuxdoc-tools-0.9.66.orig/doc/Makedoc.sh linuxdoc-tools-0.9.66/doc/Makedoc.sh
> +--- linuxdoc-tools-0.9.66.orig/doc/Makedoc.sh	2009-11-09 11:58:25.000000000 -0800
> ++++ linuxdoc-tools-0.9.66/doc/Makedoc.sh	2011-02-25 15:23:58.610016114 -0800
> +@@ -46,11 +46,11 @@
> + 	$TMPDIR/sgml2txt -b 1 ./guide
> + fi
> +
> +-if [ -n "`which latex`" ]; then
> +-	ln -s $TMPDIR/linuxdoc $TMPDIR/sgml2latex
> +-	echo "- Building latex docs">&2
> +-	$TMPDIR/sgml2latex --pass="\usepackage{times}" -o dvi ./guide
> +-fi
> ++#if [ -n "`which latex`" ]; then
> ++#	ln -s $TMPDIR/linuxdoc $TMPDIR/sgml2latex
> ++#	echo "- Building latex docs">&2
> ++#	$TMPDIR/sgml2latex --pass="\usepackage{times}" -o dvi ./guide
> ++#fi
> +
> + if [ -n "`which dvips`" ]; then
> + 	echo "   + dvips">&2
> diff --git a/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native_0.9.66.bb b/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native_0.9.66.bb
> index f3cd195..ed45ad9 100644
> --- a/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native_0.9.66.bb
> +++ b/meta/recipes-devtools/linuxdoc-tools/linuxdoc-tools-native_0.9.66.bb
> @@ -6,10 +6,12 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=5fbccc46cff2379505ca4e09c7d6ccfe"
>
>   DEPENDS = "openjade-native"
>
> -PR = "r0"
> +PR = "r1"
>
>   SRC_URI = "${DEBIAN_MIRROR}/main/l/linuxdoc-tools/linuxdoc-tools_${PV}.tar.gz \
> -           file://disable_sgml2rtf.patch"
> +           file://disable_sgml2rtf.patch \
> +           file://disable_tex_doc.patch \
> +           file://disable_dvips_doc.patch"
>
>   SRC_URI[md5sum] = "f214e79b0dd084689cd04f18722bd563"
>   SRC_URI[sha256sum] = "128cabb52ef8fb2f370ee488ea92bf4d8e49859200c7c8cae807abfe860a62ec"
Merged into Master and Bernard

Thanks
  	Sau!


