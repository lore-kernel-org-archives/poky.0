Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
 by mx.groups.io with SMTP id smtpd.web09.1195.1606939544713813724
 for <poky@lists.yoctoproject.org>;
 Wed, 02 Dec 2020 12:05:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=kK8daWvd;
 spf=pass (domain: gmail.com, ip: 209.85.218.54, mailfrom: martin.jansa@gmail.com)
Received: by mail-ej1-f54.google.com with SMTP id g20so6350056ejb.1
        for <poky@lists.yoctoproject.org>; Wed, 02 Dec 2020 12:05:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Gk8jcvcL8LvHAH9Tplz0rTeDfGWoxxj7cbx0ATiNt6k=;
        b=kK8daWvdVdIyedtz7ASPKaxMsPVdH+EY4uqve0hqz7xtPJfXK44v95T+3cddE0/vdt
         F6S3uTmad2KZ7E8ryRdmDZZBOUcPLDXPyNFqEsHx8ALR2ERLBYAyBDNW0WNUfMN4mKbO
         qC0E2Z5rxWP1qIVSIoEkQWsoa00Yx7/Lho4/lHGqKTW0Qv3XSTBdXd20heBjS/NHznoz
         6hFtqp6gR7rA5Qzs9638cUZ80ApGUgT4NekdmldP633nAPuB1v0LOG6sOvgwDjwY84FJ
         ZG/rAdvPATzgTU3SOn9aMaMVIrYsF4cNX5Q4dIjddpVEvyw7FyQxu8vrDuAcx8N6zuwe
         JLwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Gk8jcvcL8LvHAH9Tplz0rTeDfGWoxxj7cbx0ATiNt6k=;
        b=aTq+VDt9gjYroGRVDwDxOHs/JqI8OMxRq9levRP79lU30VbCJbxrtAoo8OqV3lJmKi
         C1OnL1t9cdrrK4jk9wWonxyJ7ilQTu/RGlZKmEKSwNdKOeHSvU7xiwMsZ/LD33gWc8pm
         /uoe+oyiuRPKVMex8kmu37PightXNW3Cj+swWKsNHriRvHI/D58pEKvXszE/9TRB0QS7
         V0C0Gx600s+j9ESN5xaol/YyPUI45C/AL/NDre4gLCWvfN+urL8zcZT38wD+hPxgOKEr
         OnRdUQ3ARsqI1hKSUrdg0PyzWz7cIBE0HKj84N0Y0GfdIzt9NDUVKJy/CvvGwRspKuCu
         sKiw==
X-Gm-Message-State: AOAM530yAJ9G4u7Cgi9n6L0zeOcmZGIuKYcZaWkFCYjyLrd3dWd3OFdq
	5Vuu5gnqznnN/qumCW733dCjiYt2/v3FeiHem2Q=
X-Google-Smtp-Source: ABdhPJycYDedURXm9KjdfSF1IGDlyCOIAWNeEB/5n95RvK8ACsOSEwZ5KswX8iRSgrpgN6QAw1zsB5XVxOYTeB4a1Ow=
X-Received: by 2002:a17:906:fa8b:: with SMTP id lt11mr1459952ejb.94.1606939543139;
 Wed, 02 Dec 2020 12:05:43 -0800 (PST)
MIME-Version: 1.0
References: <20201202195307.126789-1-javier.tia@hpe.com>
In-Reply-To: <20201202195307.126789-1-javier.tia@hpe.com>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Wed, 2 Dec 2020 21:05:32 +0100
Message-ID: <CA+chaQeR-93c6XngYqzUVeTuBMsoGrHKE6T4RZC5SgF4bw5Wrw@mail.gmail.com>
Subject: Re: [poky][PATCH] Add variable-key quality checker
To: Javier Tia <javier.tia@hpe.com>
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a4fc5905b580c4c6"

--000000000000a4fc5905b580c4c6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

WARN_QA/ERROR_QA variables don't belong to bitbake, because they are OE
specific and bitbake isn't used only by OE.

The same answer from Christopher Larson:
https://lists.openembedded.org/g/bitbake-devel/message/11848
does apply here.

On Wed, Dec 2, 2020 at 8:53 PM Javier Tia <javier.tia@hpe.com> wrote:

