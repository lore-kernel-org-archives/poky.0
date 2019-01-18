Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9434FE00CE2; Fri, 18 Jan 2019 08:40:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (kergoth[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.65 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
	[209.85.210.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65901E008CE
	for <poky@yoctoproject.org>; Fri, 18 Jan 2019 08:40:48 -0800 (PST)
Received: by mail-ot1-f65.google.com with SMTP id v23so14890925otk.9
	for <poky@yoctoproject.org>; Fri, 18 Jan 2019 08:40:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=05cEllq+vzpbMJIaVk/Qx8THENniJ1LigP7jdAL3eZM=;
	b=g3/N/OwmpfmFC4PNBAYOG6siBuBPzG3TXyFmEr19P77+mVBWqZTtBRK9Fq99brQShT
	behUu0jK5b4ipaDS0xXPXL0C+GjE19bJbsAs9xlYFRUI8ODkvCBBFLoB2x3v7zThfIYL
	WNm7oIFF+y6Q6jjlzQDDyR1mLC3LUxHBLGoT9K1icDPqtZQb0xcvF+pdWJK4CgT2A36P
	hy/Wa8cl1DMSBhpsTJT01xFUboBOrxNwnyDfaRcjvIntaDIYNbK13TGZHoDloYyWdf4Z
	Pe4Cp690Urgg61JODLdJ4vz7mhlLO2GdCVTq30LMQqNh+zZtUwJBZZKcXM7Tp/vIFhqS
	nAZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=05cEllq+vzpbMJIaVk/Qx8THENniJ1LigP7jdAL3eZM=;
	b=gMxHRf9Mf282nSFg9/pYw1dVRpBgRfYcV9kwTO+ULR4aY5uXCEfirqbBz/K2sGOpgE
	lXh2JjHD4hFqydSi84uornWwKUYLkH+fNQbJSY04yyeLXlV8puTowIl1f9OP06WDmbz5
	fe1yL9IkpVvNBmhwoUz0z7ksgE1SIhvlBWSLT9KkTz0frQ/Gs5CO9MAZKRahhG1hshlA
	/61l1TrXJQnSKzAHQR4JN+DK/OGIbT1WlTuK92SQf7bGohvZftv4UtbAPYaI7Cq1CLke
	An+W3Fwa8MXXpKuUJH7+18Vk/55imoQxGWa1NaEZ6Yw6HGJmGcrBev3Fz9ONGHtEYYry
	GgcA==
X-Gm-Message-State: AJcUukebyd0A6F3ynnR/NX0LOGtHU7+1k18VENUp7H4BUbDMQBjzLeE/
	DIZNQaC++It9r8KGWNUhEYIaDDp5vYHWutIxPnU4MQ==
X-Google-Smtp-Source: ALg8bN7zawwrJnRJElqeN8tujC/a+tj3RljK3URYAipj+GuE00mjAGorkkTFDF7uIl+I8iCZCP/Au+TMkBfftb3lXZI=
X-Received: by 2002:a9d:6c59:: with SMTP id g25mr12519691otq.55.1547829647798; 
	Fri, 18 Jan 2019 08:40:47 -0800 (PST)
MIME-Version: 1.0
References: <20190118154920.15457-1-pkj@axis.com>
In-Reply-To: <20190118154920.15457-1-pkj@axis.com>
From: Christopher Larson <kergoth@gmail.com>
Date: Fri, 18 Jan 2019 09:40:36 -0700
Message-ID: <CABcZANm6JqmzyiV3cJ-t6x1KAqzwCXMbo_h1ATDNsS7vW6sYmA@mail.gmail.com>
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] poky.conf: Define SDK_VERSION so DISTRO_VERSION overrides are supported
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
X-List-Received-Date: Fri, 18 Jan 2019 16:40:50 -0000
Content-Type: multipart/alternative; boundary="00000000000054777c057fbe2c56"

--00000000000054777c057fbe2c56
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The commit message covers the :=3D -> =3D, but doesn=E2=80=99t mention the =
switch to
getVar. I=E2=80=99m assuming it=E2=80=99s similar to the base-files fix whe=
n referencing an
undefined variable, but is it really needed in this context?

On Fri, Jan 18, 2019 at 8:49 AM Peter Kjellerstedt <
peter.kjellerstedt@axis.com> wrote:

> If DISTRO_VERSION is defined using an override, e.g., by defining it
> in auto.conf as DISTRO_VERSION_forcevariable, then the unoverridden
> value was still used in SDK_VERSION since it was defined using the :=3D
> operator. However, there should be no reason to define SDK_VERSION
> this way.
>
> Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> ---
>  meta-poky/conf/distro/poky.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta-poky/conf/distro/poky.conf
> b/meta-poky/conf/distro/poky.conf
> index f5de8f2335..73d200ebbd 100644
> --- a/meta-poky/conf/distro/poky.conf
> +++ b/meta-poky/conf/distro/poky.conf
> @@ -3,7 +3,7 @@ DISTRO_NAME =3D "Poky (Yocto Project Reference Distro)"
>  DISTRO_VERSION =3D "2.6+snapshot-${DATE}"
>  DISTRO_CODENAME =3D "master"
>  SDK_VENDOR =3D "-pokysdk"
> -SDK_VERSION :=3D
> "${@'${DISTRO_VERSION}'.replace('snapshot-${DATE}','snapshot')}"
> +SDK_VERSION =3D "${@d.getVar('DISTRO_VERSION').replace('snapshot-${DATE}=
',
> 'snapshot')}"
>
>  MAINTAINER =3D "Poky <poky@yoctoproject.org>"
>
> --
> 2.12.0
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


