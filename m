Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com [209.85.208.68])
 by mx.groups.io with SMTP id smtpd.web10.3829.1595469511667360675
 for <poky@lists.yoctoproject.org>;
 Wed, 22 Jul 2020 18:58:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uB+aBULz;
 spf=pass (domain: gmail.com, ip: 209.85.208.68, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ed1-f68.google.com with SMTP id a8so3339768edy.1
        for <poky@lists.yoctoproject.org>; Wed, 22 Jul 2020 18:58:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LvqvlsLhBc3vbSF1ahfGS2JjF6pum8kmMwvQkLb0Eyg=;
        b=uB+aBULzH5kiIihgNdxRqROMoY1DXL0PFWWZLoh7LhTzfP1X+5281UkO33mt+f40OA
         +IcrvFH8LfLyw2moA3D8OtTTEo7tu5BzXR281KAZd3N35jAMXHYN2CGFLNCxjs9Rs64A
         4ldB2qMxjLGK6maMl1aCwn433fT8n8cLI6MNW4Ujg36tvG2Iya/nQKvSJHnI3KYccX3X
         spC3g45hd0xWNStKcNZv6UcogSbJBRTLEY1XVzoPVQ6x82VoXeZdWMAlQtaoKBMfWCrg
         ua0h3RPaE9ZNIdQeKhK1GYSBRWs1DHPlFe//7MdZEyV7he9wMOhxPyl9zcIuPlIh5UDR
         cUPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LvqvlsLhBc3vbSF1ahfGS2JjF6pum8kmMwvQkLb0Eyg=;
        b=RVetcsrQ2xZdU/sMkw3/xRl2TsNOwIe2g3wzPntcy4rW6gRL9jr+HF+/oVLSjqnRB/
         6lwqcosxndcvF7/dI2SOFRXfZ9RGoVhukDl7jQLNXOO2ycN3ap/YJqDgmZqRxChemJ6E
         dMCeV9f0EJHmR6DGZEUC8xN6vJaxuYkiVl5k0Yx8JSzv7Lqew0dkFgTArcx35o/B1vzZ
         X6l4JpWYHKLug1wBfEoFIj6y0fLuPMUuCYDk4bT18nZeg03AQaqtthSb0lpdyM7E9DO+
         Bf3jQ5yKUUkAhvJfBLG+zd+8bBNAOX5Pogh3LP4EBKY1UdtxbfYD54OQNH57qwYDXjph
         +z7w==
X-Gm-Message-State: AOAM533tMn2AQcmIGHRyjx9jBy/9o3+HjofacW3IQ/CiizDOnTVUkQiV
	/Y0EwY+ndUmWjxH8v7M/g2s7zPbhVvYx6ilBb6o=
X-Google-Smtp-Source: ABdhPJzhezph4wqyokVNeXVsvOHsLdUfn96KYru1F+PSR7wiiC3WZUK61EE2rpf9buWcTjn7V8oPGNXURPwrt07aByA=
X-Received: by 2002:aa7:d6cf:: with SMTP id x15mr2062955edr.164.1595469509995;
 Wed, 22 Jul 2020 18:58:29 -0700 (PDT)
MIME-Version: 1.0
References: <20200722075354.1568251-1-gary.bisson@boundarydevices.com>
In-Reply-To: <20200722075354.1568251-1-gary.bisson@boundarydevices.com>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Wed, 22 Jul 2020 21:58:18 -0400
Message-ID: <CADkTA4N+PY9VBNZFfQtkM=mWmJEf1WLDAozTndmqAmwHT2nrJA@mail.gmail.com>
Subject: Re: [PATCH][poky][dunfell] kernel-yocto: account for extracted defconfig in elements check
To: Gary Bisson <gary.bisson@boundarydevices.com>, 
	Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>
Cc: poky@lists.yoctoproject.org, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

Adding oe-core, since that's where this would be noticed (and is the
right list for it).

Steve: this change is good for backpor, and puts everything back to a
working state, the bug this fixes only came in after the initial fixes
had gone to dunfell.

Bruce

On Wed, Jul 22, 2020 at 3:53 AM Gary Bisson
<gary.bisson@boundarydevices.com> wrote:
>
> From: Bruce Ashfield <bruce.ashfield@gmail.com>
>
> The test for whether or not scc should to invoked to generate a
> config.queue was missing the newly created sccs_defconfig variable.
> We need to test for that variable as well, or we may miss generating
> the config.queue in some cases.
>
> (From OE-Core rev: 3a95e171d3eaa6ab143d4f422c98a0ac7ad31761)
>
> Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> ---
> Hi,
>
> I believe this patch log should also say:
> Fixes: 23dcff0d39 (kernel/yocto: ensure that defconfigs are processed first)
>
> What I see on dunfell HEAD currently is that it's impossible to build my
> kernel (that uses KBUILD_DEFCONFIG) as the configme step fails because
> the config.queue in meta folder is not created.
>
> Adding this patch on dunfell branch fixed the issue, hence this backport
> request.
>
> Let me know if you have any questions.
>
> Regards,
> Gary
> ---
>  meta/classes/kernel-yocto.bbclass | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta/classes/kernel-yocto.bbclass b/meta/classes/kernel-yocto.bbclass
> index 54a1a1627a..3311f6e84e 100644
> --- a/meta/classes/kernel-yocto.bbclass
> +++ b/meta/classes/kernel-yocto.bbclass
> @@ -213,7 +213,7 @@ do_kernel_metadata() {
>         meta_dir=$(kgit --meta)
>
>         # run1: pull all the configuration fragments, no matter where they come from
> -       elements="`echo -n ${bsp_definition} ${sccs} ${patches} ${KERNEL_FEATURES}`"
> +       elements="`echo -n ${bsp_definition} $sccs_defconfig ${sccs} ${patches} ${KERNEL_FEATURES}`"
>         if [ -n "${elements}" ]; then
>                 echo "${bsp_definition}" > ${S}/${meta_dir}/bsp_definition
>                 scc --force -o ${S}/${meta_dir}:cfg,merge,meta ${includes} $sccs_defconfig $bsp_definition $sccs $patches ${KERNEL_FEATURES}
> --
> 2.27.0
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