> Allow to select between a warning or error message when variable key
> replace the original key.
>
> Signed-off-by: Javier Ti=C3=A1 <javier.tia@hpe.com>
> ---
>  bitbake/lib/bb/data.py      | 11 ++++++++++-
>  meta/classes/insane.bbclass |  3 ++-
>  2 files changed, 12 insertions(+), 2 deletions(-)
>
> diff --git a/bitbake/lib/bb/data.py b/bitbake/lib/bb/data.py
> index 0d75d0c1a9..ca14d64abe 100644
> --- a/bitbake/lib/bb/data.py
> +++ b/bitbake/lib/bb/data.py
> @@ -100,7 +100,16 @@ def expandKeys(alterdata, readdata =3D None):
>          if newval is not None:
>              val =3D alterdata.getVar(key, False)
>              if val is not None:
> -                bb.warn("Variable key %s (%s) replaces original key %s
> (%s)." % (key, val, ekey, newval))
> +                msg =3D "Variable key %s (%s) replaces original key %s
> (%s)." % (key, val, ekey, newval)
> +                error_qa =3D alterdata.getVar('ERROR_QA', False)
> +                warn_qa =3D alterdata.getVar('WARN_QA', False)
> +                if error_qa and 'variable-key' in error_qa:
> +                    bb.error(msg)
> +                elif warn_qa and 'variable-key' in warn_qa:
> +                    bb.warn(msg)
> +                else:
> +                    bb.warn(msg)
> +
>          alterdata.renameVar(key, ekey)
>
>  def inheritFromOS(d, savedenv, permitted):
> diff --git a/meta/classes/insane.bbclass b/meta/classes/insane.bbclass
> index 9605ac2bae..731875ee28 100644
> --- a/meta/classes/insane.bbclass
> +++ b/meta/classes/insane.bbclass
> @@ -28,6 +28,7 @@ WARN_QA ?=3D "ldflags useless-rpaths rpaths staticdev
> libdir xorg-driver-abi \
>              pn-overrides infodir build-deps src-uri-bad \
>              unknown-configure-option symlink-to-sysroot multilib \
>              invalid-packageconfig host-user-contaminated uppercase-pn
> patch-fuzz \
> +            variable-key \
>              "
>  ERROR_QA ?=3D "dev-so debug-deps dev-deps debug-files arch pkgconfig la=
 \
>              perms dep-cmp pkgvarcheck perm-config perm-line perm-link \
> @@ -1205,7 +1206,7 @@ do_unpack[postfuncs] +=3D "do_qa_unpack"
>
>  python () {
>      import re
> -
> +
>      tests =3D d.getVar('ALL_QA').split()
>      if "desktop" in tests:
>          d.appendVar("PACKAGE_DEPENDS", " desktop-file-utils-native")
> --
> 2.29.2
>
>
>=20
>
>

--000000000000a4fc5905b580c4c6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">WARN_QA/ERROR_QA variables don&#39;t belong to bitbake, be=
cause they are OE specific and bitbake isn&#39;t used only by OE.<div><br><=
/div><div>The same answer from=C2=A0Christopher Larson:</div><div><a href=
=3D"https://lists.openembedded.org/g/bitbake-devel/message/11848">https://=
lists.openembedded.org/g/bitbake-devel/message/11848</a><br></div><div>does=
 apply here.</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Wed, Dec 2, 2020 at 8:53 PM Javier Tia &lt;<a href=3D"=
mailto:javier.tia@hpe.com">javier.tia@hpe.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">Allow to select between a warn=
ing or error message when variable key<br>
replace the original key.<br>
<br>
Signed-off-by: Javier Ti=C3=A1 &lt;<a href=3D"mailto:javier.tia@hpe.com" t=
arget=3D"_blank">javier.tia@hpe.com</a>&gt;<br>
---<br>
=C2=A0bitbake/lib/bb/data.py=C2=A0 =C2=A0 =C2=A0 | 11 ++++++++++-<br>
=C2=A0meta/classes/insane.bbclass |=C2=A0 3 ++-<br>
=C2=A02 files changed, 12 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/bitbake/lib/bb/data.py b/bitbake/lib/bb/data.py<br>
index 0d75d0c1a9..ca14d64abe 100644<br>
--- a/bitbake/lib/bb/data.py<br>
+++ b/bitbake/lib/bb/data.py<br>
@@ -100,7 +100,16 @@ def expandKeys(alterdata, readdata =3D None):<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if newval is not None:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0val =3D alterdata.getVar(k=
ey, False)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if val is not None:<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.warn(&quot;Var=
iable key %s (%s) replaces original key %s (%s).&quot; % (key, val, ekey, n=
ewval))<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 msg =3D &quot;Var=
iable key %s (%s) replaces original key %s (%s).&quot; % (key, val, ekey, n=
ewval)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 error_qa =3D alte=
rdata.getVar(&#39;ERROR_QA&#39;, False)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 warn_qa =3D alter=
data.getVar(&#39;WARN_QA&#39;, False)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if error_qa and &=
#39;variable-key&#39; in error_qa:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.=
error(msg)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 elif warn_qa and =
&#39;variable-key&#39; in warn_qa:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.=
warn(msg)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.=
warn(msg)<br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0alterdata.renameVar(key, ekey)<br>
<br>
=C2=A0def inheritFromOS(d, savedenv, permitted):<br>
diff --git a/meta/classes/insane.bbclass b/meta/classes/insane.bbclass<br>
index 9605ac2bae..731875ee28 100644<br>
--- a/meta/classes/insane.bbclass<br>
+++ b/meta/classes/insane.bbclass<br>
@@ -28,6 +28,7 @@ WARN_QA ?=3D &quot;ldflags useless-rpaths rpaths staticd=
ev libdir xorg-driver-abi \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pn-overrides infodir build=
-deps src-uri-bad \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unknown-configure-option s=
ymlink-to-sysroot multilib \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0invalid-packageconfig host=
-user-contaminated uppercase-pn patch-fuzz \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 variable-key \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
=C2=A0ERROR_QA ?=3D &quot;dev-so debug-deps dev-deps debug-files arch pkgc=
onfig la \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0perms dep-cmp pkgvarcheck =
perm-config perm-line perm-link \<br>
@@ -1205,7 +1206,7 @@ do_unpack[postfuncs] +=3D &quot;do_qa_unpack&quot;<b=
r>
<br>
=C2=A0python () {<br>
=C2=A0 =C2=A0 =C2=A0import re<br>
-=C2=A0 =C2=A0 <br>
+<br>
=C2=A0 =C2=A0 =C2=A0tests =3D d.getVar(&#39;ALL_QA&#39;).split()<br>
=C2=A0 =C2=A0 =C2=A0if &quot;desktop&quot; in tests:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0d.appendVar(&quot;PACKAGE_DEPENDS&quot;,=
 &quot; desktop-file-utils-native&quot;)<br>
-- <br>
2.29.2<br>
<br>
<br>
<br>
<br>
</blockquote></div>

--000000000000a4fc5905b580c4c6--
