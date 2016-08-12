Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5DFBBE01273; Fri, 12 Aug 2016 03:00:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f45.google.com (mail-it0-f45.google.com
	[209.85.214.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9C20E01086
	for <poky@yoctoproject.org>; Fri, 12 Aug 2016 03:00:49 -0700 (PDT)
Received: by mail-it0-f45.google.com with SMTP id x130so9283215ite.1
	for <poky@yoctoproject.org>; Fri, 12 Aug 2016 03:00:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=I3rhTR77hmRxVflGu27DPCo14avpkF0FTRKD7/Se6MM=;
	b=gNrwclwIdyDCmmX9oOlXRusrrKNHElETcPFgm8PBEkvZnIDeZWZCVyfObwsnDRSMQk
	5aNdtfljsBaeQu34NTmTWDQq3aiVY4B9R/eAwV3XWPqQbdszq3aLMmfM7ij6uOafrH6d
	MsHoC1dDIv+Ion6PVnxI6dn8VoFABib31gDhougiKYE+kl/4yJyHtpa15WOATSOWpmLP
	JD+mrp8LJflF7yvO3UTJB9g0FsHvJlDfPez84Pc+q1Pu/0vtbVmmGHsC3FuDuf8Q6cuO
	YD02zB1TpNAIbCvZzvG72rtxwpm08cJtC1ljAOJxsOGdg5wNWx8G7sZGESBo3tPxcai3
	Hl2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=I3rhTR77hmRxVflGu27DPCo14avpkF0FTRKD7/Se6MM=;
	b=W6U9T8PKD1TPdOoHArU6ELOgOI+jZ9KD2cGEJmYN/j8W5nUjnCJOXyDh8C04mNdQ+s
	ApJkUc5LCZq3ZKDlDRLg/nhxvaK0e0QeW2eY5NDUb2e10mHtmz6A76zyLtb1UexAW+AL
	vPGg3k88YR8fNUEVzEL3IE2VtV8o3BNG8jU1YMC4TdgnyBIc611jZ+hiTw0yuKaWluda
	Ah/od8nv2pLD5NFSAxdJs6EYcqZd+77LD8C3nLqq83GRX3DaSX0+FUTK8Bk2o1i5apFJ
	Ox/J9sy7CJrRH9V0B6U3LUTS2hj1tX5a8J29Jv38SQMIkshvUQRcu3fHXBTu+gIQRbVI
	k58A==
X-Gm-Message-State: AEkoouv0etxYYuHU+1CXbk1g/lyBhNMBeqkmts4WuAEwGz0tulbP72HKdpY/mIOrwHpVHQ9SpzO42XOgiRaooeJi
X-Received: by 10.36.129.213 with SMTP id q204mr2283758itd.38.1470996048781;
	Fri, 12 Aug 2016 03:00:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.17 with HTTP; Fri, 12 Aug 2016 03:00:28 -0700 (PDT)
In-Reply-To: <6d7b5811de3bebb2b165ebe6f86fd34ebce35a8b.1470983575.git.liezhi.yang@windriver.com>
References: <cover.1470983575.git.liezhi.yang@windriver.com>
	<6d7b5811de3bebb2b165ebe6f86fd34ebce35a8b.1470983575.git.liezhi.yang@windriver.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 12 Aug 2016 11:00:28 +0100
Message-ID: <CAJTo0LaW1XAvZSk36v-LWyqbNmqTACkB5q4tHZDQJY0o-DKQaw@mail.gmail.com>
To: Robert Yang <liezhi.yang@windriver.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] maintainers.inc: update maintainers for Dengke
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
X-List-Received-Date: Fri, 12 Aug 2016 10:00:52 -0000
Content-Type: multipart/alternative; boundary=94eb2c08b1fcf4357d0539dcf490

--94eb2c08b1fcf4357d0539dcf490
Content-Type: text/plain; charset=UTF-8

On 12 August 2016 at 07:33, Robert Yang <liezhi.yang@windriver.com> wrote:

> -RECIPE_MAINTAINER_pn-encodings = "Jussi Kukkonen <
> jussi.kukkonen@intel.com>"
> +RECIPE_MAINTAINER_pn-encodings =  "Dengke Du <dengke.du@windriver.com>"
>

This is part of the X font subsystem, so I think we should keep this with
Jussi so that X is under one owner.


> -RECIPE_MAINTAINER_pn-gettext = "Wenzong Fan <wenzong.fan@windriver.com>"
> +RECIPE_MAINTAINER_pn-gettext = "Robert Yang <liezhi.yang@windriver.com>"
>  RECIPE_MAINTAINER_pn-gettext-minimal-native = "Hongxu Jia <
> hongxu.jia@windriver.com>"
>

Can the same owner have gettext and gettext-minimal-native?


> -RECIPE_MAINTAINER_pn-gpgme = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
> +RECIPE_MAINTAINER_pn-gpgme =  "Dengke Du <dengke.du@windriver.com>"
>
-RECIPE_MAINTAINER_pn-libgpg-error = "Jussi Kukkonen <
> jussi.kukkonen@intel.com>"
> +RECIPE_MAINTAINER_pn-libgpg-error =  "Dengke Du <dengke.du@windriver.com
> >"


Probably makes sense to keep these with the same maintainer as gnupg
(currently Hongxu).


> -RECIPE_MAINTAINER_pn-grub = "Jussi Kukkonen <jussi.kukkonen@intel.com>"
> +RECIPE_MAINTAINER_pn-grub =  "Dengke Du <dengke.du@windriver.com>"
>  RECIPE_MAINTAINER_pn-grub-efi = "Alexander Kanavin <
> alexander.kanavin@intel.com>"
>

Should keep these together.


> -RECIPE_MAINTAINER_pn-libx11-diet = "Kai Kang <kai.kang@windriver.com>"
> +RECIPE_MAINTAINER_pn-libx11-diet = "Robert Yang <
> liezhi.yang@windriver.com>"
>

This should be Jussi's along with the rest of X.

Ross

--94eb2c08b1fcf4357d0539dcf490
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 12 August 2016 at 07:33, Robert Yang <span dir=3D"ltr">=
&lt;<a href=3D"mailto:liezhi.yang@windriver.com" target=3D"_blank">liezhi.y=
ang@windriver.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div =
class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);bor=
der-left-style:solid;padding-left:1ex">-RECIPE_MAINTAINER_pn-<wbr>encodings=
 =3D &quot;Jussi Kukkonen &lt;<a href=3D"mailto:jussi.kukkonen@intel.com">j=
