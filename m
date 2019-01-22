Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B31F8E00C62; Tue, 22 Jan 2019 10:16:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.66 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
	[209.85.208.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 901AAE006F1
	for <poky@yoctoproject.org>; Tue, 22 Jan 2019 10:16:08 -0800 (PST)
Received: by mail-ed1-f66.google.com with SMTP id b3so20198726ede.1
	for <poky@yoctoproject.org>; Tue, 22 Jan 2019 10:16:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=mIRLknhKRrn+weUuyX5/O3kuVeQaFNLer2ewSFaQ+NE=;
	b=E/T4eBzCR1cep4QHckJ1DAlhMxtVzmU/s0LqZi4MSjYaqH23hViWG3BtFERjoYioin
	e3iGDjA2oX3eyL1IjyG7w2UYXrTZa8/RsD7QFE28GupbMMQmVbWspexlKxGTGPe+HhVE
	FsMOgM3L1i3j9OYV3cpmsZGUiRrTGUHvS2tgS8pu6i1MtPgV9Y6pyut+mv4D18gTCLvq
	u6BXDjfnYxyjaVcQ1V30lIyNvbtAkGrfi5bGr/P9nYEok/7lqNLw3sRtWVJbSk+4V5i6
	zKZEqv/KPMyhfpf7jd+ptCkulaJabqcBMXpb4MyPwPGLA2lUU09PVGtlyX/noNQvVhEG
	QGeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=mIRLknhKRrn+weUuyX5/O3kuVeQaFNLer2ewSFaQ+NE=;
	b=JzjpKxc1hZh9QxpjM8JJCB5umlMT4dVIuLopR91KLdDUGsSTIYgf4uK84Dr23nAf+e
	Kd/kCuG2UFXWX1whORLoUFolKZbmOM+pbl6T7hE2MrO7JWHUDgaZjtWQeaefvGgAVzu0
	3Gjmj9rdsX4bKLLeBG+v2qI0dXwHY8mnkgrwhRk22q/PCo/X2mk9SMpVSUBlBJQQYdxE
	yub4N8RdYCucOH8POu+tJO+FtODbBZbqE0R4yblM2uS92KT3eUxxY4UATvxh8NVJOPFK
	eC8m5/D3AiWmWW9lO20ZRTaspQLGQCZyBsOxg5lrcFsX7xl/HMy+gIEkGlqQv88pkaij
	5jeA==
X-Gm-Message-State: AJcUukcMIfzc0c/fUwetLCM8rWNrUuL85Rg+Ceqvr1fH2ARI5NiZgg/Q
	MWfe9sggWw9W5ive66Tyt+waO+ZWXGMvZNhI1n0=
X-Google-Smtp-Source: ALg8bN7fYCVNHuHbe2LpLgA86OWGksxvA+f5uUnoEUbl1jGDSbBtIpVkI1jB9qM7xwiKbzX5Tpr0No9vokWu0PvPKLU=
X-Received: by 2002:a17:906:6c97:: with SMTP id
	s23-v6mr29320018ejr.79.1548180967609; 
	Tue, 22 Jan 2019 10:16:07 -0800 (PST)
MIME-Version: 1.0
References: <20190118154920.15457-1-pkj@axis.com>
	<CABcZANm6JqmzyiV3cJ-t6x1KAqzwCXMbo_h1ATDNsS7vW6sYmA@mail.gmail.com>
	<a5f956a72a11498a9370ce99491bf940@XBOX04.axis.com>
In-Reply-To: <a5f956a72a11498a9370ce99491bf940@XBOX04.axis.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Tue, 22 Jan 2019 10:15:56 -0800
Message-ID: <CAFNP8OumWA1-6hDhLcxML=tO9LK13ETqGekZ_uqTKd1dAoKzcQ@mail.gmail.com>
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Tue, 22 Jan 2019 18:16:09 -0000
Content-Type: multipart/alternative; boundary="0000000000009f5aa105800ff851"

--0000000000009f5aa105800ff851
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

oops... are we cool on the docs?

Scott

On Tue, Jan 22, 2019 at 5:42 AM Peter Kjellerstedt <
peter.kjellerstedt@axis.com> wrote:

> Not sure if it is needed as such, but in the lights of the recent problem
> with base-files, it seemed better to change it here as well. Also, since
> Scott and RP were a bit trigger happy, the manual has already been update=
d
> to state that the below is how SDK_VERSION is defined in poky.conf. ;)
>
>
>
> //Peter
>
>
>
> *From:* Christopher Larson <kergoth@gmail.com>
> *Sent:* den 18 januari 2019 17:41
> *To:* Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> *Cc:* poky@yoctoproject.org
> *Subject:* Re: [poky] [PATCH] poky.conf: Define SDK_VERSION so
> DISTRO_VERSION overrides are supported
>
>
>
> The commit message covers the :=3D -> =3D, but doesn=E2=80=99t mention th=
e switch to
> getVar. I=E2=80=99m assuming it=E2=80=99s similar to the base-files fix w=
hen referencing an
> undefined variable, but is it really needed in this context?
>
>
>
> On Fri, Jan 18, 2019 at 8:49 AM Peter Kjellerstedt <
> peter.kjellerstedt@axis.com> wrote:
>
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
> -SDK_VERSION :=3D "
> ${@'${DISTRO_VERSION}'.replace('snapshot-${DATE}','snapshot')}"
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
>
>
>
> --
>
> Christopher Larson
> kergoth at gmail dot com
> Founder - BitBake, OpenEmbedded, OpenZaurus
> Senior Software Engineer, Mentor Graphics
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--0000000000009f5aa105800ff851
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>oops... are we cool on the docs?</div><div><br></div>=
<div>Scott<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Tue, Jan 22, 2019 at 5:42 AM Peter Kjellerstedt &lt;=
<a href=3D"mailto:peter.kjellerstedt@axis.com">peter.kjellerstedt@axis.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"SV">
<div class=3D"gmail-m_5987395131609784337WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:rgb(148,54,52)" lang=3D"EN-US">=
Not sure if it is needed as such, but in the lights of the recent problem w=
ith base-files, it seemed better to change it here as well. Also, since Sco=
tt and RP were a bit
 trigger happy, the manual has already been updated to state that the below=
 is how SDK_VERSION is defined in poky.conf. ;)<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(148,54,52)" lang=3D"EN-US">=
