Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
 by mx.groups.io with SMTP id smtpd.web11.6444.1648090857936423292
 for <Poky@lists.yoctoproject.org>;
 Wed, 23 Mar 2022 20:00:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Rh59d0WX;
 spf=pass (domain: gmail.com, ip: 209.85.218.50, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ej1-f50.google.com with SMTP id d10so6493488eje.10
        for <Poky@lists.yoctoproject.org>; Wed, 23 Mar 2022 20:00:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LoEOY7odCJFFTJUgmxBpJYhkNPu1Xu8f08QhKNnJJ+w=;
        b=Rh59d0WXbrl0g5ECHZbU8aH/jnwDs30KLFsTvkaycZ697SToPeLNCaTtl6mSduV05c
         CIa4j4qu3YyH2jLEchg4lxyGxx3rJ0zeE/0FlTS9csWRQFg0XhqcOG6kxBjT0BBfD1dw
         Fb2m7qQZmF7yKe80JI18wn5n1oZtSdJiztCkGB24Abex54BTQx/1Up3lbUs7T/y85pzm
         UMjy2ldZBmpaqmwNwsyqhzQTfw0phBWQC2ZCaDWATlCO2yp7jfXTVRG57vrvxiXiUmiV
         jLcHZYmJcZT0aV3oQlfv1zraxPinh+gHORnGSumU3RWjE13Vhew/+Df7RHDya7QvGKF+
         cqXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LoEOY7odCJFFTJUgmxBpJYhkNPu1Xu8f08QhKNnJJ+w=;
        b=hVACBtMJLIndqeYSAQPIglBcPURor6nGD3OY9r/kM1bOBz+zg5KOVdD+mzIyB9Nc0R
         exddozdPWZSLefV2TqKY2Mk3kCP1E6GbZ3ugAIIs79t05TqK6mLcX1Qqm+dGylR9qkTv
         3yxIFvhkMtUEm0QWzANgCTGbmn4TwYaJOfyJorfxhDwrWG6IvjHhBjwJsPSrKhZId4li
         GypX3eq3xjMV7mcXeQc49qyPV6BinKSM+i1f/sgH2LChcyKCavmZB3ey+mrrlICJbQta
         3D7oYFQBzgq46R9MnlJ1vRPuL1ZpUyx8ARrS2s77Ki1I5kSBAHw2Q9ciOQRV0jcFxhEX
         pxqg==
X-Gm-Message-State: AOAM531wCKK7onc0HmLiWHE9k1iy4K4iHQuVgjgTugMs9L3Jry/KAkf6
	h8TT7t3wExiSC6yiw7y1y9FJDXHRFjY2f4Juqqg=
X-Google-Smtp-Source: ABdhPJzKUKjZSKdVtxBLAc/+AutSTbJTFBn3uvr+iACAt0xNEYXlvkYbLOz1CDyJlLjZxOIZ5obqms+wUE/IncgSWlY=
X-Received: by 2002:a17:907:d23:b0:6db:6c6:8558 with SMTP id
 gn35-20020a1709070d2300b006db06c68558mr3380449ejc.141.1648090856311; Wed, 23
 Mar 2022 20:00:56 -0700 (PDT)
MIME-Version: 1.0
References: <CA+05Mtot-gG8OyOEWD2e7bmfCYqu-15OVO2GHSX+-x5bwbqgLQ@mail.gmail.com>
In-Reply-To: <CA+05Mtot-gG8OyOEWD2e7bmfCYqu-15OVO2GHSX+-x5bwbqgLQ@mail.gmail.com>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Wed, 23 Mar 2022 23:00:45 -0400
Message-ID: <CADkTA4Ngz3sSvoqQv3rH+fwqmoLBOSaJMLBA5+wyypRcBnHWJw@mail.gmail.com>
Subject: Re: [PATCH] poky/kernel-yocto: Run do_kernel_configcheck from source directory
To: Russ Dill <russ.dill@nikolamotor.com>
Cc: Poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000000c4f8805daee0e5f"

--0000000000000c4f8805daee0e5f
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 23, 2022 at 7:19 PM Russ Dill <russ.dill@nikolamotor.com> wrote:

> do_kernel_configcheck utilizes pathnames relative to the sourcedir
> but does not specify ${S} in [dirs]. This is especially evident
> if bitbake is run from a directory that contains a meta/
> subdirectory.
>

What problem are you actually fixing though ? The commands all set cwd, and
the paths are constructed with S .. so there's no ambiguity or chance that
the directory doesn't exist.

Bruce



>
> Signed-off-by: Russ Dill <russ.dill@nikolamotor.com>
> ---
>  meta/classes/kernel-yocto.bbclass | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/meta/classes/kernel-yocto.bbclass
> b/meta/classes/kernel-yocto.bbclass
> index 1d5a8cdf29..c787b2a122 100644
> --- a/meta/classes/kernel-yocto.bbclass
> +++ b/meta/classes/kernel-yocto.bbclass
> @@ -620,6 +620,7 @@ python do_kernel_configcheck() {
>      if warnings_detected and kmeta_audit_werror:
>          bb.fatal( "configuration warnings detected, werror is set,
> promoting to fatal" )
>  }
> +do_kernel_configcheck[dirs] = "${S}"
>
>  # Ensure that the branches (BSP and meta) are on the locations specified
> by
>  # their SRCREV values. If they are NOT on the right commits, the branches
> --
> 2.25.1
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--0000000000000c4f8805daee0e5f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Wed, Mar 23, 2022 at 7:19 PM Russ Dill &lt;<a hr=
ef=3D"mailto:russ.dill@nikolamotor.com">russ.dill@nikolamotor.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">do_kernel_=
configcheck utilizes pathnames relative to the sourcedir<br>
but does not specify ${S} in [dirs]. This is especially evident<br>
if bitbake is run from a directory that contains a meta/<br>
subdirectory.<br></blockquote><div><br></div><div><div class=3D"gmail_defau=
lt" style=3D"font-size:small">What problem are you actually fixing though ?=
 The commands all set cwd, and the paths are constructed with S .. so there=
&#39;s no ambiguity or chance that the directory doesn&#39;t exist.</div><d=
iv class=3D"gmail_default" style=3D"font-size:small"><br></div><div class=
=3D"gmail_default" style=3D"font-size:small">Bruce</div><br></div><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Signed-off-by: Russ Dill &lt;<a href=3D"mailto:russ.dill@nikolamotor.com" t=
arget=3D"_blank">russ.dill@nikolamotor.com</a>&gt;<br>
---<br>
=C2=A0meta/classes/kernel-yocto.bbclass | 1 +<br>
=C2=A01 file changed, 1 insertion(+)<br>
<br>
diff --git a/meta/classes/kernel-yocto.bbclass<br>
b/meta/classes/kernel-yocto.bbclass<br>
index 1d5a8cdf29..c787b2a122 100644<br>
--- a/meta/classes/kernel-yocto.bbclass<br>
+++ b/meta/classes/kernel-yocto.bbclass<br>
@@ -620,6 +620,7 @@ python do_kernel_configcheck() {<br>
=C2=A0 =C2=A0 =C2=A0if warnings_detected and kmeta_audit_werror:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bb.fatal( &quot;configuration warnings de=
tected, werror is set,<br>
promoting to fatal&quot; )<br>
=C2=A0}<br>
+do_kernel_configcheck[dirs] =3D &quot;${S}&quot;<br>
<br>
=C2=A0# Ensure that the branches (BSP and meta) are on the locations specif=
ied by<br>
=C2=A0# their SRCREV values. If they are NOT on the right commits, the bran=
ches<br>
--<br>
2.25.1<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">- Thou shalt not follow the NULL pointer, for ch=
aos and madness await thee at its end<br>- &quot;Use the force Harry&quot; =
- Gandalf, Star Trek II<br><br></div></div>

--0000000000000c4f8805daee0e5f--