ussi.kukkonen@intel.com</a>&gt;&quot;<br>
+RECIPE_MAINTAINER_pn-<wbr>encodings =3D=C2=A0 &quot;Dengke Du &lt;<a href=
=3D"mailto:dengke.du@windriver.com">dengke.du@windriver.com</a>&gt;&quot;<b=
r></blockquote><div><br></div><div>This is part of the X font subsystem, so=
 I think we should keep this with Jussi so that X is under one owner.</div>=
<div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-l=
eft-style:solid;padding-left:1ex">-RECIPE_MAINTAINER_pn-gettext =3D &quot;W=
enzong Fan &lt;<a href=3D"mailto:wenzong.fan@windriver.com">wenzong.fan@win=
driver.com</a>&gt;&quot;<br>
+RECIPE_MAINTAINER_pn-gettext =3D &quot;Robert Yang &lt;<a href=3D"mailto:l=
iezhi.yang@windriver.com">liezhi.yang@windriver.com</a>&gt;&quot;<br>
=C2=A0RECIPE_MAINTAINER_pn-gettext-<wbr>minimal-native =3D &quot;Hongxu Jia=
 &lt;<a href=3D"mailto:hongxu.jia@windriver.com">hongxu.jia@windriver.com</=
a>&gt;&quot;<br></blockquote><div><br></div><div>Can the same owner have ge=
ttext and gettext-minimal-native?</div><div>=C2=A0<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;=
border-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex=
">-RECIPE_MAINTAINER_pn-gpgme =3D &quot;Jussi Kukkonen &lt;<a href=3D"mailt=
o:jussi.kukkonen@intel.com">jussi.kukkonen@intel.com</a>&gt;&quot;<br>
+RECIPE_MAINTAINER_pn-gpgme =3D=C2=A0 &quot;Dengke Du &lt;<a href=3D"mailto=
:dengke.du@windriver.com">dengke.du@windriver.com</a>&gt;&quot;<br></blockq=
uote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:so=
lid;padding-left:1ex">-RECIPE_MAINTAINER_pn-libgpg-<wbr>error =3D &quot;Jus=
si Kukkonen &lt;<a href=3D"mailto:jussi.kukkonen@intel.com">jussi.kukkonen@=
intel.com</a>&gt;&quot;<br>+RECIPE_MAINTAINER_pn-libgpg-<wbr>error =3D=C2=
=A0 &quot;Dengke Du &lt;<a href=3D"mailto:dengke.du@windriver.com">dengke.d=
u@windriver.com</a>&gt;&quot;</blockquote><div>=C2=A0</div><div>Probably ma=
kes sense to keep these with the same maintainer as gnupg (currently Hongxu=
).</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);=
border-left-style:solid;padding-left:1ex">-RECIPE_MAINTAINER_pn-grub =3D &q=
uot;Jussi Kukkonen &lt;<a href=3D"mailto:jussi.kukkonen@intel.com">jussi.ku=
kkonen@intel.com</a>&gt;&quot;<br>
+RECIPE_MAINTAINER_pn-grub =3D=C2=A0 &quot;Dengke Du &lt;<a href=3D"mailto:=
dengke.du@windriver.com">dengke.du@windriver.com</a>&gt;&quot;<br>
=C2=A0RECIPE_MAINTAINER_pn-grub-efi =3D &quot;Alexander Kanavin &lt;<a href=
=3D"mailto:alexander.kanavin@intel.com">alexander.kanavin@intel.com</a>&gt;=
&quot;<br></blockquote><div><br></div><div>Should keep these together.</div=
><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-=
left-style:solid;padding-left:1ex">-RECIPE_MAINTAINER_pn-libx11-<wbr>diet =
=3D &quot;Kai Kang &lt;<a href=3D"mailto:kai.kang@windriver.com">kai.kang@w=
indriver.com</a>&gt;&quot;<br>
+RECIPE_MAINTAINER_pn-libx11-<wbr>diet =3D &quot;Robert Yang &lt;<a href=3D=
"mailto:liezhi.yang@windriver.com">liezhi.yang@windriver.com</a>&gt;&quot;<=
br></blockquote><div><br></div><div>This should be Jussi&#39;s along with t=
he rest of X.</div><div>=C2=A0</div><div>Ross</div></div></div></div>

--94eb2c08b1fcf4357d0539dcf490--
