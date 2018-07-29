Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C6D0E00A48; Sat, 28 Jul 2018 18:58:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f196.google.com (mail-qk0-f196.google.com
	[209.85.220.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF453E006EC
	for <poky@yoctoproject.org>; Sat, 28 Jul 2018 18:58:25 -0700 (PDT)
Received: by mail-qk0-f196.google.com with SMTP id t79-v6so5749149qke.4
	for <poky@yoctoproject.org>; Sat, 28 Jul 2018 18:58:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=6pwlPdsCWqSZaTkEE6vLrQJQIYCNe4mNqaRTcAsyH0w=;
	b=uq/tUx41PhVSkjkVKEtOFBfVTFl2DyiaCbG7KldtGkAj/mpZCu5HdYyQBfjaSTdIvO
	/m4vS2W5s+oZ7KSIzHnFuhoXY9YUTsMqYGWQns0q5Ex1g+5oN+iuSbZFeWFo3ULDbKt6
	u0Vml/kUzE5z0DpO06EqkB0q1847zJn/SIaRqvT1C52fJa8iD9sO/w0VcKwOdVi7gjNB
	VvNa2FnDHJaZuDrGi01CfGrNsS/g36IuGX3uLMjagazBMbgxk/jz4vhenTUbVxUp/xF4
	h05oVVXebx7CBW5vH86G9JZJjQ8XzOlz6yUm8w1+YFJbANaKK3VDm2BaWDNwDdaJq/ZA
	yB0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=6pwlPdsCWqSZaTkEE6vLrQJQIYCNe4mNqaRTcAsyH0w=;
	b=WOz2l19VBK6cp49O60VAgEw0f0GIRM3wNNW8vJfdmfSucwrBbeJ81UXXtvXc/tZaxY
	q+ghpzO0N/5ScV2PX2i6a0L0byhZHmCGarRBOQbtBZjaPXsHSaVByjutPR5RWbG+IaaW
	/1hh9UupujplPLvfZ0bYm2lOemers+x3Omx5NRFBJUykIFLTGigV0Cdod6h+8FGoiSrR
	e+IPAY0CR304g/FXaIaE/x6/dYfudjVJLX6f69bIIJvUw2zYbuj+29PljT/kGTuAvR8W
	2e2Ey5b67eviKBv/xKDCIyEcw+BKFWefSWkyvZeYDT7bhgp27legzh+Vo8C8pSfWm2m5
	/FOg==
X-Gm-Message-State: AOUpUlF5T9rx6QagyNKlw1qCtKjkGHF4vUTQE+xsIMzYe0/D9kv1a1gK
	2XtxF4nxEUtwGh+81hQZCAgZyY3z04ND7nJOiGw=
X-Google-Smtp-Source: AAOMgpcFx6bRNIRdR6heNpN7c59C0GgN3XJoxCoFeYdTdXmoZq1ZTG18HmWzXUAGg+hBf0aVPaYvppd2kGinYRMwSmg=
X-Received: by 2002:a37:a24f:: with SMTP id
	l76-v6mr10710350qke.406.1532829504944; 
	Sat, 28 Jul 2018 18:58:24 -0700 (PDT)
MIME-Version: 1.0
References: <20180728024614.10888-1-raj.khem@gmail.com>
	<CAJTo0LYk=tYeJsO84-_jVggersyWEvua6eKX+8GFg1Ymq=r+=g@mail.gmail.com>
In-Reply-To: <CAJTo0LYk=tYeJsO84-_jVggersyWEvua6eKX+8GFg1Ymq=r+=g@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 28 Jul 2018 18:57:58 -0700
Message-ID: <CAMKF1sp12fAFA9EeA0V60zVgOBKC_j6sEhAGpdzLiMm1Tg9Z7Q@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [meta-poky][PATCH] poky.conf: Enable security flags+pie by defaultEnable security flags+pie by default
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
X-List-Received-Date: Sun, 29 Jul 2018 01:58:27 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Ross
On Sat, Jul 28, 2018 at 3:15 PM Burton, Ross <ross.burton@intel.com> wrote:
>
> Interestingly, considering that poky-lsb used to do this, the
> autobuilder is failing.  See the ross/flags row on
> https://autobuilder.yocto.io/tgrid.
>

https://autobuilder.yocto.io/builders/nightly-no-x11/builds/1160/steps/Running%20Sanity%20Tests/logs/stdio

This seems to be mark failed but all tests have passed. I wonder what
is marking it so.

musl one looks real, I will take a look

> Ross
>
> On 28 July 2018 at 03:46, Khem Raj <raj.khem@gmail.com> wrote:
> > This has been an opt-in for so long, some distributions e.g.
> > poky-lsb uses it by default however, since most of linux
> > distros have started to default to these settings for security
> > enhancements, time has come for OE to make it default too
> >
> > Signed-off-by: Khem Raj <raj.khem@gmail.com>
> > ---
> >  meta-poky/conf/distro/poky.conf | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
> > index 1c4feeceaa9..392c2383ee4 100644
> > --- a/meta-poky/conf/distro/poky.conf
> > +++ b/meta-poky/conf/distro/poky.conf
> > @@ -98,4 +98,5 @@ ERROR_QA_append = " ${WARN_TO_ERROR_QA}"
> >  require conf/distro/include/poky-world-exclude.inc
> >  require conf/distro/include/no-static-libs.inc
> >  require conf/distro/include/yocto-uninative.inc
> > +require conf/distro/include/security_flags.inc
> >  INHERIT += "uninative"
> > --
> > 2.18.0
> >
> > --
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky

