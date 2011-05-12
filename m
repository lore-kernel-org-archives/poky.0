Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id A8BAD4C80132
	for <poky@yoctoproject.org>; Thu, 12 May 2011 15:22:05 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gxk7 with SMTP id 7so950341gxk.35
	for <poky@yoctoproject.org>; Thu, 12 May 2011 13:22:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=9HBMycm14Q1XuQOQki9GST3uyUQElMEivocX66xbedg=;
	b=XhH5Q/M6V0YdmNRYaFTbEW0JbeSQX7c6uuTG2RyCtOe1HNGwv2GYlPEZjw6c3/htZc
	LLy+UZu5qJU8tYHuse6kwLCJ9zQefa6YcmEOokZ2o2txQs42lqeQbKTAOuHP64Gk3A4C
	+oLd+8XY00zM7FQ7KxgBeFXn+cVmZv3P5P7yo=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=INEWsvNiwtqtp8UtyRiV6L1NaNh58sotgJui6G5WkkWJrbhX0oAztudqqkDrJeDMWh
	41aM52enknq5IYuSfvuml6ciFVbJQybyk6PUsYbEvxnL8SdHcz4Gk0sKa82bYj9Zol5z
	Nxk8WAEggcrsjTiDQ+7BUm55j6GWsWLR1AwlQ=
MIME-Version: 1.0
Received: by 10.90.235.17 with SMTP id i17mr719154agh.112.1305231723852; Thu,
	12 May 2011 13:22:03 -0700 (PDT)
Received: by 10.90.104.11 with HTTP; Thu, 12 May 2011 13:22:03 -0700 (PDT)
In-Reply-To: <0c9a2ad77557ecbb3251d3c74f28751082b10c8d.1305229934.git.bruce.ashfield@windriver.com>
References: <cover.1305229934.git.bruce.ashfield@windriver.com>
	<0c9a2ad77557ecbb3251d3c74f28751082b10c8d.1305229934.git.bruce.ashfield@windriver.com>
Date: Thu, 12 May 2011 16:22:03 -0400
Message-ID: <BANLkTik-2PhNjOvZM7ASJ-P9sEwe=sR=Xw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: saul.wold@intel.com, dvhart@linux.intel.com, poky@yoctoproject.org,
	openembedded-core@lists.openembedded.org
Subject: Re: [OE-core] [PATCH 1/1] kern-tools: error if features are not found
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
X-List-Received-Date: Thu, 12 May 2011 20:22:06 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, May 12, 2011 at 4:21 PM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> Richard/Saul,
>
> I'll just repeat the patch contents here:
>
> Fixes bug: [YOCTO #955]
>
> Updating the SRCREV to pickup the kern-tools change:
>
> [
> =A0 =A0updateme: error if features are not found
>
> =A0 =A0Rather than silently dropping addon features, we emit a warning
> =A0 =A0and then exit with a failure code. The caller can then abort a
> =A0 =A0build and not simply miss features.
>
> =A0 =A0Passing --no-strict to the script disables this new functionality
> =A0 =A0if for some reason a feature description is missing on purpose.
> ]
>
> We ran into this during 1.0 development, if someone tags an
> extra feature into a bbapend (or wherever) and that feature
> isn't valid they get a log to the console, and the build stops.

Urk. I have no idea what happened here :) This is NOT the
real content of the patch commit message.

Bruce

>
> Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
> ---
> =A0.../kern-tools/kern-tools-native_git.bb =A0 =A0 =A0 =A0 =A0 =A0| =A0 =
=A02 +-
> =A01 files changed, 1 insertions(+), 1 deletions(-)
>
> diff --git a/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb b/me=
ta/recipes-kernel/kern-tools/kern-tools-native_git.bb
> index c808e17..829d105 100644
> --- a/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb
> +++ b/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb
> @@ -4,7 +4,7 @@ LIC_FILES_CHKSUM =3D "file://git/tools/kgit;beginline=3D5=
;endline=3D9;md5=3De2bf4415f3d8
>
> =A0DEPENDS =3D "git-native guilt-native"
>
> -SRCREV =3D "ab49d8e48b7e66d1b4f924385d65d062d25e44f7"
> +SRCREV =3D "ecbdf3cdf6705a63dcb3c50bb24c311046f0b35c"
> =A0PR =3D r10
> =A0PV =3D "0.1+git${SRCPV}"
>
> --
> 1.7.0.4
>
>
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/openembedded-core
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

