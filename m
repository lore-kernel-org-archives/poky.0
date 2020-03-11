Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com [209.85.222.196])
 by mx.groups.io with SMTP id smtpd.web12.8956.1583936637249469229
 for <poky@lists.yoctoproject.org>;
 Wed, 11 Mar 2020 07:23:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=WzbIBtA9;
 spf=pass (domain: gmail.com, ip: 209.85.222.196, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f196.google.com with SMTP id e11so2197084qkg.9
        for <poky@lists.yoctoproject.org>; Wed, 11 Mar 2020 07:23:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Us0oAPt/fHOyg/ZJfXrc6zyAO6T+RlvV1hjlgcszJJk=;
        b=WzbIBtA9CPB+vVRfA0TpRlp/aHIpUmzs+xMLUIvYUzheO1zdp+6JzCBw4uOcm29jan
         v6CSqjGkPat0gE0ErTvMelgAJgYtktM5YarLUIw1P57aRD3siHl+aXEBPNqUiHYgPGnI
         Xao12pIt0wiXRum58pdrGZLk6XKieW+93n+6uyV6dd89peycVep9eyxUH9EEl8TfHbIW
         acbr8OjjmuyBuS7yRVaBKp16L8vq4lUwC8rqzjrIndHOf88I2Ub1iaGOjTQ7JXHWkQDi
         so9awF2IUUiW7Eodq993/Ahz+8AFuyjjzeHIaFGGzljqgDZxsxgenVOk1A1wq4yICpCn
         twfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Us0oAPt/fHOyg/ZJfXrc6zyAO6T+RlvV1hjlgcszJJk=;
        b=h21WBlRIHvxEMG/4Up0DWDFPxivJjqxTLzEJwhKe+zc/Ltedqw72eQ66GQq8lOm85M
         EXihc8tgQegt0hM+jrrlpzIHtSFAGOiHtFzRg59Wl88UWKJ5LysmWdyehNop3oodmREp
         iX4lLbFpH04k6QIVJi56Rbej5U4JfwGo577JzoeSDmXja+YwMzAaj9aBneybIIOEXoKE
         isi8eP46Cg9YbYnnCA782A0I1HuBhxGWmhmr9p6zYLneH871AcbUo4gP3XFoSthf8cQa
         tDVMrfxZK/wUX+RkmYSJwIB3GnIT/7tWto66IqdgLrJ+nrX3IGDndDACKl3ZzbAWxHqJ
         WRxA==
X-Gm-Message-State: ANhLgQ10TBzLw+U13aAGu913/+q6F5fc+WqoQuOCsGwcoDKyyg/fcgmZ
	i97ZQejJS2PSRq14F63vQnpijRxJPVqFAkPCm/U=
X-Google-Smtp-Source: ADFU+vuu8f0izXDyvxe72sOeJeOZUPbqMf2gpLCEsdjoHpWlGBzhtBEE1xN0eWnFe1Cs2mFpzwd3s+r1DwPGFe7tKmk=
X-Received: by 2002:a05:620a:94c:: with SMTP id w12mr3048007qkw.165.1583936635505;
 Wed, 11 Mar 2020 07:23:55 -0700 (PDT)
MIME-Version: 1.0
References: <20200311104423.556794-1-ja.kaisrlik@gmail.com>
In-Reply-To: <20200311104423.556794-1-ja.kaisrlik@gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 11 Mar 2020 07:23:44 -0700
Message-ID: <CAMKF1srrBL2q0a+3LY2-fdajfazZZTui+HJWqxTNv-Z3JdUrOw@mail.gmail.com>
Subject: Re: [meta-poky][PATCH] musl: removes aliases for glibc provided libraries
To: ja.kaisrlik@gmail.com
Cc: armccurdy@gmail.com, poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000818fdd05a094fc49"

--000000000000818fdd05a094fc49
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 11, 2020 at 3:44 AM <ja.kaisrlik@gmail.com> wrote:

> From: Jan Kaisrlik <ja.kaisrlik@gmail.com>
>
> Based on the recommendation in musl mailing list[1] All symlinks have
> been removed from musl recipe.
>
> [1]: https://www.openwall.com/lists/musl/2020/03/10/11
>
> Signed-off-by: Jan Kaisrlik <ja.kaisrlik@gmail.com>
>
> ---
>
> To move discusion from musl mainling list futher I wrote this patch. I'm
> affraid
> that the patch can break existing builds. OTOH I've tested with my
> non-trivial
> distro and I find sdk/image working without any additional patches.
>

Reason was to have some of prebuilt application work but I guess that could
now have grcompat perhaps
So this might be doable now I will have to test this patch a bit and see
how it goes

>
>  meta/recipes-core/musl/musl_git.bb | 15 +--------------
>  1 file changed, 1 insertion(+), 14 deletions(-)
>
> diff --git a/meta/recipes-core/musl/musl_git.bb b/meta/recipes-core/musl/
> musl_git.bb
> index afc8446547..f4fbb03092 100644
> --- a/meta/recipes-core/musl/musl_git.bb
> +++ b/meta/recipes-core/musl/musl_git.bb
> @@ -66,24 +66,11 @@ do_install() {
>         rm -f ${D}${bindir}/ldd ${D}${GLIBC_LDSO}
>         lnr ${D}${libdir}/libc.so ${D}${bindir}/ldd
>         lnr ${D}${libdir}/libc.so ${D}${GLIBC_LDSO}
> -       for l in crypt dl m pthread resolv rt util xnet
> -       do
> -               ln -sf libc.so ${D}${libdir}/lib$l.so
> -       done
> -       for i in libc.so.6 libcrypt.so.1 libdl.so.2 libm.so.6
> libpthread.so.0 libresolv.so.2 librt.so.1 libutil.so.1; do
> -               ln -sf libc.so ${D}${libdir}/$i
> -       done
>  }
>
>  PACKAGES =+ "${PN}-glibc-compat"
>
> -FILES_${PN}-glibc-compat += "\
> -                ${libdir}/libc.so.6 ${libdir}/libcrypt.so.1 \
> -                ${libdir}/libdl.so.2 ${libdir}/libm.so.6 \
> -                ${libdir}/libpthread.so.0 ${libdir}/libresolv.so.2 \
> -                ${libdir}/librt.so.1 ${libdir}/libutil.so.1 \
> -                ${GLIBC_LDSO} \
> -                "
> +FILES_${PN}-glibc-compat += "${GLIBC_LDSO}"
>
>  RDEPENDS_${PN}-dev += "linux-libc-headers-dev bsd-headers-dev
> libssp-nonshared-staticdev"
>  RPROVIDES_${PN}-dev += "libc-dev virtual-libc-dev"
> --
> 2.25.0
>
>

--000000000000818fdd05a094fc49
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Mar 11, 2020 at 3:44 AM &lt;<a href=3D"mailto:ja.ka=
isrlik@gmail.com">ja.kaisrlik@gmail.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex">From: Jan Kaisrlik &lt;<a href=3D"mailto:ja.kaisrlik@gm=
ail.com" target=3D"_blank">ja.kaisrlik@gmail.com</a>&gt;<br>
<br>
Based on the recommendation in musl mailing list[1] All symlinks have<br>
been removed from musl recipe.<br>
<br>
[1]: <a href=3D"https://www.openwall.com/lists/musl/2020/03/10/11" rel=3D"n=
oreferrer" target=3D"_blank">https://www.openwall.com/lists/musl/2020/03/10=
/11</a><br>
<br>
Signed-off-by: Jan Kaisrlik &lt;<a href=3D"mailto:ja.kaisrlik@gmail.com" ta=
rget=3D"_blank">ja.kaisrlik@gmail.com</a>&gt;<br>
<br>
---<br>
<br>
To move discusion from musl mainling list futher I wrote this patch. I&#39;=
m affraid<br>
that the patch can break existing builds. OTOH I&#39;ve tested with my non-=
trivial<br>
distro and I find sdk/image working without any additional patches.<br>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Reason was to ha=
ve some of prebuilt application work but I guess that could now have grcomp=
at perhaps=C2=A0</div><div dir=3D"auto">So this might be doable now I will =
have to test this patch a bit and see how=C2=A0it goes</div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex"><br>
=C2=A0meta/recipes-core/musl/<a href=3D"http://musl_git.bb" rel=3D"noreferr=
er" target=3D"_blank">musl_git.bb</a> | 15 +--------------<br>
=C2=A01 file changed, 1 insertion(+), 14 deletions(-)<br>
<br>
diff --git a/meta/recipes-core/musl/<a href=3D"http://musl_git.bb" rel=3D"n=
oreferrer" target=3D"_blank">musl_git.bb</a> b/meta/recipes-core/musl/<a hr=
ef=3D"http://musl_git.bb" rel=3D"noreferrer" target=3D"_blank">musl_git.bb<=
/a><br>
index afc8446547..f4fbb03092 100644<br>
--- a/meta/recipes-core/musl/<a href=3D"http://musl_git.bb" rel=3D"noreferr=
er" target=3D"_blank">musl_git.bb</a><br>
+++ b/meta/recipes-core/musl/<a href=3D"http://musl_git.bb" rel=3D"noreferr=
er" target=3D"_blank">musl_git.bb</a><br>
@@ -66,24 +66,11 @@ do_install() {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rm -f ${D}${bindir}/ldd ${D}${GLIBC_LDSO}<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 lnr ${D}${libdir}/libc.so ${D}${bindir}/ldd<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 lnr ${D}${libdir}/libc.so ${D}${GLIBC_LDSO}<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0for l in crypt dl m pthread resolv rt util xnet=
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0do<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ln -sf libc.so ${D}=
${libdir}/lib$l.so<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0done<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0for i in libc.so.6 libcrypt.so.1 libdl.so.2 lib=
m.so.6 libpthread.so.0 libresolv.so.2 librt.so.1 libutil.so.1; do<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ln -sf libc.so ${D}=
${libdir}/$i<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0done<br>
=C2=A0}<br>
<br>
=C2=A0PACKAGES =3D+ &quot;${PN}-glibc-compat&quot;<br>
<br>
-FILES_${PN}-glibc-compat +=3D &quot;\<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${libdir}/libc.so.=
6 ${libdir}/libcrypt.so.1 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${libdir}/libdl.so=
.2 ${libdir}/libm.so.6 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${libdir}/libpthre=
ad.so.0 ${libdir}/libresolv.so.2 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${libdir}/librt.so=
.1 ${libdir}/libutil.so.1 \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${GLIBC_LDSO} \<br=
>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<br>
+FILES_${PN}-glibc-compat +=3D &quot;${GLIBC_LDSO}&quot;<br>
<br>
=C2=A0RDEPENDS_${PN}-dev +=3D &quot;linux-libc-headers-dev bsd-headers-dev =
libssp-nonshared-staticdev&quot;<br>
=C2=A0RPROVIDES_${PN}-dev +=3D &quot;libc-dev virtual-libc-dev&quot;<br>
-- <br>
2.25.0<br>
<br>
</blockquote></div></div>

--000000000000818fdd05a094fc49--
