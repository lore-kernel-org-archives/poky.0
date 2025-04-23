Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9E16C369D7
	for <webhook@archiver.kernel.org>; Wed, 23 Apr 2025 12:31:06 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web11.7493.1745411462825936581
 for <poky@lists.yoctoproject.org>;
 Wed, 23 Apr 2025 05:31:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=e/7fqiZ2;
 spf=pass (domain: gmail.com, ip: 209.85.216.53, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-3085f827538so7769093a91.0
        for <poky@lists.yoctoproject.org>; Wed, 23 Apr 2025 05:31:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745411462; x=1746016262; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xPRk1yjIQgNVt5pezGoxOfMNqid3/S3+HyoTuTWjYlY=;
        b=e/7fqiZ2cm5mI43YPF+AOoKD41uBaLW54Dxh7ZxyAN5vpq1GkqAlRpFNGtPKhartJt
         UZ+F2PmtDamwRB0S2/KyRX6OHnNPoPWTqvCEMxRmqYYyO472dY80XAscupvuVaYgYjgd
         UXgIEFijACOl68N/pm+z661sWcY6xSD8E/IDJcXQCHttRKV1VdSaNdpXOIwCmEkjwMl9
         QaKgLraJ227iFCMH1lxLuZUdDpORxoyKnJQsI5P1m2DZPrV1StClauZC1CtxmHSXmefu
         s9cHk2z7KEKCG4YAxDtAy6opx8xtADxmwIZucdl0QfACgOwv7HLrT52d8YKX2PBT0wXW
         6CBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745411462; x=1746016262;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xPRk1yjIQgNVt5pezGoxOfMNqid3/S3+HyoTuTWjYlY=;
        b=HUwRvlynUzBya1LrVLeTFk4j7ELEhQbK86TuGSe0jqsXdQ/LwIKQbw8wt6xAYVSGk1
         GTbmgSnYlljNxwdMxIBxMl7SpcOCYv7k/A+kEAhdieShrzKfFXfncadmXnBRVI7cxd6b
         EtIElHM+PUYyyfh/YK5T3lKIqWeyC9rUkcSwRu1k9zb/WbbR3gnxveSQ87/j8TeYayIi
         JhfjXXrKjYwH2Yc4QEz31iXgjnhlV8NQV1x9yQTpqKVWROt1WjkV2pTlqqwZTfgJT6oe
         4zxaEEJRjpfMqo/ICQ4A2tTOLlvdyXObPewjznq1zq6a7v6nA/AICqbVlD+AJ2M+o/hd
         yOvQ==
X-Forwarded-Encrypted: i=1; AJvYcCW840OK/cr84ViVUzpf1XSOivZDffhWzEUHkzvaoVmQztyzYWkkfNtzE6wVKieDBH2q2Z2E@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwuFsYvQyb/WanOO4XDlaYosqUhqk4fPg0UKflchbwELQxdhY83
	mYT7u2GfMU0rSDVX7ioDHcqkePgQgWI0OtYOY9NjUsdNM/XzfLZ9fdI6LVPdQIZtJZBNITSrG7z
	RV7pJJ5AtFf/kf2hSFqrA+kcWNM0=
X-Gm-Gg: ASbGncvJxElgFvc/8H1lGJZriKZ6FB8EhpdPk/GXbL3sO94FeKamgF+taKSoClpcNzx
	0E5CgHKG+JmMYP3ixZo6Vq8bt8C1BNX/4FNi1A2YzxJbQE42wIXduDvenKVvwwfnstfUKShTQvK
	4hLIVA/QLYe0U6dOZEJNpJsxw=
X-Google-Smtp-Source: AGHT+IGiSsu96U0bRR7IOLByHS+JErcJBFOnOR8lwudeP55IBHlA4eXgRK1zZNTywEYX821Rm1DnIuxfecrcJs9OkPs=
X-Received: by 2002:a17:90b:2dcb:b0:2ee:f687:6acb with SMTP id
 98e67ed59e1d1-3087bb53f4fmr29383743a91.13.1745411462078; Wed, 23 Apr 2025
 05:31:02 -0700 (PDT)
MIME-Version: 1.0
References: <20250423080246.128723-1-mikko.rapeli@linaro.org> <20250423080246.128723-2-mikko.rapeli@linaro.org>
In-Reply-To: <20250423080246.128723-2-mikko.rapeli@linaro.org>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Wed, 23 Apr 2025 08:30:50 -0400
X-Gm-Features: ATxdqUE3uRtiaExsF6AtUffnbXuSkQxnc2fBjqL8YIdfyLKvbcPS9tAjvkDpBGg
Message-ID: <CADkTA4MUkWtgpj=FG2rGN+kHQqkGLWjLPMDiyBi3TUct+Th4EQ@mail.gmail.com>
Subject: Re: [poky] [PATCH 2/3] kernel-yocto.bbclass: support modular kernel configs
To: mikko.rapeli@linaro.org
Cc: openembedded-core@lists.openembedded.org, poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000002f2bb20633714669"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 23 Apr 2025 12:31:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13601

--0000000000002f2bb20633714669
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I already have patches for this, and they have not been sent on purpose.

Please do not apply this patch, consider this a nack.

Bruce

On Wed, Apr 23, 2025 at 4:03=E2=80=AFAM Mikko Rapeli via lists.yoctoproject=
.org
<mikko.rapeli=3Dlinaro.org@lists.yoctoproject.org> wrote:

> Compile many kernel drivers as modules when recipe sets
>
> MODULAR_KERNEL =3D "true"
>
> This likely requires support for initramfs which includes
> kernel modules needed to mount the rootfs.
>
> SCC_OPTS can be used to add arguments to scc kernel config
> generation call.
>
> Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> ---
>  meta/classes-recipe/kernel-yocto.bbclass | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>
> diff --git a/meta/classes-recipe/kernel-yocto.bbclass
> b/meta/classes-recipe/kernel-yocto.bbclass
> index cef6b9ec3f..f98720bcec 100644
> --- a/meta/classes-recipe/kernel-yocto.bbclass
> +++ b/meta/classes-recipe/kernel-yocto.bbclass
> @@ -26,6 +26,12 @@ KCONF_BSP_AUDIT_LEVEL ?=3D "0"
>  KMETA_AUDIT ?=3D "yes"
>  KMETA_AUDIT_WERROR ?=3D ""
>
> +# most drivers as built in (default), or as modules
> +MODULAR_KERNEL =3D "false"
> +
> +# options to scc
> +SCC_OPTS ?=3D "${@bb.utils.contains('MODULAR_KERNEL', 'true',
> '-DMODULE_OR_Y=3Dm', '', d)}"
> +
>  # returns local (absolute) path names for all valid patches in the
>  # src_uri
>  def find_patches(d,subdir):
> @@ -298,7 +304,7 @@ do_kernel_metadata() {
>                 elements=3D"`echo -n ${bsp_definition} $sccs_defconfig
> ${sccs} ${patches} $KERNEL_FEATURES_FINAL`"
>                 if [ -n "${elements}" ]; then
>                         echo "${bsp_definition}" >
> ${S}/${meta_dir}/bsp_definition
> -                       scc --force -o ${S}/${meta_dir}:cfg,merge,meta
> ${includes} $sccs_defconfig $bsp_definition $sccs $patches
> $KERNEL_FEATURES_FINAL
> +                       scc ${SCC_OPTS} --force -o
> ${S}/${meta_dir}:cfg,merge,meta ${includes} $sccs_defconfig $bsp_definiti=
on
> $sccs $patches $KERNEL_FEATURES_FINAL
>                         if [ $? -ne 0 ]; then
>                                 bbfatal_log "Could not generate
> configuration queue for ${KMACHINE}."
>                         fi
> --
> 2.43.0
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13599):
> https://lists.yoctoproject.org/g/poky/message/13599
> Mute This Topic: https://lists.yoctoproject.org/mt/112410521/1050810
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
> bruce.ashfield@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--0000000000002f2bb20633714669
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small">I already have patches for this, and they have not been sent =
on purpose.</div><div class=3D"gmail_default" style=3D"font-size:small"><br=
></div><div class=3D"gmail_default" style=3D"font-size:small">Please do not=
 apply this patch, consider this a nack.</div><div class=3D"gmail_default" =
style=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"f=
ont-size:small">Bruce</div></div><br><div class=3D"gmail_quote gmail_quote_=
container"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Apr 23, 2025 at 4:=
03=E2=80=AFAM Mikko Rapeli via <a href=3D"http://lists.yoctoproject.org">li=
sts.yoctoproject.org</a> &lt;mikko.rapeli=3D<a href=3D"mailto:linaro.org@li=
sts.yoctoproject.org">linaro.org@lists.yoctoproject.org</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">Compile many kernel =
drivers as modules when recipe sets<br>
<br>
MODULAR_KERNEL =3D &quot;true&quot;<br>
<br>
This likely requires support for initramfs which includes<br>
kernel modules needed to mount the rootfs.<br>
<br>
SCC_OPTS can be used to add arguments to scc kernel config<br>
generation call.<br>
<br>
Signed-off-by: Mikko Rapeli &lt;<a href=3D"mailto:mikko.rapeli@linaro.org" =
target=3D"_blank">mikko.rapeli@linaro.org</a>&gt;<br>
---<br>
=C2=A0meta/classes-recipe/kernel-yocto.bbclass | 8 +++++++-<br>
=C2=A01 file changed, 7 insertions(+), 1 deletion(-)<br>
<br>
diff --git a/meta/classes-recipe/kernel-yocto.bbclass b/meta/classes-recipe=
/kernel-yocto.bbclass<br>
index cef6b9ec3f..f98720bcec 100644<br>
--- a/meta/classes-recipe/kernel-yocto.bbclass<br>
+++ b/meta/classes-recipe/kernel-yocto.bbclass<br>
@@ -26,6 +26,12 @@ KCONF_BSP_AUDIT_LEVEL ?=3D &quot;0&quot;<br>
=C2=A0KMETA_AUDIT ?=3D &quot;yes&quot;<br>
=C2=A0KMETA_AUDIT_WERROR ?=3D &quot;&quot;<br>
<br>
+# most drivers as built in (default), or as modules<br>
+MODULAR_KERNEL =3D &quot;false&quot;<br>
+<br>
+# options to scc<br>
+SCC_OPTS ?=3D &quot;${@bb.utils.contains(&#39;MODULAR_KERNEL&#39;, &#39;tr=
ue&#39;, &#39;-DMODULE_OR_Y=3Dm&#39;, &#39;&#39;, d)}&quot;<br>
+<br>
=C2=A0# returns local (absolute) path names for all valid patches in the<br=
>
=C2=A0# src_uri<br>
=C2=A0def find_patches(d,subdir):<br>
@@ -298,7 +304,7 @@ do_kernel_metadata() {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 elements=3D&quot;`e=
cho -n ${bsp_definition} $sccs_defconfig ${sccs} ${patches} $KERNEL_FEATURE=
S_FINAL`&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if [ -n &quot;${ele=
ments}&quot; ]; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 echo &quot;${bsp_definition}&quot; &gt; ${S}/${meta_dir}/bsp_def=
inition<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0scc --force -o ${S}/${meta_dir}:cfg,merge,meta ${includes} $sccs_=
defconfig $bsp_definition $sccs $patches $KERNEL_FEATURES_FINAL<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0scc ${SCC_OPTS} --force -o ${S}/${meta_dir}:cfg,merge,meta ${incl=
udes} $sccs_defconfig $bsp_definition $sccs $patches $KERNEL_FEATURES_FINAL=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 if [ $? -ne 0 ]; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bbfatal_log &quot;Could not generate=
 configuration queue for ${KMACHINE}.&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 fi<br>
-- <br>
2.43.0<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#13599): <a href=3D"https://lists.yoctoproject.org/g/pok=
y/message/13599" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/poky/message/13599</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/112410521/105=
0810" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/112410521/1050810</a><br>
Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">poky+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" rel=3D=
"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/poky/unsub<=
/a> [<a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruce.as=
hfield@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><div><br></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature">- Thou shalt not follow the NULL pointer, for chaos and madness a=
wait thee at its end<br>- &quot;Use the force Harry&quot; - Gandalf, Star T=
rek II<br><br></div></div>

--0000000000002f2bb20633714669--

