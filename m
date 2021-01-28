Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com [209.85.222.46])
 by mx.groups.io with SMTP id smtpd.web09.25851.1611845857202721888
 for <poky@lists.yoctoproject.org>;
 Thu, 28 Jan 2021 06:57:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=efN6ufme;
 spf=pass (domain: gmail.com, ip: 209.85.222.46, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f46.google.com with SMTP id g13so2056706uaw.5
        for <poky@lists.yoctoproject.org>; Thu, 28 Jan 2021 06:57:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=i/GSXMbdvSWBqpRC50YWIx26rk0G8oHfa9yO9bIqMEo=;
        b=efN6ufmemvVxK7XB3SmiQydHskyL426kw517IsQCaNNw9F8QPGq2d7BvWBS0vE+EQ1
         kdZKKMh/RaXB5gmIOPzPDETsWi55umBDAoywKHetVLFEiWFL7eWRuJ9WbIIvczvFK9NX
         iRZbqm67s8QOYqZ4MB5dqiXRsxOJS6n3uVa6DYZvCbrpMWaLU508PdXv/MiK7WzHWn3M
         Km/KJSfBwpfD64nL62wtWoGvxNDMy1yK8RKzRdkVQhsVe3/mGKd5cgkOJrhfrgerpYo7
         sLulQ659lpqd/gDSfBLUetf5uuDcXAb4+c7AAgv3xcErc3MwS7FpNFiuYek5chm3Fxyw
         9jxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=i/GSXMbdvSWBqpRC50YWIx26rk0G8oHfa9yO9bIqMEo=;
        b=JLvDCpL1q9Ravz3OLftqa5kWAiAvtYRUuV2SonXgJVAV891HHV2hECgfnv3a058BeJ
         n/ohbfE1EmhWhl9uAW75lKom4iLkS6Xd0HYfYcoFKbfbHckBj9aLqUAwbTwaNozq5ml6
         ip8vh57GX+jvx86Fiokd/FetDwxw1bRdelw8kiFCNxomg+hdex9hRNa60M9LW30BdHnu
         9c8mYfZwX2ETfcEejfNaIdDXwRacdbSZhK2BbfJR0aHkPB18Uv4e1MZPtdQvTn8RpSgX
         +GBGYXa/PU4WaIgQ3URnw3wnhD/slklbMGHKanQ12oES62fPFaOx3sMK5tEzv1eRQL4C
         wBwA==
X-Gm-Message-State: AOAM530ohaKfxhzZq3Lx3K9Qk1RzmUtUSZ8Yo/kkLQ32xeWhCdJ7HivF
	CDHkquQcVBq5oamIMSu4yM/MUBVIdSp+1SyByhk6qPL2URU=
X-Google-Smtp-Source: ABdhPJx7eRMOAaT+rEmkB8bCB8kAACwluAep/Cn8pqME09fP4yMeYVcbe2ak8mdIXhmS6RLgjIe+CVbxDDaLKWpM8e4=
X-Received: by 2002:ab0:311a:: with SMTP id e26mr11166672ual.22.1611845856338;
 Thu, 28 Jan 2021 06:57:36 -0800 (PST)
MIME-Version: 1.0
References: <20210128135758.106532-1-julien.massot@iot.bzh>
In-Reply-To: <20210128135758.106532-1-julien.massot@iot.bzh>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Thu, 28 Jan 2021 15:57:24 +0100
Message-ID: <CANNYZj_F4yDDkeAJfpAqbGnby7r6BW+mLwmPGGY59b=fGaU3+g@mail.gmail.com>
Subject: Re: [poky] [PATCH v2 dunfell] rng-tools: backport 6.11 from master
To: Julien Massot <julien.massot@iot.bzh>
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b3261005b9f71b86"

--000000000000b3261005b9f71b86
Content-Type: text/plain; charset="UTF-8"

Version upgrades are not allowed in stable branches; you need to backport
specific commits.

Also this needs to go to oe-core list.

Alex

On Thu, 28 Jan 2021 at 14:58, Julien Massot <julien.massot@iot.bzh> wrote:

> rng-tools < 6.11 may spam the console when only jitter source
> is available.
>
> """
> rngd[379]: [jitter]: Unable to obtain AES key, disabling AES in JITTER
> source
> rngd[379]: Entropy Generation is slow, consider tuning/adding sources
> ...
> rngd[379]: Entropy Generation is slow, consider tuning/adding sources
> """
> Please also look at
>
> https://github.com/nhorman/rng-tools/pull/99/commits
>
> Backport the recipe from master so that we no longer have this
> issue.
>
> Signed-off-by: Julien Massot <julien.massot@iot.bzh>
> ---
>  .../rng-tools/rng-tools/rngd.service          | 21 ++++++++++++++++++-
>  .../{rng-tools_6.9.bb => rng-tools_6.11.bb}   | 16 ++++++++++----
>  2 files changed, 32 insertions(+), 5 deletions(-)
>  rename meta/recipes-support/rng-tools/{rng-tools_6.9.bb =>
> rng-tools_6.11.bb} (79%)
>
> diff --git a/meta/recipes-support/rng-tools/rng-tools/rngd.service
> b/meta/recipes-support/rng-tools/rng-tools/rngd.service
> index aaaaa29074..0559b97991 100644
> --- a/meta/recipes-support/rng-tools/rng-tools/rngd.service
> +++ b/meta/recipes-support/rng-tools/rng-tools/rngd.service
> @@ -8,6 +8,25 @@ Conflicts=shutdown.target
>  [Service]
>  EnvironmentFile=-@SYSCONFDIR@/default/rng-tools
>  ExecStart=@SBINDIR@/rngd -f $EXTRA_ARGS
> +CapabilityBoundingSet=CAP_SYS_ADMIN
> +IPAddressDeny=any
> +LockPersonality=yes
> +MemoryDenyWriteExecute=yes
> +NoNewPrivileges=yes
> +PrivateTmp=yes
> +ProtectControlGroups=yes
> +ProtectHome=yes
> +ProtectHostname=yes
> +ProtectKernelModules=yes
> +ProtectKernelLogs=yes
> +ProtectSystem=strict
> +RestrictAddressFamilies=AF_UNIX
> +RestrictNamespaces=yes
> +RestrictRealtime=yes
> +RestrictSUIDSGID=yes
> +SystemCallArchitectures=native
> +SystemCallErrorNumber=EPERM
> +SystemCallFilter=@system-service
>
>  [Install]
> -WantedBy=multi-user.target
> +WantedBy=sysinit.target
> diff --git a/meta/recipes-support/rng-tools/rng-tools_6.9.bb
> b/meta/recipes-support/rng-tools/rng-tools_6.11.bb
> similarity index 79%
> rename from meta/recipes-support/rng-tools/rng-tools_6.9.bb
> rename to meta/recipes-support/rng-tools/rng-tools_6.11.bb
> index 913342c315..61a0cef2e0 100644
> --- a/meta/recipes-support/rng-tools/rng-tools_6.9.bb
> +++ b/meta/recipes-support/rng-tools/rng-tools_6.11.bb
> @@ -6,7 +6,7 @@ HOMEPAGE = "https://github.com/nhorman/rng-tools"
>  BUGTRACKER = "https://github.com/nhorman/rng-tools/issues"
>  LICENSE = "GPLv2"
>  LIC_FILES_CHKSUM = "file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263"
> -DEPENDS = "sysfsutils"
> +DEPENDS = "sysfsutils openssl"
>
>  SRC_URI = "\
>      git://github.com/nhorman/rng-tools.git \
> @@ -14,17 +14,18 @@ SRC_URI = "\
>      file://default \
>      file://rngd.service \
>  "
> -SRCREV = "4a865797a69dd38c64a86aa32884ecc9ba7b4d08"
> +SRCREV = "2ea13473fd5bfea3c861dc0e23bd65e2afe8007b"
>
>  S = "${WORKDIR}/git"
>
>  inherit autotools update-rc.d systemd pkgconfig
>
> -PACKAGECONFIG ??= "libgcrypt libjitterentropy"
> +EXTRA_OECONF = "--without-rtlsdr"
> +
> +PACKAGECONFIG ??= "libjitterentropy"
>  PACKAGECONFIG_libc-musl = "libargp libjitterentropy"
>
>  PACKAGECONFIG[libargp] =
> "--with-libargp,--without-libargp,argp-standalone,"
> -PACKAGECONFIG[libgcrypt] =
> "--with-libgcrypt,--without-libgcrypt,libgcrypt,"
>  PACKAGECONFIG[libjitterentropy] =
> "--enable-jitterentropy,--disable-jitterentropy,libjitterentropy"
>  PACKAGECONFIG[libp11] = "--with-pkcs11,--without-pkcs11,libp11 openssl"
>  PACKAGECONFIG[nistbeacon] = "--with-nistbeacon,--without-nistbeacon,curl
> libxml2 openssl"
> @@ -49,4 +50,11 @@ do_install_append() {
>          -e 's,@SBINDIR@,${sbindir},g' \
>          ${D}${sysconfdir}/init.d/rng-tools \
>          ${D}${systemd_system_unitdir}/rngd.service
> +
> +    if [ "${@bb.utils.contains('PACKAGECONFIG', 'nistbeacon', 'yes',
> 'no', d)}" = "yes" ]; then
> +        sed -i \
> +            -e '/^IPAddressDeny=any/d' \
> +            -e '/^RestrictAddressFamilies=/ s/$/ AF_INET AF_INET6/' \
> +            ${D}${systemd_system_unitdir}/rngd.service
> +    fi
>  }
> --
> 2.29.2
>
>
> 
>
>

