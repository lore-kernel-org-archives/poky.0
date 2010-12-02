Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id E61DF4C803A5
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 03:47:12 -0600 (CST)
Received: from [192.168.0.7] (5ad4d784.bb.sky.com [90.212.215.132])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 2DFF412EC1F4
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 04:25:03 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <4CF6F396.9030805@linux.intel.com>
References: <4CF6F396.9030805@linux.intel.com>
Date: Thu, 02 Dec 2010 09:47:04 +0000
Message-ID: <1291283224.2534.0.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: [PATCH] Remove gstreamer and libtheora in favor of those in the base poky meta
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
X-List-Received-Date: Thu, 02 Dec 2010 09:47:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-12-01 at 17:17 -0800, Darren Hart wrote:
> Any objections?

None from me

> 
> From 3018332dc69843a9e4dbd6c11538f66d5dea9bf6 Mon Sep 17 00:00:00 2001
> From: Darren Hart <dvhart@linux.intel.com>
> Date: Wed, 1 Dec 2010 15:39:03 -0800
> Subject: [PATCH] Remove gstreamer and libtheora in favor of those in the base poky meta
> 
> The demo layer needed newer versions of gstreamer and libtheora than those
> provided by the base poky meta layer. Now that those have been updated,
> these can be removed. This also addresses a bug in gst-plugins-base where
> -DTREMOR caused the build to fail (possibly only on very parallel builds).
> The poky meta version of gstreamer removes the -DTREMOR directive via a
> patch.
> 
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> ---
>  recipes-multimedia/gstreamer/gst-meta-base_0.10.bb |   56 ---
>  .../gstreamer/gst-plugins-bad_0.10.20.bb           |   24 -
>  .../gstreamer/gst-plugins-base_0.10.30.bb          |   22 -
>  .../gstreamer/gst-plugins-good_0.10.25.bb          |   19 -
>  .../gstreamer/gst-plugins-ugly_0.10.16.bb          |   19 -
>  recipes-multimedia/gstreamer/gst-plugins.inc       |   41 --
>  .../gstreamer/gstreamer-0.10.30/check_fix.patch    |   17 -
>  .../gst-inspect-check-error.patch                  |   14 -
>  .../gstreamer-0.10.30/gstregistrybinary.c          |  487 --------------------
>  .../gstreamer-0.10.30/gstregistrybinary.h          |  194 --------
>  recipes-multimedia/gstreamer/gstreamer_0.10.30.bb  |   30 --
>  .../libtheora/libtheora-1.1.1/no-docs.patch        |   13 -
>  recipes-multimedia/libtheora/libtheora.inc         |   18 -
>  recipes-multimedia/libtheora/libtheora_1.1.1.bb    |    9 -
> 
>  14 files changed, 0 insertions(+), 963 deletions(-)
> 
>  delete mode 100644 recipes-multimedia/gstreamer/gst-meta-base_0.10.bb
>  delete mode 100644 recipes-multimedia/gstreamer/gst-plugins-bad_0.10.20.bb
>  delete mode 100644 recipes-multimedia/gstreamer/gst-plugins-base_0.10.30.bb
>  delete mode 100644 recipes-multimedia/gstreamer/gst-plugins-good_0.10.25.bb
>  delete mode 100644 recipes-multimedia/gstreamer/gst-plugins-ugly_0.10.16.bb
>  delete mode 100644 recipes-multimedia/gstreamer/gst-plugins.inc
>  delete mode 100644 recipes-multimedia/gstreamer/gstreamer-0.10.30/check_fix.patch
>  delete mode 100644 recipes-multimedia/gstreamer/gstreamer-0.10.30/gst-inspect-check-error.patch
>  delete mode 100644 recipes-multimedia/gstreamer/gstreamer-0.10.30/gstregistrybinary.c
>  delete mode 100644 recipes-multimedia/gstreamer/gstreamer-0.10.30/gstregistrybinary.h
>  delete mode 100644 recipes-multimedia/gstreamer/gstreamer_0.10.30.bb
>  delete mode 100644 recipes-multimedia/libtheora/libtheora-1.1.1/no-docs.patch
>  delete mode 100644 recipes-multimedia/libtheora/libtheora.inc
>  delete mode 100644 recipes-multimedia/libtheora/libtheora_1.1.1.bb
> 
> 
> Note: I've snipped the patch as it is strictly a removal of the above files.
> 

-- 
Joshua Lock
        Intel Open Source Technology Centre


