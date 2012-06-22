Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A732E01425
	for <poky@yoctoproject.org>; Thu, 21 Jun 2012 22:59:18 -0700 (PDT)
Received: by eaab16 with SMTP id b16so588485eaa.35
	for <poky@yoctoproject.org>; Thu, 21 Jun 2012 22:59:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=YAqE0ojg3VoB+mgPl/kU+3TlbWUKJBPJsQhaG6s0HKE=;
	b=AF7yWlJBq4lho/REBSyofWHtC42jeSsO1BT1qO47Dr+HWIrMKSd3sOG3NEUuSwJEO9
	XWfrFxKzju2hbb8fTy8TjkynCO/nIgd1Glf8IBY5j7jmP1k8KmGiF785/Gxkxj28XcIf
	ZRAD63B12TCz0TI2Xd+W5939OtPHKb463sDNOOjxFd58Vkfeayk6EhUtGpaOeC35X9/O
	id4vUAxvOUzi9AKqaNXMw3qrFYhEajSz9t+K5Z/TsmAz0jqP2vsgrDWN0CWvY1Y4UoPE
	PaRY2IFzQDV+vA0PALCy84XI/MjUs+Wj8LEtQfDB6OKMrGXECFm/wMk5fVJFKYyPB3OI
	j/Fg==
Received: by 10.14.53.4 with SMTP id f4mr179033eec.93.1340344757203; Thu, 21
	Jun 2012 22:59:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.219.71 with HTTP; Thu, 21 Jun 2012 22:58:46 -0700 (PDT)
In-Reply-To: <20120622053904.GJ9352@jama.jama.net>
References: <cover.1340038493.git.scott.a.garman@intel.com>
	<3a231c484aaa511b95f9232d000b1190327b4626.1340038494.git.scott.a.garman@intel.com>
	<CAMKF1sp4KvDtK68NQNtOhSmCF6WK738Yr9cXOA0ntkHJ9wpYUQ@mail.gmail.com>
	<CAK18fxEp=CsaCPXBocP3PCb9dnxBTR_jb_Qv+oUSKn6qwM7acQ@mail.gmail.com>
	<CAK18fxGm5_7xMHpOOUpWWjkAaq33hN-fqeJwrFDDvB5XgekmYA@mail.gmail.com>
	<20120621211416.GI9352@jama.jama.net>
	<CAK18fxHhSDnqyqbfnwKYLZJJf7z_m9Zt47e+zpkPgot-eYppzg@mail.gmail.com>
	<20120622053904.GJ9352@jama.jama.net>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 21 Jun 2012 22:58:46 -0700
Message-ID: <CAMKF1soPhy2n4O9+cFU4hWTXcJDy63zJ=5W_hX9S3RawJsjavA@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 4/8] sanity.bbclass: warn the user if BBPATH contains wrong entries
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
X-List-Received-Date: Fri, 22 Jun 2012 05:59:18 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jun 21, 2012 at 10:39 PM, Martin Jansa <martin.jansa@gmail.com> wrote:
>
> bblayers.conf:
> BBPATH ?= "${TOPDIR}"
>
> BBFILES ?= ""

yeah I guess a way is to always have BBPATH non empty by default and
then layers append their respective
BBPATHS to it and all falls into place.

In OE-Core it still wont work since there BBPATH is empty by default
and we can not assume some initial value for
it since user may place OE-Core anywhere in his layer heirarchy