--=20
Christopher Larson
kergoth at gmail dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Senior Software Engineer, Mentor Graphics

--00000000000054777c057fbe2c56
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The commit message covers the :=3D -&gt; =3D, but doesn=E2=
=80=99t mention the switch to getVar. I=E2=80=99m assuming it=E2=80=99s sim=
ilar to the base-files fix when referencing an undefined variable, but is i=
t really needed in this context?</div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Fri, Jan 18, 2019 at 8:49 AM Peter Kjell=
erstedt &lt;<a href=3D"mailto:peter.kjellerstedt@axis.com">peter.kjellerste=
dt@axis.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;=
border-left-color:rgb(204,204,204);padding-left:1ex">If DISTRO_VERSION is d=
efined using an override, e.g., by defining it<br>
in auto.conf as DISTRO_VERSION_forcevariable, then the unoverridden<br>
value was still used in SDK_VERSION since it was defined using the :=3D<br>
operator. However, there should be no reason to define SDK_VERSION<br>
this way.<br>
<br>
Signed-off-by: Peter Kjellerstedt &lt;<a href=3D"mailto:peter.kjellerstedt@=
axis.com" target=3D"_blank">peter.kjellerstedt@axis.com</a>&gt;<br>
---<br>
=C2=A0meta-poky/conf/distro/poky.conf | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.c=
onf<br>
index f5de8f2335..73d200ebbd 100644<br>
--- a/meta-poky/conf/distro/poky.conf<br>
+++ b/meta-poky/conf/distro/poky.conf<br>
@@ -3,7 +3,7 @@ DISTRO_NAME =3D &quot;Poky (Yocto Project Reference Distro)=
&quot;<br>
=C2=A0DISTRO_VERSION =3D &quot;2.6+snapshot-${DATE}&quot;<br>
=C2=A0DISTRO_CODENAME =3D &quot;master&quot;<br>
=C2=A0SDK_VENDOR =3D &quot;-pokysdk&quot;<br>
-SDK_VERSION :=3D &quot;${@&#39;${DISTRO_VERSION}&#39;.replace(&#39;snapsho=
t-${DATE}&#39;,&#39;snapshot&#39;)}&quot;<br>
+SDK_VERSION =3D &quot;${@d.getVar(&#39;DISTRO_VERSION&#39;).replace(&#39;s=
napshot-${DATE}&#39;, &#39;snapshot&#39;)}&quot;<br>
<br>
=C2=A0MAINTAINER =3D &quot;Poky &lt;<a href=3D"mailto:poky@yoctoproject.org=
" target=3D"_blank">poky@yoctoproject.org</a>&gt;&quot;<br>
<br>
-- <br>
2.12.0<br>
<br>
-- <br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Christoph=
er Larson<br>kergoth at gmail dot com<br>Founder - BitBake, OpenEmbedded, O=
penZaurus<br>Senior Software Engineer, Mentor Graphics</div></div></div></d=
iv>

--00000000000054777c057fbe2c56--