<u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(148,54,52)" lang=3D"EN-US">=
//Peter<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:rgb(148,54,52)" lang=3D"EN-US">=
<u></u>=C2=A0<u></u></span></p>
<div style=3D"border-color:currentcolor currentcolor currentcolor blue;bord=
er-style:none none none solid;border-width:medium medium medium 1.5pt;paddi=
ng:0cm 0cm 0cm 4pt">
<div>
<div style=3D"border-color:rgb(225,225,225) currentcolor currentcolor;borde=
r-style:solid none none;border-width:1pt medium medium;padding:3pt 0cm 0cm"=
>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> Christopher Larson &lt;<a href=3D"mailto:kergoth@gmail.com" tar=
get=3D"_blank">kergoth@gmail.com</a>&gt;
<br>
<b>Sent:</b> den 18 januari 2019 17:41<br>
<b>To:</b> Peter Kjellerstedt &lt;<a href=3D"mailto:peter.kjellerstedt@axis=
.com" target=3D"_blank">peter.kjellerstedt@axis.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@=
yoctoproject.org</a><br>
<b>Subject:</b> Re: [poky] [PATCH] poky.conf: Define SDK_VERSION so DISTRO_=
VERSION overrides are supported<u></u><u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">The commit message covers the :=3D -&gt; =3D, but do=
esn=E2=80=99t mention the switch to getVar. I=E2=80=99m assuming it=E2=80=
=99s similar to the base-files fix when referencing an undefined variable, =
but is it really needed in this context?<u></u><u></u></p>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Fri, Jan 18, 2019 at 8:49 AM Peter Kjellerstedt &=
lt;<a href=3D"mailto:peter.kjellerstedt@axis.com" target=3D"_blank">peter.k=
jellerstedt@axis.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-color:currentcolor currentcolor currentcolor rg=
b(204,204,204);border-style:none none none solid;border-width:medium medium=
 medium 1pt;padding:0cm 0cm 0cm 6pt;margin-left:4.8pt;margin-right:0cm">
<p class=3D"MsoNormal">If DISTRO_VERSION is defined using an override, e.g.=
, by defining it<br>
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
-SDK_VERSION :=3D &quot;<a href=3D"mailto:$%7b@&#39;$%7bDISTRO_VERSION%7d&#=
39;.replace(&#39;snapshot-$%7bDATE%7d&#39;,&#39;snapshot&#39;)%7d" target=
=3D"_blank">${@&#39;${DISTRO_VERSION}&#39;.replace(&#39;snapshot-${DATE}&#3=
9;,&#39;snapshot&#39;)}</a>&quot;<br>
+SDK_VERSION =3D &quot;<a href=3D"mailto:$%7b@d.getVar(&#39;DISTRO_VERSION&=
#39;).replace(&#39;snapshot-$%7bDATE%7d&#39;,%20&#39;snapshot&#39;)%7d" tar=
get=3D"_blank">${@d.getVar(&#39;DISTRO_VERSION&#39;).replace(&#39;snapshot-=
${DATE}&#39;, &#39;snapshot&#39;)}</a>&quot;<br>
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
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><u></u><u></u></p>
</blockquote>
</div>
<p class=3D"MsoNormal"><br clear=3D"all">
<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<p class=3D"MsoNormal">-- <u></u><u></u></p>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal">Christopher Larson<br>
kergoth at gmail dot com<br>
Founder - BitBake, OpenEmbedded, OpenZaurus<br>
Senior Software Engineer, Mentor Graphics<u></u><u></u></p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

-- <br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
</blockquote></div>

--0000000000009f5aa105800ff851--
