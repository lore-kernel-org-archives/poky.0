Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web10.478.1680019982951280767
 for <poky@lists.yoctoproject.org>;
 Tue, 28 Mar 2023 09:13:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=lMyhqRf8;
 spf=pass (domain: gmail.com, ip: 209.85.128.41, mailfrom: martin.jansa@gmail.com)
Received: by mail-wm1-f41.google.com with SMTP id bg16-20020a05600c3c9000b003eb34e21bdfso9823773wmb.0
        for <poky@lists.yoctoproject.org>; Tue, 28 Mar 2023 09:13:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680019981;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=a43oPMRnm69LASNADHw7LdIvPaoT0ClGFsoq3D8JVsg=;
        b=lMyhqRf81cxQccKdInabLxobQL1YNrK3iO2I/jibPLpawaCwA+FPcgyqT7j0clMQ3s
         tC1Pk0RbV5gTGAzgCRM5AfLcJbSqPnYnAyHpWqJo3B25Iif0i/NGJQaEZdHu28rzpW1p
         1g/Nnt/CJ72h96hJEwWGr6LOOmBkpBq/bKQSmldXIPBqvAFiwf8CdUBkj5ATaG2i8tjC
         nj/usWmm48AmWHZXH7S/hKNIfGJNGP9MUB88ERurbX18hgvwatsMvy9otx2M7Hj0QVRH
         hywSdofVB9VMrSxLFWlNizO9VdKUuel/zQvod3Gt3o8DBSgRAKeMFhs8E5Ac//FZexEr
         Yxcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680019981;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a43oPMRnm69LASNADHw7LdIvPaoT0ClGFsoq3D8JVsg=;
        b=uubIZOmatDJPsg4Bc5Ee2laR5Nzp7z2myAA0c9ga4GM2D+Vw+Trgdh5p+dtiuOdFpq
         uxHVqZKXnIbR+b50JNstc52Orf+JT58x4Q0uXf0xV2Vb3ZZCRoQUt19vgwiYMLNKvJpD
         i8WwRUA3Y79sgZmAA2Q0Q5WCqcKLvDWYSToUbhLg9MQtGaVcrGFZCcTjWQnHLIZahkKK
         gG2Ygp/tVbjM9Zz/SWOGNISlOeMydzmf7z/GOoZZhJZ1Q6nvgwxXkaJscmWauehb25Ge
         EH7jIIF3zteHOBlfW5zoSKM2Op1LupLnRsrWmxB9nIvhwxgT/jXdIdHp888nVHt41/IN
         GYTQ==
X-Gm-Message-State: AO0yUKVnBmdVr0+2o7ER1CZKvuYQ3oHPxWB6RWVGY+oLO7+MCNnzrZ3N
	ZNLwxF1nw032mvLeieShxjZfe7YeodbZSdCqrHU=
X-Google-Smtp-Source: AK7set8t3zeItWhhmiX/GhgkaDVta9J8Tf2IisMTN2MJVhTGJGgrT9yhI/IUN4QJvBNSjRZzdyQ2xRkFdSfDSm10BbM=
X-Received: by 2002:a1c:7714:0:b0:3ee:3e07:5d35 with SMTP id
 t20-20020a1c7714000000b003ee3e075d35mr3759486wmi.3.1680019981436; Tue, 28 Mar
 2023 09:13:01 -0700 (PDT)
MIME-Version: 1.0
References: <174D7A2B37A80873.4174@lists.yoctoproject.org>
In-Reply-To: <174D7A2B37A80873.4174@lists.yoctoproject.org>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Tue, 28 Mar 2023 18:12:48 +0200
Message-ID: <CA+chaQeUAH8KEZkVuQqfwK=JA6JmTjbeNrYB+G_JQdQvaUm4Ng@mail.gmail.com>
Subject: Re: [poky] [meta-yocto][PATCH] selftest: systemd_boot.py: respect IMAGE_LINK_NAME
To: Martin.Jansa@gmail.com
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000358a7e05f7f822ca"

--000000000000358a7e05f7f822ca
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Gentle ping.

I've already asked RP about this one on #yocto (as other changes related to
this were already merged to master last week).

Pinging on e-mail as well just in case abelloni wants to take it for spin
before RP does.

Cheers,

On Sat, Mar 18, 2023 at 10:42=E2=80=AFAM Martin Jansa via lists.yoctoprojec=
t.org
<Martin.Jansa=3Dgmail.com@lists.yoctoproject.org> wrote:

> * use IMAGE_LINK_NAME instead of hardcoding
>   core-image-minimal-genericx86-64.wic assumption
>
> [YOCTO #12937]
>
> Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
> ---
>  .../lib/oeqa/selftest/cases/systemd_boot.py           | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
>
> diff --git a/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
> b/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
> index 57599e1..6ce9a3b 100644
> --- a/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
> +++ b/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py
> @@ -2,7 +2,7 @@ import os
>
>  from oeqa.selftest.case import OESelftestTestCase
>  from oeqa.core.decorator.depends import OETestDepends
> -from oeqa.utils.commands import runCmd, bitbake, get_bb_var, runqemu
> +from oeqa.utils.commands import runCmd, bitbake, get_bb_var, get_bb_vars=
,
> runqemu
>
>  class Systemdboot(OESelftestTestCase):
>
> @@ -21,8 +21,9 @@ class Systemdboot(OESelftestTestCase):
>          features +=3D 'MACHINE =3D "genericx86-64"'
>          self.append_config(features)
>
> -        deploydir =3D get_bb_var('DEPLOY_DIR_IMAGE', "core-image-minimal=
")
> -        systemdbootfile =3D os.path.join(deploydir, 'systemd-bootx64.efi=
')
> +        image =3D 'core-image-minimal'
> +        bb_vars =3D get_bb_vars(['DEPLOY_DIR_IMAGE', 'IMAGE_LINK_NAME'],
> image)
> +        systemdbootfile =3D os.path.join(bb_vars['DEPLOY_DIR_IMAGE'],
> 'systemd-bootx64.efi')
>
>          # Ensure we're actually testing that this gets built and not tha=
t
>          # it was around from an earlier build
> @@ -50,8 +51,8 @@ class Systemdboot(OESelftestTestCase):
>          AutomatedBy:  Jose Perez Carranza <jose.perez.carranza at
> linux-intel.com>
>          """
>
> -        systemdbootimage =3D os.path.join(deploydir,
> 'core-image-minimal-genericx86-64.wic')
> -        imagebootfile =3D os.path.join(deploydir, 'bootx64.efi')
> +        systemdbootimage =3D os.path.join(bb_vars['DEPLOY_DIR_IMAGE'],
> '%s.wic' % bb_vars['IMAGE_LINK_NAME'])
> +        imagebootfile =3D os.path.join(bb_vars['DEPLOY_DIR_IMAGE'],
> 'bootx64.efi')
>
>          # Clean environment before start the test
>          if os.path.isfile(imagebootfile):
> --
> 2.40.0
>
>
>=20
>
>

--000000000000358a7e05f7f822ca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Gentle ping.<div><br></div><div>I&#39;ve already asked RP =
about this one on #yocto (as other changes related to this were already mer=
ged to master last week).</div><div><br></div><div>Pinging on e-mail as wel=
l just in case abelloni wants to take it for spin before RP does.</div><div=
><br></div><div>Cheers,</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Sat, Mar 18, 2023 at 10:42=E2=80=AFAM Mart=
in Jansa via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.o=
rg</a> &lt;Martin.Jansa=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.or=
g">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">* use IMAGE_LINK_NAME instead of hardcod=
ing<br>
=C2=A0 core-image-minimal-genericx86-64.wic assumption<br>
<br>
[YOCTO #12937]<br>
<br>
Signed-off-by: Martin Jansa &lt;<a href=3D"mailto:Martin.Jansa@gmail.com" t=
arget=3D"_blank">Martin.Jansa@gmail.com</a>&gt;<br>
---<br>
=C2=A0.../lib/oeqa/selftest/cases/systemd_boot.py=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0| 11 ++++++-----<br>
=C2=A01 file changed, 6 insertions(+), 5 deletions(-)<br>
<br>
diff --git a/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py b/meta-=
yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py<br>
index 57599e1..6ce9a3b 100644<br>
--- a/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py<br>
+++ b/meta-yocto-bsp/lib/oeqa/selftest/cases/systemd_boot.py<br>
@@ -2,7 +2,7 @@ import os<br>
<br>
=C2=A0from oeqa.selftest.case import OESelftestTestCase<br>
=C2=A0from oeqa.core.decorator.depends import OETestDepends<br>
-from oeqa.utils.commands import runCmd, bitbake, get_bb_var, runqemu<br>
+from oeqa.utils.commands import runCmd, bitbake, get_bb_var, get_bb_vars, =
runqemu<br>
<br>
=C2=A0class Systemdboot(OESelftestTestCase):<br>
<br>
@@ -21,8 +21,9 @@ class Systemdboot(OESelftestTestCase):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0features +=3D &#39;MACHINE =3D &quot;gene=
ricx86-64&quot;&#39;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0self.append_config(features)<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 deploydir =3D get_bb_var(&#39;DEPLOY_DIR_IMAGE=
&#39;, &quot;core-image-minimal&quot;)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 systemdbootfile =3D os.path.join(deploydir, &#=
39;systemd-bootx64.efi&#39;)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 image =3D &#39;core-image-minimal&#39;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 bb_vars =3D get_bb_vars([&#39;DEPLOY_DIR_IMAGE=
&#39;, &#39;IMAGE_LINK_NAME&#39;], image)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 systemdbootfile =3D os.path.join(bb_vars[&#39;=
DEPLOY_DIR_IMAGE&#39;], &#39;systemd-bootx64.efi&#39;)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Ensure we&#39;re actually testing that =
this gets built and not that<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# it was around from an earlier build<br>
@@ -50,8 +51,8 @@ class Systemdboot(OESelftestTestCase):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0AutomatedBy:=C2=A0 Jose Perez Carranza &l=
t;jose.perez.carranza at <a href=3D"http://linux-intel.com" rel=3D"noreferr=
er" target=3D"_blank">linux-intel.com</a>&gt;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;&quot;&quot;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 systemdbootimage =3D os.path.join(deploydir, &=
#39;core-image-minimal-genericx86-64.wic&#39;)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 imagebootfile =3D os.path.join(deploydir, &#39=
;bootx64.efi&#39;)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 systemdbootimage =3D os.path.join(bb_vars[&#39=
;DEPLOY_DIR_IMAGE&#39;], &#39;%s.wic&#39; % bb_vars[&#39;IMAGE_LINK_NAME&#3=
9;])<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 imagebootfile =3D os.path.join(bb_vars[&#39;DE=
PLOY_DIR_IMAGE&#39;], &#39;bootx64.efi&#39;)<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Clean environment before start the test=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if os.path.isfile(imagebootfile):<br>
-- <br>
2.40.0<br>
<br>
<br>
<br>
<br>
</blockquote></div>

--000000000000358a7e05f7f822ca--
