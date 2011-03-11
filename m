Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 891CB4C800A7
	for <poky@yoctoproject.org>; Fri, 11 Mar 2011 00:50:49 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 10 Mar 2011 22:50:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,301,1297065600"; d="scan'208";a="401054634"
Received: from unknown (HELO [10.255.17.57]) ([10.255.17.57])
	by azsmga001.ch.intel.com with ESMTP; 10 Mar 2011 22:50:46 -0800
Message-ID: <4D79C644.7000708@linux.intel.com>
Date: Thu, 10 Mar 2011 22:50:44 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Kang Kai <kai.kang@windriver.com>
References: <cover.1299727511.git.kai.kang@windriver.com>
	<108cd6309917017e537b63d8951f7c9b6f48bb08.1299727511.git.kai.kang@windriver.com>
In-Reply-To: <108cd6309917017e537b63d8951f7c9b6f48bb08.1299727511.git.kai.kang@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] PATCH: fix Bug 812 about slang
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
X-List-Received-Date: Fri, 11 Mar 2011 06:50:49 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/09/2011 10:07 PM, Kang Kai wrote:
> From: Kang Kai<kai.kang@windriver.com>
>
> Fix cross compile warnings: when bitbake slang, it links to building machine's
> library, add fix-cross-configure.patch to fix it.
>
> Add necessary files to run slsh.
>
> Signed-off-by: Kang Kai<kai.kang@windriver.com>
> ---
>   .../slang/slang/fix-cross-configure.patch          |   16 ++++++++++++++++
>   meta/recipes-extended/slang/slang_2.2.2.bb         |    7 +++++--
>   2 files changed, 21 insertions(+), 2 deletions(-)
>   create mode 100644 meta/recipes-extended/slang/slang/fix-cross-configure.patch
>
> diff --git a/meta/recipes-extended/slang/slang/fix-cross-configure.patch b/meta/recipes-extended/slang/slang/fix-cross-configure.patch
> new file mode 100644
> index 0000000..0a22a1f
> --- /dev/null
> +++ b/meta/recipes-extended/slang/slang/fix-cross-configure.patch
> @@ -0,0 +1,16 @@
> +$(SLANG_INST_LIB) refer to absolute dir /usr/lib, it will make link to build machine's library
> +when do cross compilation, remove it.
> +
> +create by Kang Kai<kai.kang@windriver.com>
> +--- slang-2.2.2/slsh/Makefile.in.orig	2011-03-09 10:17:25.315245968 +0800
> ++++ slang-2.2.2/slsh/Makefile.in	2011-03-09 10:17:48.425245969 +0800
> +@@ -65,7 +65,8 @@
> + @SET_MAKE@
> + SHELL = /bin/sh
> + #INST_LIBS = $(RPATH) $(SLANG_INST_LIB) $(DEST_LIB_DIR) -lslang $(READLINE_LIB) $(OTHER_LIBS)
> +-INST_LIBS = $(DEST_LIB_DIR) $(RPATH) $(SLANG_INST_LIB) -lslang $(READLINE_LIB) $(OTHER_LIBS)
> ++#INST_LIBS = $(DEST_LIB_DIR) $(RPATH) $(SLANG_INST_LIB) -lslang $(READLINE_LIB) $(OTHER_LIBS)
> ++INST_LIBS = $(DEST_LIB_DIR) $(RPATH) -lslang $(READLINE_LIB) $(OTHER_LIBS)
> + DEFS = -DSLSH_CONF_DIR='"$(SLSH_CONF_DIR)"' -DSLSH_PATH='"$(SLSH_LIB_DIR)"' \
> +  -DSLSH_CONF_DIR_ENV='$(SLSH_CONF_DIR_ENV)' -DSLSH_LIB_DIR_ENV='$(SLSH_LIB_DIR_ENV)' \
> +  -DSLSH_PATH_ENV='$(SLSH_PATH_ENV)'

This is not the right approach, you should be looking at modifiying the 
configure script.

> diff --git a/meta/recipes-extended/slang/slang_2.2.2.bb b/meta/recipes-extended/slang/slang_2.2.2.bb
> index 7fe76af..2498d85 100644
> --- a/meta/recipes-extended/slang/slang
>   DEPENDS = "pcre"
> -PR = "r0"
> +PR = "r1"
>
>   LICENSE = "GPL Artistic"
>   LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3"
>
>
>   SRC_URI = "ftp://space.mit.edu/pub/davis/slang/v2.2/OLD/slang-${PV}.tar.bz2 \
> -           file://fix-uclibc.patch"
> +           file://fix-uclibc.patch \
> +           file://fix-cross-configure.patch"
>
>   inherit autotools
>
>   SRC_URI[md5sum] = "974437602a781cfe92ab61433dd16d03"
>   SRC_URI[sha256sum] = "cfaf8551fa3855f9b0043309bb553ef6d457f931b404df5a6ba6a5a69371fc42"
> +
> +FILES_${PN} += "/usr/share/slsh/"
This should be ${datadir}/slsh

Sau!

