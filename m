Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4A79E00502
	for <poky@yoctoproject.org>; Wed, 30 Nov 2011 19:22:57 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by lagv3 with SMTP id v3so775438lag.35
	for <poky@yoctoproject.org>; Wed, 30 Nov 2011 19:22:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=gHSjPC98Pa9OqRHtQRzqYX/RLEuv02rnscBDyv0098Y=;
	b=IT6o5AVmGOaB7krdM98dFODvruDukMfdhaP6SeOzKFltY81oy51aiB4q+ssFoybvu1
	SLdiE/Jwde3G0c7KMF7rnh+SAWaS9L2wkEioMVQEQNcJk1kfbxoLYqHyK4OdpualZb+3
	Qgiit5WhNEamHzLV+l/4tVWCxCFEsKtiucby8=
Received: by 10.152.105.67 with SMTP id gk3mr3256788lab.48.1322709776294; Wed,
	30 Nov 2011 19:22:56 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.24.36 with HTTP; Wed, 30 Nov 2011 19:22:26 -0800 (PST)
In-Reply-To: <CABRtByMv9xpdK6Wy7d1hJ8Kbvhjj8Dk=n9YLijdbT+QfiZZGcA@mail.gmail.com>
References: <CABRtByMv9xpdK6Wy7d1hJ8Kbvhjj8Dk=n9YLijdbT+QfiZZGcA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 30 Nov 2011 19:22:26 -0800
Message-ID: <CAMKF1srVgs2h2B-5ACmeUjZfYDnvbcm-vtxRqL3fG9S+jzMvNA@mail.gmail.com>
To: sonu vishwakarma <vishwasonu2000@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: package libsexy-0.1.11-r1: task do_compile: Failed
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
X-List-Received-Date: Thu, 01 Dec 2011 03:22:58 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Nov 28, 2011 at 11:24 PM, sonu vishwakarma
<vishwasonu2000@gmail.com> wrote:
> Hi,
> I'm trying the build for XBMC , which depends on libsexy , i'm getting the
> compilation error as follows:
>
> |
> /home/sct/poky_gigabyte_09Nov_xbmc/build/tmp/sysroots/fishriver/usr/lib/libcairo.so:
> undefined reference to `__longjmp_chk@GLIBC_2.11'
> | collect2: ld returned 1 exit status
> | make[2]: *** [test-spell-entry] Error 1
> | make[2]: *** Waiting for unfinished jobs....
> |

Its because the make system of this package is using fortified sources
probably can you
add -U_FORTIFY_SOURCE to CFLAGS and see if that helps ?

something like

CFLAGS += "-U_FORTIFY_SOURCE"

