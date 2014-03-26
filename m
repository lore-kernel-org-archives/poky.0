Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-la0-f42.google.com (mail-la0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 981CEE00B80
	for <poky@yoctoproject.org>; Wed, 26 Mar 2014 09:05:34 -0700 (PDT)
Received: by mail-la0-f42.google.com with SMTP id ec20so1672475lab.15
	for <poky@yoctoproject.org>; Wed, 26 Mar 2014 09:05:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=KIJABHG3NAt6qEU9oawohMLzX/UQ6tCDtTitcakLejo=;
	b=nD8Od+XFrF4uqeABzOyBAgt77gZ/uu5nQCRmMK3CfN4bdq/lnQM4vCSqjpj6BYT4pN
	Yt9a8+355V+w4vZeJqJKQncI2AKaa9daPhZtpsTPqIhJZUbcfjSFelZHdxTpXTNQSKjR
	WAsz+pKQtMFKuTKo1I46retBo6QkPASTyT1i7ZD/HOeyjZDNOdT0bSjfyvsqJdAK4ozG
	+i20ysVUbXiQLOEtrw8dmPp1LUho2qzkOGgKV7LtPSxlscXZnjigxLXwfFwm8+N5gUod
	+epjz/Zm2DHKPAEP6BoQK9T63CJgOuBxw0Xp7vqEQBzOGPKjN0BWtmDqBaARCVIYqiWM
	0oig==
MIME-Version: 1.0
X-Received: by 10.112.235.229 with SMTP id up5mr452576lbc.62.1395849933364;
	Wed, 26 Mar 2014 09:05:33 -0700 (PDT)
Received: by 10.112.170.166 with HTTP; Wed, 26 Mar 2014 09:05:33 -0700 (PDT)
In-Reply-To: <1395844826-17083-1-git-send-email-jukka.rissanen@linux.intel.com>
References: <1395844826-17083-1-git-send-email-jukka.rissanen@linux.intel.com>
Date: Wed, 26 Mar 2014 12:05:33 -0400
Message-ID: <CADkTA4MNNkQuduUF11BzMcrUCc=kbVqLtNunQBO_-2ZL7z68dQ@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Jukka Rissanen <jukka.rissanen@linux.intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] meta-skeleton: Add name attribute to SRC_URI
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
X-List-Received-Date: Wed, 26 Mar 2014 16:05:36 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 26, 2014 at 10:40 AM, Jukka Rissanen
<jukka.rissanen@linux.intel.com> wrote:
> The SRCREV_machine line does not work without having name=3Dmachine
> attribute in SRC_URI.
>
> This error is seen if the custom kernel recipe is used without
> the name attribute:
>
> NOTE: Error during finalise of .../linux-yocto-custom.bb
> ERROR: ExpansionError during parsing .../linux-yocto-custom.bb: Failure e=
xpanding variable do_patch: ExpansionError: Failure expanding variable SRCP=
V, expression was ${@bb.fetch2.get_srcrev(d)} which triggered exception Fet=
chError: Fetcher failure for URL: 'git://git.kernel.org/pub/scm/linux/kerne=
l/git/torvalds/linux.git;protocol=3Dgit;nocheckout=3D1'. Please set a valid=
 SRCREV for url ['SRCREV_default_pn-linux-yocto-custom', 'SRCREV_default', =
'SRCREV_pn-linux-yocto-custom', 'SRCREV'] (possible key names are git://git=
.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git;protocol=3Dgit;noch=
eckout=3D1, or use a ;rev=3DX URL parameter)
>

I carry a similar change locally, so I agree the reference recipe needs
to be updated.

Acked-by: Bruce Ashfield <bruce.ashfield@windriver.com>



> Signed-off-by: Jukka Rissanen <jukka.rissanen@linux.intel.com>
> ---
>  meta-skeleton/recipes-kernel/linux/linux-yocto-custom.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-skeleton/recipes-kernel/linux/linux-yocto-custom.bb b/m=
eta-skeleton/recipes-kernel/linux/linux-yocto-custom.bb
> index 42162f3..c329106 100644
> --- a/meta-skeleton/recipes-kernel/linux/linux-yocto-custom.bb
> +++ b/meta-skeleton/recipes-kernel/linux/linux-yocto-custom.bb
> @@ -46,7 +46,7 @@ require recipes-kernel/linux/linux-yocto.inc
>
>  # Override SRC_URI in a bbappend file to point at a different source
>  # tree if you do not want to build from Linus' tree.
> -SRC_URI =3D "git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linu=
x.git;protocol=3Dgit;nocheckout=3D1"
> +SRC_URI =3D "git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linu=
x.git;protocol=3Dgit;nocheckout=3D1;name=3Dmachine"
>
>  LINUX_VERSION ?=3D "3.4"
>  LINUX_VERSION_EXTENSION ?=3D "-custom"
> --
> 1.8.3.1
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

