Return-Path: <lpapp@archlinux.us>
Received: from mail-pb0-f47.google.com (mail-pb0-f47.google.com
	[209.85.160.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94BBDE008DF
	for <poky@yoctoproject.org>; Tue, 25 Feb 2014 05:29:23 -0800 (PST)
Received: by mail-pb0-f47.google.com with SMTP id up15so1581057pbc.34
	for <poky@yoctoproject.org>; Tue, 25 Feb 2014 05:29:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=3fuuq20i3btbu0rOBCG/PBQkL5xuYeObiMtRhrmZlJk=;
	b=dQNvTrEBhs6/kKPKQYl79syW60CxD0qRGEStvnzS2f53ESLBiarzf59PDaq/Yudmli
	YPZHIOjG6yHSxFSZNmsxpqnptbMSOpSv237pXTsEjgerW4xRW42DG8yvMenSX8kbrld/
	uNABWK8MKso8vxAjBZ3i4b7O/4ZyMKIEWfzp1zNJEVBeYQJZVbPbDjbraEGyCVpND2Lt
	4LYgvIgDwrEnaEswC5TA0ewY1PGrU/0j+Og6zICqUbgvWoedK2+QHDJTy03Uz/Hdtpmk
	Gox2keNiUHuIs9VH5m1bjve/U/SoWMQ3pYLsqwowqh5Nh9UBrAsWbKYhfxtcnpfNlzwe
	1v4g==
X-Gm-Message-State: ALoCoQnbsNM/OOcreH79inoYlQuCabp2w7sWXl/qaIkQK4SeGRxGQ/EzQvRz83A5a5SI/REC7vZv
MIME-Version: 1.0
X-Received: by 10.69.31.97 with SMTP id kl1mr6671976pbd.62.1393334961821; Tue,
	25 Feb 2014 05:29:21 -0800 (PST)
Sender: lpapp@archlinux.us
Received: by 10.70.26.195 with HTTP; Tue, 25 Feb 2014 05:29:21 -0800 (PST)
In-Reply-To: <1393335301-26357-1-git-send-email-cristiana.voicu@intel.com>
References: <1393335301-26357-1-git-send-email-cristiana.voicu@intel.com>
Date: Tue, 25 Feb 2014 13:29:21 +0000
X-Google-Sender-Auth: G8KmE-Yjj31GF0hY9oXVGbBahaQ
Message-ID: <CAOMwXhM+CWeYqgXiFxWFwFeDU7zK08q4c3_tOYFPuJMeVrL7dQ@mail.gmail.com>
From: Laszlo Papp <lpapp@kde.org>
To: Cristiana Voicu <cristiana.voicu@intel.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] meta-hob: this layer is not necessary
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
X-List-Received-Date: Tue, 25 Feb 2014 13:29:26 -0000
Content-Type: text/plain; charset=ISO-8859-1

I personally support this. I have never understood the existence of
this layer. It was always a stable removal material at updates for me.

On Tue, Feb 25, 2014 at 1:35 PM, Cristiana Voicu
<cristiana.voicu@intel.com> wrote:
> Meta-hob layer is not necessary, because the images can be
> placed in the build directory. Patches for this are on the
> bitbake-devel list.
>
> [YOCTO #5118]
> Signed-off-by: Cristiana Voicu <cristiana.voicu@intel.com>
> ---
>  meta-hob/COPYING.MIT     |   17 -----------------
>  meta-hob/conf/layer.conf |   15 ---------------
>  2 files changed, 32 deletions(-)
>  delete mode 100644 meta-hob/COPYING.MIT
>  delete mode 100644 meta-hob/conf/layer.conf
>
> diff --git a/meta-hob/COPYING.MIT b/meta-hob/COPYING.MIT
> deleted file mode 100644
> index fb950dc..0000000
> --- a/meta-hob/COPYING.MIT
> +++ /dev/null
> @@ -1,17 +0,0 @@
> -Permission is hereby granted, free of charge, to any person obtaining a copy
> -of this software and associated documentation files (the "Software"), to deal
> -in the Software without restriction, including without limitation the rights
> -to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
> -copies of the Software, and to permit persons to whom the Software is
> -furnished to do so, subject to the following conditions:
> -
> -The above copyright notice and this permission notice shall be included in
> -all copies or substantial portions of the Software.
> -
> -THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> -IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> -FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
> -AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> -LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> -OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
> -THE SOFTWARE.
> diff --git a/meta-hob/conf/layer.conf b/meta-hob/conf/layer.conf
> deleted file mode 100644
> index 1785e65..0000000
> --- a/meta-hob/conf/layer.conf
> +++ /dev/null
> @@ -1,15 +0,0 @@
> -# We have a conf and classes directory, add to BBPATH
> -BBPATH .= ":${LAYERDIR}"
> -
> -# We have recipes-* directories, add to BBFILES
> -BBFILES += "${LAYERDIR}/recipes-*/*/*.bb"
> -
> -BBFILE_COLLECTIONS += "hob"
> -BBFILE_PATTERN_hob = "^${LAYERDIR}/"
> -BBFILE_PRIORITY_hob = "1"
> -
> -# This should only be incremented on significant changes that will
> -# cause compatibility issues with other layers
> -LAYERVERSION_hob = "1"
> -
> -LAYERDEPENDS_hob = "core"
> --
> 1.7.9.5
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

