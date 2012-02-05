Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1A55E0044F
	for <poky@yoctoproject.org>; Sat,  4 Feb 2012 21:28:30 -0800 (PST)
Received: by pbcc11 with SMTP id c11so5193853pbc.35
	for <poky@yoctoproject.org>; Sat, 04 Feb 2012 21:28:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=RVpmyBNPK63rI/2VKRH9KPST7aeBorVWBCfrJiZKe9w=;
	b=Q85XQH1sR1J5dFPFQ6xJGh1JCQ0FDpn/ED9nXjKGQRpl4zC46i1YKmQxLSrYKtruQC
	xTCtzMiLuj1/aKRvUCLH+qMfe6ylxrWHDDFQVSRCy0jO2Pg/VZyxYOG5hITi9Aup3K+j
	BtZLDxOKdCIyTuvklBgzMdwkZigt3l04tCioY=
MIME-Version: 1.0
Received: by 10.68.116.234 with SMTP id jz10mr33986589pbb.84.1328419710596;
	Sat, 04 Feb 2012 21:28:30 -0800 (PST)
Received: by 10.142.139.16 with HTTP; Sat, 4 Feb 2012 21:28:30 -0800 (PST)
In-Reply-To: <CAMeAviTZx-ruqeer9OLw49Hzar-y1p8CidU+77qn5u2FSd1UZg@mail.gmail.com>
References: <CAMeAviTZx-ruqeer9OLw49Hzar-y1p8CidU+77qn5u2FSd1UZg@mail.gmail.com>
Date: Sun, 5 Feb 2012 00:28:30 -0500
Message-ID: <CADkTA4PPwW50zU3xoq+Q7zPe39o4RUsw3h64m1E8QiMhaar6nQ@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: "Bryan O'Donoghue" <magnificopaddy@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: Applying a defconfig easily to a kernel
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
X-List-Received-Date: Sun, 05 Feb 2012 05:28:31 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Sat, Feb 4, 2012 at 5:51 AM, Bryan O'Donoghue
<magnificopaddy@gmail.com> wrote:
> Greetings list.
>
> I've had a hard time applying a complete - unmodified defconfig to my
> local git kernel config. So rather than dig through the internals of
> the build process, I took the following short-cut.
>
> It works - is it "wrong" though ? I like it because it's
> easy/straightforward. Basically if I define a defconfig - the system
> will trust the file and apply it directly - which I suspect is what
> 99% of people who supply a defconfig will want anyway.
>
> Consider applying.

This isn't what we want. defconfigs are properly handled by the integrated
build rules already. And it does work ... I confirmed that multiple times
on Friday.

You problem is that you are attempting to use the linux-yocto repository
+ a decfonfig and running into some problems. We can work through those
issues and determine what is happening.

We want the integrated defconfig handling, since features can still be appe=
nded
and have their own associated kernel config values. With a defconfig clobbe=
r,
all that functionality is broken. As are the configuration audit
steps, etc, etc. In
other words, it drops the value that we are trying to promote and nudge awa=
y
from defconfigs.

Cheers,

Bruce


>
> diff --git a/meta/classes/kernel-yocto.bbclass
> b/meta/classes/kernel-yocto.bbclass
> index 1b73e6e..f278472 100644
> --- a/meta/classes/kernel-yocto.bbclass
> +++ b/meta/classes/kernel-yocto.bbclass
> @@ -178,8 +178,15 @@ do_kernel_configme() {
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0exit 1
> =A0 =A0 =A0 =A0fi
>
> - =A0 =A0 =A0 echo "# Global settings from linux recipe" >> ${B}/.config
> - =A0 =A0 =A0 echo "CONFIG_LOCALVERSION=3D"\"${LINUX_VERSION_EXTENSION}\"=
 >> ${B}/.config
> + =A0 =A0 =A0 if [ -f ${WORKDIR}/defconfig ]; then
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 echo "[INFO] HAVE A DEFCONFIG - copying ver=
batim"
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 cat ${WORKDIR}/defconfig
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 cp ${WORKDIR}/defconfig ${B}/.config
> + =A0 =A0 =A0 else
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 echo "# Global settings from linux recipe" =
>> ${B}/.config
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 echo "CONFIG_LOCALVERSION=3D"\"${LINUX_VERS=
ION_EXTENSION}\" >> ${B}/.config
> + =A0 =A0 =A0 fi
> +
> =A0}
>
> =A0python do_kernel_configcheck()



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

