Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34605E00CB6; Thu, 21 Feb 2019 04:38:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
	[209.85.166.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1265EE00B92
	for <poky@yoctoproject.org>; Thu, 21 Feb 2019 04:38:05 -0800 (PST)
Received: by mail-io1-f68.google.com with SMTP id k21so1313429ior.13
	for <poky@yoctoproject.org>; Thu, 21 Feb 2019 04:38:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Zr/quT3OQDk+R86eaJF6N3pcV+bG7WZMG5Ovm7pHoNw=;
	b=G77BH/coRiurqlklxeOrXCd0wa55OCcsdGzz8bNYLrDz3Mst50xYODYiXRNZLuk2h6
	WujvvPbroTKAOVPyMLusfp3gd5BiAJvE9BrMuOufBv14pKDJTxC3UEyi2O0YjPsgxjPC
	U+zHdjC/nOFgv72TsIqR+zo7LwNZ7GRfSsUmQ+bu47k3kkVd2gkmMxzj7iwfaKNeJNaY
	/rsqNxHBE28Q51Wo6G6HlIJV6YHS3hf596dZwRw2qzfTlV2RvXSPbZ0o0DSkm9ibKhVP
	tByOFE/4TthFCssC5RZXUF8tQUL/HQRTgPYVLMRtgA0OgStfCRe9gfvpFUkzdikQ2OFg
	KKzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Zr/quT3OQDk+R86eaJF6N3pcV+bG7WZMG5Ovm7pHoNw=;
	b=W1swyMQMLVSNNh6b/1KM1/zfA6yRu7bI/uj2NGo7bm3nzvzPt1nce/DTARWfY27P8H
	AdmQONFJYsab+WuNrojt97pVqzF7VKePhTQQNoxNSLXArO6oMLOL31FHHxepJL9cOyZX
	a73Np4DrPi33ISk+gbkCT44um/bDfirrv7mgAFM/93F1+Y/sa4pwKLvL57A1OUCfJH1M
	v4gxCI1Uoq/rEW8VcMkwS6FrdsEKHyvrAdreUcsV+mPFlrEDsfpB27ykDaMmsu5VB0b7
	Dd76iUiaIZTfDDVSi5F4i4nCWiDOe/v5CKDLLWxDEoXi7hFvzetD4LPqGG8TiowwT+uI
	Tk4Q==
X-Gm-Message-State: AHQUAubLTk5N5ylWSYjqMUK+j14VHrICtXsIfQt6X3c1xBR88KT6I4Y/
	bvICc1jifiPIczgDyy/kgVxP98HjLX8TrN3ekNnghQ==
X-Google-Smtp-Source: AHgI3IafUKSAEWWg52RLoZLrSE4DZooAZPRFvSR/OtCBPEMcXm7zt93MkMpzNiH+SJVgNDM9jm5bNfYFAeCSnJ/b73E=
X-Received: by 2002:a5d:818d:: with SMTP id u13mr21832312ion.20.1550752685359; 
	Thu, 21 Feb 2019 04:38:05 -0800 (PST)
MIME-Version: 1.0
References: <1780990602.1036136.1550651634177.JavaMail.zimbra@inango-systems.com>
In-Reply-To: <1780990602.1036136.1550651634177.JavaMail.zimbra@inango-systems.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 21 Feb 2019 12:37:52 +0000
Message-ID: <CAJTo0LZpKBCGTKGH3bU_gsWkuWsEUkySg31oCdRRYZfag+OqJg@mail.gmail.com>
To: Ivan Efimov <i.efimov@inango-systems.com>
Cc: Architecture group <arch@inango-systems.com>,
	Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] btrfs-tools Makefile: 1) remove duplicate of '-o $@' option from CC cmdline; 2) disable "bttfs-fragments" tool compilation
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 21 Feb 2019 12:38:07 -0000
Content-Type: text/plain; charset="UTF-8"

oe-core patches to go the openembedded-core@lists.openembedded.org mailing list.

You'll need to rebase onto the btrfs-tools 4.20.1 that is now in master.

The patches you're applying are missing Upstream-Status and Signed-off-by tags.

Also if gd isn't in oe-core and btrfs-fragments depends on it, how
does the current recipe build?

Ross