--000000000000b3261005b9f71b86
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Version upgrades are not allowed in stable branches; =
you need to backport specific commits.</div><div><br></div><div>Also this n=
eeds to go to oe-core list.</div><div><br></div><div>Alex<br></div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, =
28 Jan 2021 at 14:58, Julien Massot &lt;<a href=3D"mailto:julien.massot@iot=
.bzh">julien.massot@iot.bzh</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">rng-tools &lt; 6.11 may spam the console when on=
ly jitter source<br>
is available.<br>
<br>
&quot;&quot;&quot;<br>
rngd[379]: [jitter]: Unable to obtain AES key, disabling AES in JITTER sou=
rce<br>
rngd[379]: Entropy Generation is slow, consider tuning/adding sources<br>
...<br>
rngd[379]: Entropy Generation is slow, consider tuning/adding sources<br>
&quot;&quot;&quot;<br>
Please also look at<br>
<br>
<a href=3D"https://github.com/nhorman/rng-tools/pull/99/commits" rel=3D"no=
referrer" target=3D"_blank">https://github.com/nhorman/rng-tools/pull/99/co=
mmits</a><br>
<br>
Backport the recipe from master so that we no longer have this<br>
issue.<br>
<br>
Signed-off-by: Julien Massot &lt;<a href=3D"mailto:julien.massot@iot.bzh" =
target=3D"_blank">julien.massot@iot.bzh</a>&gt;<br>
---<br>
=C2=A0.../rng-tools/rng-tools/rngd.service=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 | 21 ++++++++++++++++++-<br>
=C2=A0.../{<a href=3D"http://rng-tools_6.9.bb" rel=3D"noreferrer" target=
=3D"_blank">rng-tools_6.9.bb</a> =3D&gt; <a href=3D"http://rng-tools_6.11.=
bb" rel=3D"noreferrer" target=3D"_blank">rng-tools_6.11.bb</a>}=C2=A0 =C2=
=A0| 16 ++++++++++----<br>
=C2=A02 files changed, 32 insertions(+), 5 deletions(-)<br>
=C2=A0rename meta/recipes-support/rng-tools/{<a href=3D"http://rng-tools_6=
.9.bb" rel=3D"noreferrer" target=3D"_blank">rng-tools_6.9.bb</a> =3D&gt; <a=
 href=3D"http://rng-tools_6.11.bb" rel=3D"noreferrer" target=3D"_blank">rng=
-tools_6.11.bb</a>} (79%)<br>
<br>
diff --git a/meta/recipes-support/rng-tools/rng-tools/rngd.service b/meta/=
recipes-support/rng-tools/rng-tools/rngd.service<br>
index aaaaa29074..0559b97991 100644<br>
--- a/meta/recipes-support/rng-tools/rng-tools/rngd.service<br>
+++ b/meta/recipes-support/rng-tools/rng-tools/rngd.service<br>
@@ -8,6 +8,25 @@ Conflicts=3Dshutdown.target<br>
=C2=A0[Service]<br>
=C2=A0EnvironmentFile=3D-@SYSCONFDIR@/default/rng-tools<br>
=C2=A0ExecStart=3D@SBINDIR@/rngd -f $EXTRA_ARGS<br>
+CapabilityBoundingSet=3DCAP_SYS_ADMIN<br>
+IPAddressDeny=3Dany<br>
+LockPersonality=3Dyes<br>
+MemoryDenyWriteExecute=3Dyes<br>
+NoNewPrivileges=3Dyes<br>
+PrivateTmp=3Dyes<br>
+ProtectControlGroups=3Dyes<br>
+ProtectHome=3Dyes<br>
+ProtectHostname=3Dyes<br>
+ProtectKernelModules=3Dyes<br>
+ProtectKernelLogs=3Dyes<br>
+ProtectSystem=3Dstrict<br>
+RestrictAddressFamilies=3DAF_UNIX<br>
+RestrictNamespaces=3Dyes<br>
+RestrictRealtime=3Dyes<br>
+RestrictSUIDSGID=3Dyes<br>
+SystemCallArchitectures=3Dnative<br>
+SystemCallErrorNumber=3DEPERM<br>
+SystemCallFilter=3D@system-service<br>
<br>
=C2=A0[Install]<br>
-WantedBy=3Dmulti-user.target<br>
+WantedBy=3Dsysinit.target<br>
diff --git a/meta/recipes-support/rng-tools/<a href=3D"http://rng-tools_6.=
9.bb" rel=3D"noreferrer" target=3D"_blank">rng-tools_6.9.bb</a> b/meta/reci=
pes-support/rng-tools/<a href=3D"http://rng-tools_6.11.bb" rel=3D"noreferre=
r" target=3D"_blank">rng-tools_6.11.bb</a><br>
similarity index 79%<br>
rename from meta/recipes-support/rng-tools/<a href=3D"http://rng-tools_6.9=
.bb" rel=3D"noreferrer" target=3D"_blank">rng-tools_6.9.bb</a><br>
rename to meta/recipes-support/rng-tools/<a href=3D"http://rng-tools_6.11.=
bb" rel=3D"noreferrer" target=3D"_blank">rng-tools_6.11.bb</a><br>
index 913342c315..61a0cef2e0 100644<br>
--- a/meta/recipes-support/rng-tools/<a href=3D"http://rng-tools_6.9.bb" r=
el=3D"noreferrer" target=3D"_blank">rng-tools_6.9.bb</a><br>
+++ b/meta/recipes-support/rng-tools/<a href=3D"http://rng-tools_6.11.bb" =
rel=3D"noreferrer" target=3D"_blank">rng-tools_6.11.bb</a><br>
@@ -6,7 +6,7 @@ HOMEPAGE =3D &quot;<a href=3D"https://github.com/nhorman/r=
ng-tools" rel=3D"noreferrer" target=3D"_blank">https://github.com/nhorman/r=
ng-tools</a>&quot;<br>
=C2=A0BUGTRACKER =3D &quot;<a href=3D"https://github.com/nhorman/rng-tools=
/issues" rel=3D"noreferrer" target=3D"_blank">https://github.com/nhorman/rn=
g-tools/issues</a>&quot;<br>
=C2=A0LICENSE =3D &quot;GPLv2&quot;<br>
=C2=A0LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Db234ee4d69f5fce4486a=
80fdaf4a4263&quot;<br>
-DEPENDS =3D &quot;sysfsutils&quot;<br>
+DEPENDS =3D &quot;sysfsutils openssl&quot;<br>
<br>
=C2=A0SRC_URI =3D &quot;\<br>
=C2=A0 =C2=A0 =C2=A0git://<a href=3D"http://github.com/nhorman/rng-tools.g=
it" rel=3D"noreferrer" target=3D"_blank">github.com/nhorman/rng-tools.git</=
a> \<br>
@@ -14,17 +14,18 @@ SRC_URI =3D &quot;\<br>
=C2=A0 =C2=A0 =C2=A0file://default \<br>
=C2=A0 =C2=A0 =C2=A0file://rngd.service \<br>
=C2=A0&quot;<br>
-SRCREV =3D &quot;4a865797a69dd38c64a86aa32884ecc9ba7b4d08&quot;<br>
+SRCREV =3D &quot;2ea13473fd5bfea3c861dc0e23bd65e2afe8007b&quot;<br>
<br>
=C2=A0S =3D &quot;${WORKDIR}/git&quot;<br>
<br>
=C2=A0inherit autotools update-rc.d systemd pkgconfig<br>
<br>
-PACKAGECONFIG ??=3D &quot;libgcrypt libjitterentropy&quot;<br>
+EXTRA_OECONF =3D &quot;--without-rtlsdr&quot;<br>
+<br>
+PACKAGECONFIG ??=3D &quot;libjitterentropy&quot;<br>
=C2=A0PACKAGECONFIG_libc-musl =3D &quot;libargp libjitterentropy&quot;<br>
<br>
=C2=A0PACKAGECONFIG[libargp] =3D &quot;--with-libargp,--without-libargp,ar=
gp-standalone,&quot;<br>
-PACKAGECONFIG[libgcrypt] =3D &quot;--with-libgcrypt,--without-libgcrypt,l=
ibgcrypt,&quot;<br>
=C2=A0PACKAGECONFIG[libjitterentropy] =3D &quot;--enable-jitterentropy,--d=
isable-jitterentropy,libjitterentropy&quot;<br>
=C2=A0PACKAGECONFIG[libp11] =3D &quot;--with-pkcs11,--without-pkcs11,libp1=
1 openssl&quot;<br>
=C2=A0PACKAGECONFIG[nistbeacon] =3D &quot;--with-nistbeacon,--without-nist=
beacon,curl libxml2 openssl&quot;<br>
@@ -49,4 +50,11 @@ do_install_append() {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-e &#39;s,@SBINDIR@,${sbindir},g&#39; \<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${D}${sysconfdir}/init.d/rng-tools \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0${D}${systemd_system_unitdir}/rngd.servi=
ce<br>
+<br>
+=C2=A0 =C2=A0 if [ &quot;${@bb.utils.contains(&#39;PACKAGECONFIG&#39;, &#=
39;nistbeacon&#39;, &#39;yes&#39;, &#39;no&#39;, d)}&quot; =3D &quot;yes&qu=
ot; ]; then<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 sed -i \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -e &#39;/^IPAddressDeny=3Dany/d=
&#39; \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -e &#39;/^RestrictAddressFamili=
es=3D/ s/$/ AF_INET AF_INET6/&#39; \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${D}${systemd_system_unitdir}/r=
ngd.service<br>
+=C2=A0 =C2=A0 fi<br>
=C2=A0}<br>
-- <br>
2.29.2<br>
<br>
<br>
<br>
<br>
</blockquote></div>

--000000000000b3261005b9f71b86--
