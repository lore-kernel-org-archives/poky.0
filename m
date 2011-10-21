Return-Path: <raj.khem@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76658E01358
	for <poky@yoctoproject.org>; Thu, 20 Oct 2011 22:37:01 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yxk8 with SMTP id 8so428915yxk.35
	for <poky@yoctoproject.org>; Thu, 20 Oct 2011 22:37:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Wixjw7rPkcQzEE9guZpN03rAR3B2VB1LXSACQ4LaXT4=;
	b=APwcM0Sn8rNxUD661UrhLR9tBkOV5pMuxHjrU5wLsCM6LRCW4czBNfTwAjpaZnTNqI
	UpucEqiphYVMglQfm8lL2KrR5DgjVQ9G7wFgxhUR4YWO8NuOLs7OGrwBI+c6O/Hvk7gp
	P99eAX+pwrEJJAEKTlkQxTdk2xwxw2oa4tRWY=
Received: by 10.68.20.226 with SMTP id q2mr24989532pbe.115.1319175420068; Thu,
	20 Oct 2011 22:37:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.68.48.230 with HTTP; Thu, 20 Oct 2011 22:36:30 -0700 (PDT)
In-Reply-To: <CABRtByOW8azV5mZ3_57WGCwc+yvBHP0h0ErANsXjDj6Af3OUmQ@mail.gmail.com>
References: <CABRtByPR-GmTN54BVUxnORRxex6NcmyjqiOdb_yCgkndBPjOdQ@mail.gmail.com>
	<CABRtByNQkz1vq_X1v-3dNNAJtPOJjT6074vjHb216KOAUT5m6Q@mail.gmail.com>
	<CAMKF1soeVC7WUm7MsWrbu_-ZiQCz=H0ogcGRobG6pPrDTrwrTw@mail.gmail.com>
	<CAMKF1spw3NVTYMLzEHH9LH+R70baxqbuPcfPddZ3fZ_2TvCUag@mail.gmail.com>
	<CABRtByOW8azV5mZ3_57WGCwc+yvBHP0h0ErANsXjDj6Af3OUmQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 20 Oct 2011 22:36:30 -0700
Message-ID: <CAMKF1soQRxvaOSY4+=mzjWMXs87Cnd6K2Vhrj8izRuQK7=_ZEg@mail.gmail.com>
To: sonu vishwakarma <vishwasonu2000@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: :Package xbmc-10.05-r11+gitr1+e2ab481ebe964321c358ab9d6402088c714adcbe: task do_compile: Failed
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
X-List-Received-Date: Fri, 21 Oct 2011 05:37:01 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 20, 2011 at 10:01 PM, sonu vishwakarma
<vishwasonu2000@gmail.com> wrote:
> When i include require egl.inc in my xbmc recipe i get the error as below:

thats not the point that you should include it. Point is that file
makes it a package for certain type of machines
therefore if your machine is not one of those then you are likely to
get into problems since no one has probably
ported that recipe to the machine you are building for.

