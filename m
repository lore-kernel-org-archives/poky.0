Return-Path: <raj.khem@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B8F8E00718
	for <poky@yoctoproject.org>; Sat, 21 Jan 2012 14:58:35 -0800 (PST)
Received: by iagj37 with SMTP id j37so3901853iag.35
	for <poky@yoctoproject.org>; Sat, 21 Jan 2012 14:58:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=eR8Kl7QFyi4sy1owBmWc+OambocNPJKS6FWr2QWyWaQ=;
	b=F/DJKH0U49MctuwEyv5EQkJJTBQpcS4NR8dBedqq9QUQyy1fUP6j2YxhuQd6ks1lpk
	pluJdRdakz7ZfdhbMthAWY7hCc637NHdH7+P2RPSoXOoqgmFPpeWk79TbYKnlYprhalr
	d1ZeSnS10yBDHxU4z3ca9io6YJ5fe1+MDMFlg=
Received: by 10.50.88.163 with SMTP id bh3mr3805412igb.0.1327186714695;
	Sat, 21 Jan 2012 14:58:34 -0800 (PST)
Received: from sakrah.homelinux.org
	(99-57-141-118.lightspeed.sntcca.sbcglobal.net. [99.57.141.118])
	by mx.google.com with ESMTPS id bj1sm6863827igb.0.2012.01.21.14.58.31
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 21 Jan 2012 14:58:32 -0800 (PST)
Date: Sat, 21 Jan 2012 14:58:23 -0800
From: Khem Raj <raj.khem@gmail.com>
To: Derek Buitenhuis <derek.buitenhuis@gmail.com>
Message-ID: <20120121225823.GA12691@sakrah.homelinux.org>
Mail-Followup-To: Derek Buitenhuis <derek.buitenhuis@gmail.com>,
	poky@yoctoproject.org
References: <1325640237-17019-1-git-send-email-derek.buitenhuis@gmail.com>
	<1325640237-17019-2-git-send-email-derek.buitenhuis@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1325640237-17019-2-git-send-email-derek.buitenhuis@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 2/2] binutils: Allow plugins
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
X-List-Received-Date: Sat, 21 Jan 2012 22:58:35 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On (03/01/12 20:23), Derek Buitenhuis wrote:
> Make sure it's possible to build binutils with
> plugin support.
> 
> Signed-off-by: Derek Buitenhuis <derek.buitenhuis@gmail.com>
> ---
>  .../binutils/binutils-cross-canadian.inc           |    3 ++-
>  meta/recipes-devtools/binutils/binutils-cross.inc  |    3 ++-
>  2 files changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/meta/recipes-devtools/binutils/binutils-cross-canadian.inc b/meta/recipes-devtools/binutils/binutils-cross-canadian.inc
> index 00648a6..4f20ad7 100644
> --- a/meta/recipes-devtools/binutils/binutils-cross-canadian.inc
> +++ b/meta/recipes-devtools/binutils/binutils-cross-canadian.inc
> @@ -8,7 +8,8 @@ DEPENDS = "flex-native bison-native virtual/${HOST_PREFIX}gcc-crosssdk virtual/l
>  EXTRA_OECONF = "--with-sysroot=${SDKPATH}/sysroots/${TUNE_PKGARCH}${TARGET_VENDOR}-${TARGET_OS} \
>                  --program-prefix=${TARGET_PREFIX} \
>                  --disable-werror \
> -                ${@base_contains('DISTRO_FEATURES', 'ld-is-gold', '--enable-gold=default', '', d)}"
> +                ${@base_contains('DISTRO_FEATURES', 'ld-is-gold', '--enable-gold=default', '', d)} \
> +                ${@base_contains('DISTRO_FEATURES', 'binutils-plugins', '--enable-plugins', '', d)}"

enabling plugins regardless is a good thing and since we use binutils
2.22+ now a days in oe-core plugins are well supported. Please submit the patch
where you add this option (--enable-plugins) to binutils common configure
that will be add to EXTRA_OECONF in binutils.inc

-Khem