On Wed, 20 Feb 2019 at 08:41, Ivan Efimov <i.efimov@inango-systems.com> wrote:
>
> 1) Command line for target "libbtrfsutil/%.o" contained double usage of '-o $@' option and causes error:
>
>      cc1: error: too many filenames given
>
> 2) "btrfs-fragments" tool depends on library "gd", but there is no "gd" recipe in Yocto Poky.
>    "btrfs-fragments" has been excluded from list of tools for compilation ("progs" Makefile variable)
>
> Signed-off-by: Ivan Efimov <i.efimov@inango-systems.com>
> ---
>  ...1-Makefile-disable-btrfs-fragments-compilation.patch | 15 +++++++++++++++
>  ...01-Makefile-fix-double-o-compiler-option-using.patch | 17 +++++++++++++++++
>  meta/recipes-devtools/btrfs-tools/btrfs-tools_4.19.1.bb |  2 ++
>  3 files changed, 34 insertions(+)
>  create mode 100644 meta/recipes-devtools/btrfs-tools/btrfs-tools/0001-Makefile-disable-btrfs-fragments-compilation.patch
>  create mode 100644 meta/recipes-devtools/btrfs-tools/btrfs-tools/0001-Makefile-fix-double-o-compiler-option-using.patch
>
> diff --git a/meta/recipes-devtools/btrfs-tools/btrfs-tools/0001-Makefile-disable-btrfs-fragments-compilation.patch b/meta/recipes-devtools/btrfs-tools/btrfs-tools/0001-Makefile-disable-btrfs-fragments-compilation.patch
> new file mode 100644
> index 0000000000..c20bde967d
> --- /dev/null
> +++ b/meta/recipes-devtools/btrfs-tools/btrfs-tools/0001-Makefile-disable-btrfs-fragments-compilation.patch
> @@ -0,0 +1,15 @@
> +"btrfs-fragments" tool requires library "gd" for compilation, but
> +  there is no "gd" recipe in Yocto Poky
> +Index: git/Makefile
> +===================================================================
> +--- git.orig/Makefile
> ++++ git/Makefile
> +@@ -217,7 +217,7 @@ progs_build = $(progs_install) btrfsck b
> +
> + # All programs. Use := instead of = so that this is expanded before we reassign
> + # progs_build below.
> +-progs := $(progs_build) btrfs-convert btrfs-fragments
> ++progs := $(progs_build) btrfs-convert
> +
> + ifneq ($(DISABLE_BTRFSCONVERT),1)
> + progs_install += btrfs-convert
> diff --git a/meta/recipes-devtools/btrfs-tools/btrfs-tools/0001-Makefile-fix-double-o-compiler-option-using.patch b/meta/recipes-devtools/btrfs-tools/btrfs-tools/0001-Makefile-fix-double-o-compiler-option-using.patch
> new file mode 100644
> index 0000000000..335067bc1f
> --- /dev/null
> +++ b/meta/recipes-devtools/btrfs-tools/btrfs-tools/0001-Makefile-fix-double-o-compiler-option-using.patch
> @@ -0,0 +1,17 @@
> +Command line for target "libbtrfsutil/%.o" contained double usage
> +  of '-o $@' option and caused error:
> +    cc1: error: too many filenames given
> +
> +Index: git/Makefile
> +===================================================================
> +--- git.orig/Makefile
> ++++ git/Makefile
> +@@ -414,7 +414,7 @@ libbtrfs.so.0 libbtrfs.so: libbtrfs.so.0
> +
> + libbtrfsutil/%.o: libbtrfsutil/%.c
> +       @echo "    [CC]     $@"
> +-      $(Q)$(CC) $(LIBBTRFSUTIL_CFLAGS) -o $@ -c $< -o $@
> ++      $(Q)$(CC) $(LIBBTRFSUTIL_CFLAGS) -c $< -o $@
> +
> + libbtrfsutil.so.$(libbtrfsutil_version): $(libbtrfsutil_objects)
> +       @echo "    [LD]     $@"
> diff --git a/meta/recipes-devtools/btrfs-tools/btrfs-tools_4.19.1.bb b/meta/recipes-devtools/btrfs-tools/btrfs-tools_4.19.1.bb
> index 2f59a0c13e..6b77ee796f 100644
> --- a/meta/recipes-devtools/btrfs-tools/btrfs-tools_4.19.1.bb
> +++ b/meta/recipes-devtools/btrfs-tools/btrfs-tools_4.19.1.bb
> @@ -19,6 +19,8 @@ SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/kdave/btrfs-progs.git \
>             file://0001-Makefile-build-mktables-using-native-gcc.patch \
>             file://0001-Add-LDFLAGS-when-building-libbtrfsutil.so.patch \
>             file://0001-Add-a-possibility-to-specify-where-python-modules-ar.patch \
> +           file://0001-Makefile-disable-btrfs-fragments-compilation.patch \
> +           file://0001-Makefile-fix-double-o-compiler-option-using.patch \
>             "
>
>  inherit autotools-brokensep pkgconfig manpages distutils3-base
> --
> 2.14.1
>
> [ https://inango.com/ |    ]
> Ivan Efimov
> Architect, Arch Group
> i.efimov@inango-systems.com
> T +7 343 298 0147 C +7 904 9 888 350
> [ https://inango.com/ | inango.com ] [ https://www.linkedin.com/company/inango ]
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

