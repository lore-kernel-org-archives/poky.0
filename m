Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2A1AC4C800A3
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 13:15:36 -0600 (CST)
Received: from [172.10.10.228] (unknown [67.232.160.146])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id DC32912EC11A
	for <poky@yoctoproject.org>; Thu, 10 Mar 2011 13:58:40 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <e1692bf2937813717780e2c58a0fb803bb190fa3.1299775598.git.sgw@linux.intel.com>
References: <cover.1299775598.git.sgw@linux.intel.com>
	<e1692bf2937813717780e2c58a0fb803bb190fa3.1299775598.git.sgw@linux.intel.com>
Date: Thu, 10 Mar 2011 11:14:55 -0800
Message-ID: <1299784495.22278.1.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: [PATCH 1/8] oprofileui: upgrade to the latest version maintained by the Yocto project
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
X-List-Received-Date: Thu, 10 Mar 2011 19:15:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-03-10 at 08:50 -0800, Saul Wold wrote:
> From: Dexuan Cui <dexuan.cui@intel.com>
> 
> Oprofileui at http://labs.o-hand.com/oprofileui/ is not maintained now, so
> we should change SRC_URI to the one maintained by the Yocto project. This
> one includes new bugfixes.
> 
> This fixes [YOCTO #820]
> 
> Signed-off-by: Dexuan Cui <dexuan.cui@intel.com>
> ---
>  .../conf/distro/include/poky-default-revisions.inc |    2 +-
>  meta/recipes-kernel/oprofile/oprofileui-git.inc    |   10 ++++++++++
>  meta/recipes-kernel/oprofile/oprofileui-svn.inc    |    9 ---------
>  meta/recipes-kernel/oprofile/oprofileui_git.bb     |    2 ++
>  meta/recipes-kernel/oprofile/oprofileui_svn.bb     |    2 --
>  5 files changed, 13 insertions(+), 12 deletions(-)
>  create mode 100644 meta/recipes-kernel/oprofile/oprofileui-git.inc
>  delete mode 100644 meta/recipes-kernel/oprofile/oprofileui-svn.inc
>  create mode 100644 meta/recipes-kernel/oprofile/oprofileui_git.bb
>  delete mode 100644 meta/recipes-kernel/oprofile/oprofileui_svn.bb
> 
> diff --git a/meta/conf/distro/include/poky-default-revisions.inc b/meta/conf/distro/include/poky-default-revisions.inc
> index 36202a1..aee1749 100644
> --- a/meta/conf/distro/include/poky-default-revisions.inc
> +++ b/meta/conf/distro/include/poky-default-revisions.inc
> @@ -146,7 +146,7 @@ SRCREV_pn-opkg-nogpg-native ??= "${OPKGSRCREV}"
>  SRCREV_pn-opkg-nogpg-nativesdk ??= "${OPKGSRCREV}"
>  SRCREV_pn-opkg-utils-native ??= "4747"
>  SRCREV_pn-opkg-utils ??= "4747"
> -SRCREV_pn-oprofileui ??= "197"
> +SRCREV_pn-oprofileui ??= "e2d998d8a55dc1e49d1588841f83eff8e6809753"
>  SRCREV_pn-tcf-agent ??= "1078"
>  SRCREV_pn-osc-native ??= "9096"
>  SRCREV_pn-owl-video ??= "394"
> diff --git a/meta/recipes-kernel/oprofile/oprofileui-git.inc b/meta/recipes-kernel/oprofile/oprofileui-git.inc
> new file mode 100644
> index 0000000..b4a573b
> --- /dev/null
> +++ b/meta/recipes-kernel/oprofile/oprofileui-git.inc
> @@ -0,0 +1,10 @@
> +require oprofileui.inc
> +
> +PV = "0.0+git${SRCPV}"
> +PR = "r2"
> +
> +S = "${WORKDIR}/git"
> +
> +# Oprofileui at http://labs.o-hand.com/oprofileui/ is not maintained now.
> +SRC_URI = "git://git.pokylinux.org/oprofileui;protocol=git \
> +           file://dso_linking_change_build_fix.patch "
> diff --git a/meta/recipes-kernel/oprofile/oprofileui-svn.inc b/meta/recipes-kernel/oprofile/oprofileui-svn.inc
> deleted file mode 100644
> index 5d40914..0000000
> --- a/meta/recipes-kernel/oprofile/oprofileui-svn.inc
> +++ /dev/null
> @@ -1,9 +0,0 @@
> -require oprofileui.inc
> -
> -PV = "0.0+svnr${SRCPV}"
> -PR = "r1"
> -
> -S = "${WORKDIR}/trunk"
> -
> -SRC_URI = "svn://svn.o-hand.com/repos/oprofileui;module=trunk;proto=http \
> -           file://dso_linking_change_build_fix.patch "
> diff --git a/meta/recipes-kernel/oprofile/oprofileui_git.bb b/meta/recipes-kernel/oprofile/oprofileui_git.bb
> new file mode 100644
> index 0000000..705f4e1
> --- /dev/null
> +++ b/meta/recipes-kernel/oprofile/oprofileui_git.bb
> @@ -0,0 +1,2 @@
> +require oprofileui-git.inc
> +

Any reason you've done it htis way?
Can we merge the contents of oprofileui-git.inc into oprofileui_git.bb
and delete oprofileui-git.inc only have one file here?

inc files are useful for sharing metadata between several recipes but
since we only have one recipe here (and should only ever provide one
_git recipe) the inc file is pretty superfluous at this time.

Thanks,
Joshua

> diff --git a/meta/recipes-kernel/oprofile/oprofileui_svn.bb b/meta/recipes-kernel/oprofile/oprofileui_svn.bb
> deleted file mode 100644
> index 39e10b4..0000000
> --- a/meta/recipes-kernel/oprofile/oprofileui_svn.bb
> +++ /dev/null
> @@ -1,2 +0,0 @@
> -require oprofileui-svn.inc
> -

-- 
Joshua Lock
        Yocto Build System Monkey
        Intel Open Source Technology Centre


