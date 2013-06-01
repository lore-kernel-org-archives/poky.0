Return-Path: <d1ma5ad@gmail.com>
Received: from mail-qe0-f46.google.com (mail-qe0-f46.google.com
	[209.85.128.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38303E01525
	for <poky@yoctoproject.org>; Sat,  1 Jun 2013 10:23:14 -0700 (PDT)
Received: by mail-qe0-f46.google.com with SMTP id w7so741971qeb.19
	for <poky@yoctoproject.org>; Sat, 01 Jun 2013 10:23:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:content-type;
	bh=ijxBNu0b9BPqA3iO4gpN2x7RS7msiinRfoKrY5Ch4Eg=;
	b=kEmnwSMXL6fvwQYrqLA83KMY6000OAGWgij4iJI3CdUzJ4WWThH+0603AgD+h01gWH
	GzlOaT0r7pBb0JjxSHi0Hq6t9VPJPgVSJj6rOpnT4ZuTQ/K1oDyeDkakwl9yhr4KlH6d
	+AzZ6hHKjgcKpP6b8iDCXg0Dlxr386V7bFtx1k0pgJfFfRWIr/FF2pgiBcy4dNReAcKZ
	HY7KkeMSNcLbs0AU+3bQEaFaOby6S/orxXDVa+SS6XurEAgDos4SqKAWFXN5kgXGHZaC
	f+TaoWVhYsxtjoWZ6AyzBli4VBC+8FeZRjskq4WOz7nD7fJ43F2PvQrxcvQbbU9V0B/A
	FD4g==
MIME-Version: 1.0
X-Received: by 10.224.3.10 with SMTP id 10mr12670365qal.85.1370107393516; Sat,
	01 Jun 2013 10:23:13 -0700 (PDT)
Sender: d1ma5ad@gmail.com
Received: by 10.49.94.73 with HTTP; Sat, 1 Jun 2013 10:23:13 -0700 (PDT)
In-Reply-To: <CACzB8VG4BxHBPZDL_Zsf2Y5uO2QbkjoakON7t8kFEivwOi5=6g@mail.gmail.com>
References: <CACzB8VG4BxHBPZDL_Zsf2Y5uO2QbkjoakON7t8kFEivwOi5=6g@mail.gmail.com>
Date: Sat, 1 Jun 2013 14:23:13 -0300
X-Google-Sender-Auth: j6VeX7Jk5r6lZA-KPVxoRg1ZfOw
Message-ID: <CACzB8VGmJmjcJepgtx=JB9KD9cXFTFJAB8V=63h-hOZ86AX_=Q@mail.gmail.com>
From: Dimas Abreu Dutra <dimasadutra@gmail.com>
To: Poky Mailing list <poky@yoctoproject.org>
Subject: Re: [danny] [PATCH] site/common: deactivate a python cross-compilation runtime check, fixes bug #4557
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
X-List-Received-Date: Sat, 01 Jun 2013 17:23:14 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello all,

please ignore this, I accidentally garbled the message with the gmail
web interface. The correct message follows.

~Dimas



On Sat, Jun 1, 2013 at 1:53 PM, Dimas Abreu Dutra <dimasadutra@gmail.com> wrote:
> In configure there is a runtime check to determine buggy getaddrinfo and as we
> are cross-compiling this check goes wrong. If ipv6 is enabled in python, the
> failed test is reported as fatal error with the message
> Fatal: You must get working getaddrinfo() function.
>
> Setting ac_cv_buggy_getaddrinfo=no deactivates the runtime check and allows to
> compile python with ipv6 enabled.
>
> This commit was cherry-picked from commit
> 66db85262bef08802af30964b415bff349cfba69
> into the danny branch. The original commit was in turn derived from the commit
> 700b75e7661062aa93cf81205b78c8bf7609922d in the Classic OpenEmbedded Development
> Tree.
>
> Fixes: bug #4557
>
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@oss.bmw-carit.de>
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> Signed-off-by: Dimas Abreu Dutra <dimasadutra@gmail.com>
> ---
>  meta/site/common |    2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/meta/site/common b/meta/site/common
> index 5da3ff4..1214a13 100644
> --- a/meta/site/common
> +++ b/meta/site/common
> @@ -15,3 +15,5 @@ shadow_cv_utmpdir=${localstatedir}/run
>  shadow_cv_logdir=${localstatedir}/log
>  shadow_cv_passwd_dir=${bindir}
>
> +# python: deactivate a runtime check for ipv6-support in python
>>=2.7.1 that fails when cross-compiling
> +ac_cv_buggy_getaddrinfo=no
> --
> 1.7.10.4

