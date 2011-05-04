Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0CF814C80A73
	for <poky@yoctoproject.org>; Tue,  3 May 2011 20:39:01 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 03 May 2011 18:39:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,312,1301900400"; d="scan'208";a="917627318"
Received: from unknown (HELO [10.255.13.11]) ([10.255.13.11])
	by fmsmga001.fm.intel.com with ESMTP; 03 May 2011 18:39:00 -0700
Message-ID: <4DC0AE34.6070401@intel.com>
Date: Tue, 03 May 2011 18:39:00 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Kang Kai <kai.kang@windriver.com>
References: <cover.1304412927.git.kai.kang@windriver.com>
	<5625530be6f90e68c3fe26a397d57d6fcb82a1fd.1304412927.git.kai.kang@windriver.com>
In-Reply-To: <5625530be6f90e68c3fe26a397d57d6fcb82a1fd.1304412927.git.kai.kang@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 2/2] ghostscript: added to pass LSB commands check
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
X-List-Received-Date: Wed, 04 May 2011 01:39:02 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/03/2011 02:28 AM, Kang Kai wrote:
> From: Kang Kai<kai.kang@windriver.com>
>
> Add ghostscript to pass LSB commands check and Printing test
>
So these are new recipes?

> Signed-off-by: Kang Kai<kai.kang@windriver.com>
> ---
>   .../ghostscript/ghostscript-native_9.02.bb         |   35 ++++++++

Can this be re-written to use BBCLASSEXTEND = "native" and merge with 
the base ghostscript case?

>   .../ghostscript-9.02-prevent_recompiling.patch     |   92 ++++++++++++++++++++
The patch requires an "Upstream-status:" tag indicating the status for 
upstreaming, please refer to older emails regarding this tag.

Sau!

>   .../ghostscript/ghostscript_9.02.bb                |   40 +++++++++
>   3 files changed, 167 insertions(+), 0 deletions(-)
>   create mode 100644 meta/recipes-extended/ghostscript/ghostscript-native_9.02.bb
>   create mode 100644 meta/recipes-extended/ghostscript/ghostscript/ghostscript-9.02-prevent_recompiling.patch
>   create mode 100644 meta/recipes-extended/ghostscript/ghostscript_9.02.bb
>
> diff --git a/meta/recipes-extended/ghostscript/ghostscript-native_9.02.bb b/meta/recipes-extended/ghostscript/ghostscript-native_9.02.bb
> new file mode 100644
> index 0000000..4927348
> --- /dev/null
> +++ b/meta/recipes-extended/ghostscript/ghostscript-native_9.02.bb
> @@ -0,0 +1,35 @@
> +SUMMARY = "The GPL Ghostscript PostScript/PDF interpreter"
> +DESCRIPTION = "Only used to cross build Ghostscript itself"
> +HOMEPAGE = "http://www.ghostscript.com"
> +SECTION = "console/utils"
> +
> +LICENSE = "GPLv3"
> +LIC_FILES_CHKSUM = "file://LICENSE;md5=d151214b3131251dfc9d858593acbd24"
> +
> +PR = "r0"
> +
> +DEPENDS += "tiff"
> +
> +SRC_URI = "http://downloads.ghostscript.com/public/ghostscript-${PV}.tar.bz2"
> +
> +SRC_URI[md5sum] = "f67151444bd56a7904579fc75a083dd6"
> +SRC_URI[sha256sum] = "03ea2cad13a36f8f9160912012b79619a826e7148fada6d3531feb25409ee05a"
> +
> +EXTRA_OECONF = "--with-system-libtiff --without-jbig2dec --without-jasper"
> +
> +inherit autotools native
> +
> +do_compile() {
> +    mkdir -p obj
> +    for i in genarch genconf mkromfs echogs gendev genht; do
> +        oe_runmake obj/$i
> +    done
> +}
> +
> +
> +do_install() {
> +    install -d ${D}${bindir}/ghostscript-${PV}
> +    for i in genarch genconf mkromfs echogs gendev genht; do
> +        install -m 755 obj/$i ${D}${bindir}/ghostscript-${PV}/$i
> +    done
> +}
> diff --git a/meta/recipes-extended/ghostscript/ghostscript/ghostscript-9.02-prevent_recompiling.patch b/meta/recipes-extended/ghostscript/ghostscript/ghostscript-9.02-prevent_recompiling.patch
> new file mode 100644
> index 0000000..914042a
> --- /dev/null
> +++ b/meta/recipes-extended/ghostscript/ghostscript/ghostscript-9.02-prevent_recompiling.patch
> @@ -0,0 +1,92 @@
> +Just use commands provided by ghostscript-native, preventing recompile them
> +Way to enable cross compile.
> +
> +Signed-off-by: Kang Kai<kai.kang@windriver.com>
> +
> +--- a/base/unix-aux.mak.orig	2011-05-03 15:35:55.196887997 +0800
> ++++ b/base/unix-aux.mak	2011-05-03 15:37:57.766888003 +0800
> +@@ -57,45 +57,45 @@ $(GLOBJ)gp_sysv.$(OBJ): $(GLSRC)gp_sysv.
> +
> + # -------------------------- Auxiliary programs --------------------------- #
> +
> +-$(ECHOGS_XE): $(GLSRC)echogs.c $(AK) $(stdpre_h)
> +-	$(CCAUX) $(I_)$(GLSRCDIR)$(_I) $(O_)$(ECHOGS_XE) $(GLSRC)echogs.c
> +-
> +-# On the RS/6000 (at least), compiling genarch.c with gcc with -O
> +-# produces a buggy executable.
> +-$(GENARCH_XE): $(GLSRC)genarch.c $(AK) $(GENARCH_DEPS)
> +-	$(CCAUX) $(I_)$(GLSRCDIR)$(_I) $(O_)$(GENARCH_XE) $(GLSRC)genarch.c
> +-
> +-$(GENCONF_XE): $(GLSRC)genconf.c $(AK) $(GENCONF_DEPS)
> +-	$(CCAUX) $(I_)$(GLSRCDIR)$(_I) $(O_)$(GENCONF_XE) $(GLSRC)genconf.c
> +-
> +-$(GENDEV_XE): $(GLSRC)gendev.c $(AK) $(GENDEV_DEPS)
> +-	$(CCAUX) $(I_)$(GLSRCDIR)$(_I) $(O_)$(GENDEV_XE) $(GLSRC)gendev.c
> +-
> +-$(GENHT_XE): $(GLSRC)genht.c $(AK) $(GENHT_DEPS)
> +-	$(CCAUX) $(GENHT_CFLAGS) $(O_)$(GENHT_XE) $(GLSRC)genht.c
> +-
> +-# To get GS to use the system zlib, you remove/hide the gs/zlib directory
> +-# which means that the mkromfs build can't find the zlib source it needs.
> +-# So it's split into two targets, one using the zlib source directly.....
> +-MKROMFS_OBJS_0=$(MKROMFS_ZLIB_OBJS) $(GLOBJ)gscdefs.$(OBJ) $(GLOBJ)gsmisc.$(OBJ) \
> +- $(GLOBJ)gpmisc.$(OBJ) $(GLOBJ)gslibctx.$(OBJ) $(GLOBJ)gp_getnv.$(OBJ) \
> +- $(GLOBJ)gp_unix.$(OBJ) $(GLOBJ)gp_unifs.$(OBJ) $(GLOBJ)gp_unifn.$(OBJ) \
> +- $(GLOBJ)gp_stdia.$(OBJ) $(GLOBJ)gsutil.$(OBJ)
> +-
> +-$(MKROMFS_XE)_0: $(GLSRC)mkromfs.c $(MKROMFS_COMMON_DEPS) $(MKROMFS_OBJS_0)
> +-	$(CCAUX) $(GENOPT) $(CFLAGS) $(I_)$(GLSRCDIR)$(_I) $(I_)$(GLOBJ)$(_I) $(I_)$(ZSRCDIR)$(_I) $(GLSRC)mkromfs.c $(O_)$(MKROMFS_XE)_0 $(MKROMFS_OBJS_0) -lm $(EXTRALIBS)
> +-
> +-# .... and one using the zlib library linked via the command line
> +-MKROMFS_OBJS_1=$(GLOBJ)gscdefs.$(OBJ) $(GLOBJ)gsmisc.$(OBJ) \
> +- $(GLOBJ)gpmisc.$(OBJ) $(GLOBJ)gslibctx.$(OBJ) $(GLOBJ)gp_getnv.$(OBJ) \
> +- $(GLOBJ)gp_unix.$(OBJ) $(GLOBJ)gp_unifs.$(OBJ) $(GLOBJ)gp_unifn.$(OBJ) \
> +- $(GLOBJ)gp_stdia.$(OBJ) $(GLOBJ)gsutil.$(OBJ)
> +-
> +-$(MKROMFS_XE)_1: $(GLSRC)mkromfs.c $(MKROMFS_COMMON_DEPS) $(MKROMFS_OBJS_1)
> +-	$(CCAUX) $(GENOPT) $(CFLAGS) $(I_)$(GLSRCDIR)$(_I) $(I_)$(GLOBJ)$(_I) $(I_)$(ZSRCDIR)$(_I) $(GLSRC)mkromfs.c $(O_)$(MKROMFS_XE)_1 $(MKROMFS_OBJS_1) -lm $(EXTRALIBS)
> +-
> +-$(MKROMFS_XE): $(MKROMFS_XE)_$(SHARE_ZLIB)
> +-	$(CP_) $(MKROMFS_XE)_$(SHARE_ZLIB) $(MKROMFS_XE)
> ++#$(ECHOGS_XE): $(GLSRC)echogs.c $(AK) $(stdpre_h)
> ++#	$(CCAUX) $(I_)$(GLSRCDIR)$(_I) $(O_)$(ECHOGS_XE) $(GLSRC)echogs.c
> ++#
> ++## On the RS/6000 (at least), compiling genarch.c with gcc with -O
> ++## produces a buggy executable.
> ++#$(GENARCH_XE): $(GLSRC)genarch.c $(AK) $(GENARCH_DEPS)
> ++#	$(CCAUX) $(I_)$(GLSRCDIR)$(_I) $(O_)$(GENARCH_XE) $(GLSRC)genarch.c
> ++#
> ++#$(GENCONF_XE): $(GLSRC)genconf.c $(AK) $(GENCONF_DEPS)
> ++#	$(CCAUX) $(I_)$(GLSRCDIR)$(_I) $(O_)$(GENCONF_XE) $(GLSRC)genconf.c
> ++#
> ++#$(GENDEV_XE): $(GLSRC)gendev.c $(AK) $(GENDEV_DEPS)
> ++#	$(CCAUX) $(I_)$(GLSRCDIR)$(_I) $(O_)$(GENDEV_XE) $(GLSRC)gendev.c
> ++#
> ++#$(GENHT_XE): $(GLSRC)genht.c $(AK) $(GENHT_DEPS)
> ++#	$(CCAUX) $(GENHT_CFLAGS) $(O_)$(GENHT_XE) $(GLSRC)genht.c
> ++#
> ++## To get GS to use the system zlib, you remove/hide the gs/zlib directory
> ++## which means that the mkromfs build can't find the zlib source it needs.
> ++## So it's split into two targets, one using the zlib source directly.....
> ++#MKROMFS_OBJS_0=$(MKROMFS_ZLIB_OBJS) $(GLOBJ)gscdefs.$(OBJ) $(GLOBJ)gsmisc.$(OBJ) \
> ++# $(GLOBJ)gpmisc.$(OBJ) $(GLOBJ)gslibctx.$(OBJ) $(GLOBJ)gp_getnv.$(OBJ) \
> ++# $(GLOBJ)gp_unix.$(OBJ) $(GLOBJ)gp_unifs.$(OBJ) $(GLOBJ)gp_unifn.$(OBJ) \
> ++# $(GLOBJ)gp_stdia.$(OBJ) $(GLOBJ)gsutil.$(OBJ)
> ++#
> ++#$(MKROMFS_XE)_0: $(GLSRC)mkromfs.c $(MKROMFS_COMMON_DEPS) $(MKROMFS_OBJS_0)
> ++#	$(CCAUX) $(GENOPT) $(CFLAGS) $(I_)$(GLSRCDIR)$(_I) $(I_)$(GLOBJ)$(_I) $(I_)$(ZSRCDIR)$(_I) $(GLSRC)mkromfs.c $(O_)$(MKROMFS_XE)_0 $(MKROMFS_OBJS_0) -lm $(EXTRALIBS)
> ++#
> ++## .... and one using the zlib library linked via the command line
> ++#MKROMFS_OBJS_1=$(GLOBJ)gscdefs.$(OBJ) $(GLOBJ)gsmisc.$(OBJ) \
> ++# $(GLOBJ)gpmisc.$(OBJ) $(GLOBJ)gslibctx.$(OBJ) $(GLOBJ)gp_getnv.$(OBJ) \
> ++# $(GLOBJ)gp_unix.$(OBJ) $(GLOBJ)gp_unifs.$(OBJ) $(GLOBJ)gp_unifn.$(OBJ) \
> ++# $(GLOBJ)gp_stdia.$(OBJ) $(GLOBJ)gsutil.$(OBJ)
> ++#
> ++#$(MKROMFS_XE)_1: $(GLSRC)mkromfs.c $(MKROMFS_COMMON_DEPS) $(MKROMFS_OBJS_1)
> ++#	$(CCAUX) $(GENOPT) $(CFLAGS) $(I_)$(GLSRCDIR)$(_I) $(I_)$(GLOBJ)$(_I) $(I_)$(ZSRCDIR)$(_I) $(GLSRC)mkromfs.c $(O_)$(MKROMFS_XE)_1 $(MKROMFS_OBJS_1) -lm $(EXTRALIBS)
> ++#
> ++#$(MKROMFS_XE): $(MKROMFS_XE)_$(SHARE_ZLIB)
> ++#	$(CP_) $(MKROMFS_XE)_$(SHARE_ZLIB) $(MKROMFS_XE)
> +
> + # Query the environment to construct gconfig_.h.
> + # The "else true;" is required because Ultrix's implementation of sh -e
> diff --git a/meta/recipes-extended/ghostscript/ghostscript_9.02.bb b/meta/recipes-extended/ghostscript/ghostscript_9.02.bb
> new file mode 100644
> index 0000000..25e9c2c
> --- /dev/null
> +++ b/meta/recipes-extended/ghostscript/ghostscript_9.02.bb
> @@ -0,0 +1,40 @@
> +SUMMARY = "The GPL Ghostscript PostScript/PDF interpreter"
> +DESCRIPTION = "Ghostscript is used for PostScript/PDF preview and printing.  Usually as \
> +a back-end to a program such as ghostview, it can display PostScript and PDF \
> +documents in an X11 environment. \
> +\
> +Furthermore, it can render PostScript and PDF files as graphics to be printed \
> +on non-PostScript printers. Supported printers include common \
> +dot-matrix, inkjet and laser models. \
> +\
> +Package gsfonts contains a set of standard fonts for Ghostscript. \
> +"
> +HOMEPAGE = "http://www.ghostscript.com"
> +SECTION = "console/utils"
> +
> +LICENSE = "GPLv3"
> +LIC_FILES_CHKSUM = "file://LICENSE;md5=d151214b3131251dfc9d858593acbd24"
> +
> +PR = "r0"
> +
> +DEPENDS += "tiff ${PN}-native"
> +
> +SRC_URI = "http://downloads.ghostscript.com/public/ghostscript-${PV}.tar.bz2 \
> +           file://ghostscript-9.02-prevent_recompiling.patch \
> +           "
> +
> +SRC_URI[md5sum] = "f67151444bd56a7904579fc75a083dd6"
> +SRC_URI[sha256sum] = "03ea2cad13a36f8f9160912012b79619a826e7148fada6d3531feb25409ee05a"
> +
> +EXTRA_OECONF = "--with-system-libtiff --without-jbig2dec --without-jasper"
> +
> +do_configure_append() {
> +    # copy tools from the native ghostscript build
> +    mkdir -p obj soobj
> +    for i in genarch genconf mkromfs echogs gendev genht; do
> +        cp ${STAGING_BINDIR_NATIVE}/ghostscript-${PV}/$i obj/$i
> +        cp ${STAGING_BINDIR_NATIVE}/ghostscript-${PV}/$i soobj/$i
> +    done
> +}
> +
> +inherit autotools


