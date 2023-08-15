Return-Path: <nicolas.wirth@speedgoat.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4258C001DB
	for <webhook@archiver.kernel.org>; Tue, 15 Aug 2023 13:37:42 +0000 (UTC)
Subject: Re: GCC configuration issue: nanosleep does not seems to be available
To: poky@lists.yoctoproject.org
From: "Nicolas Wirth" <nicolas.wirth@speedgoat.ch>
X-Originating-Location: Baechli, Nidwalden, CH (146.4.107.86)
X-Originating-Platform: Windows Chrome 115
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 15 Aug 2023 06:37:35 -0700
References: <d8837748c0b0ebff9a2911bb20edea3191e0336e.camel@linuxfoundation.org>
In-Reply-To: <d8837748c0b0ebff9a2911bb20edea3191e0336e.camel@linuxfoundation.org>
Message-ID: <29355.1692106655155071796@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="UoPKVlnRXoAAPPmxhgEB"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 15 Aug 2023 13:37:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13124

--UoPKVlnRXoAAPPmxhgEB
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I could see why your option wouldn't have taken affect but I have no idea i=
f it is the right option or not.

As I said, I'd look at the config.log file for libstdc++, check the setting=
 you want is being set.

Cheers,

Richard

On Tue, 2023-08-15 at 06:31 -0700, nicolas.wirth via lists.yoctoproject.org=
 wrote:

Hello Richard, thanks to your help, I did the following but I still got the=
 same error described in the previous post:

* Edit the gcc-runtime recipe under poky/meta/recipes-devtools/gcc-runtime.=
inc (which is inclued in=C2=A0gcc-runtime_11.2.bb
* Changing this line:

EXTRA_OECONF:append =3D " --cache-file=3D ${ B} /config.cache "

* to:

EXTRA_OECONF:append =3D " --enable-libstdccxx-time --cache-file=3D ${ B} /c=
onfig.cache "

--UoPKVlnRXoAAPPmxhgEB
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"mso-far=
east-font-family: &#39;Times New Roman&#39;;">I could see why your option w=
ouldn&#39;t have taken affect but I have no idea if it is the right option =
or not.</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"mso-far=
east-font-family: &#39;Times New Roman&#39;;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"mso-far=
east-font-family: &#39;Times New Roman&#39;;">As I said, I&#39;d look at th=
e config.log file for libstdc++, check the setting you want is being set.</=
span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"mso-far=
east-font-family: &#39;Times New Roman&#39;;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"mso-far=
east-font-family: &#39;Times New Roman&#39;;">Cheers,</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"mso-far=
east-font-family: &#39;Times New Roman&#39;;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"mso-far=
east-font-family: &#39;Times New Roman&#39;;">Richard</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"mso-far=
east-font-family: &#39;Times New Roman&#39;;">=C2=A0</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"mso-far=
east-font-family: &#39;Times New Roman&#39;;">On Tue, 2023-08-15 at 06:31 -=
0700, nicolas.wirth via lists.yoctoproject.org wrote:</span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span style=3D"mso-far=
east-font-family: &#39;Times New Roman&#39;;">Hello Richard, thanks to your=
 help, I did the following but I still got the same error described in the =
previous post:</span></p>
<ul type=3D"disc">
<li class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto; mso-list: l1 level1 lfo1; tab-stops: list 36.0pt;"><span style=
=3D"mso-fareast-font-family: &#39;Times New Roman&#39;;">Edit the gcc-runti=
me recipe under poky/meta/recipes-devtools/gcc-runtime.inc (which is inclue=
d in=C2=A0gcc-runtime_11.2.bb</span></li>
<li class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto; mso-list: l1 level1 lfo1; tab-stops: list 36.0pt;"><span style=
=3D"mso-fareast-font-family: &#39;Times New Roman&#39;;">Changing this line=
:</span></li>
</ul>
<p class=3D"DefangedMsoNormal" style=3D"line-height: 14.25pt; background: w=
hitesmoke;" style=3D"margin:0px;"><span style=3D"font-family: &#39;JetBrain=
s Mono&#39;; mso-fareast-font-family: &#39;Times New Roman&#39;;">=C2=A0</s=
pan></p>
<p class=3D"DefangedMsoNormal" style=3D"line-height: 14.25pt; background: w=
hitesmoke;" style=3D"margin:0px;"><span style=3D"font-family: &#39;JetBrain=
s Mono&#39;; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #7a=
3e9d;">EXTRA_OECONF:append</span><span style=3D"font-family: &#39;JetBrains=
 Mono&#39;; mso-fareast-font-family: &#39;Times New Roman&#39;; color: blac=
k; mso-color-alt: windowtext;"> </span><span style=3D"font-family: &#39;Jet=
Brains Mono&#39;; mso-fareast-font-family: &#39;Times New Roman&#39;; color=
: #777777;">=3D</span><span style=3D"font-family: &#39;JetBrains Mono&#39;;=
 mso-fareast-font-family: &#39;Times New Roman&#39;; color: black; mso-colo=
r-alt: windowtext;"> </span><span style=3D"font-family: &#39;JetBrains Mono=
&#39;; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #777777;"=
>&#34; </span><span style=3D"font-family: &#39;JetBrains Mono&#39;; mso-far=
east-font-family: &#39;Times New Roman&#39;; color: #448c27;">--cache-file=
=3D</span><span style=3D"font-family: &#39;JetBrains Mono&#39;; mso-fareast=
-font-family: &#39;Times New Roman&#39;; color: #777777;">${</span><span st=
yle=3D"font-family: &#39;JetBrains Mono&#39;; mso-fareast-font-family: &#39=
;Times New Roman&#39;; color: #9c5d27;">B}</span><span style=3D"font-family=
: &#39;JetBrains Mono&#39;; mso-fareast-font-family: &#39;Times New Roman&#=
39;; color: #448c27;">/config.cache</span><span style=3D"font-family: &#39;=
JetBrains Mono&#39;; mso-fareast-font-family: &#39;Times New Roman&#39;; co=
lor: #777777;">&#34;</span><span style=3D"font-family: &#39;JetBrains Mono&=
#39;; mso-fareast-font-family: &#39;Times New Roman&#39;;"></span></p>
<ul type=3D"disc">
<li class=3D"MsoNormal" style=3D"mso-margin-top-alt: auto; mso-margin-botto=
m-alt: auto; mso-list: l0 level1 lfo2; tab-stops: list 36.0pt;"><span style=
=3D"mso-fareast-font-family: &#39;Times New Roman&#39;;">to:</span></li>
</ul>
<p class=3D"DefangedMsoNormal" style=3D"line-height: 14.25pt; background: w=
hitesmoke;" style=3D"margin:0px;"><span style=3D"font-family: &#39;JetBrain=
s Mono&#39;; mso-fareast-font-family: &#39;Times New Roman&#39;;">=C2=A0</s=
pan></p>
<p class=3D"DefangedMsoNormal" style=3D"line-height: 14.25pt; background: w=
hitesmoke;" style=3D"margin:0px;"><span style=3D"font-family: &#39;JetBrain=
s Mono&#39;; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #7a=
3e9d;">EXTRA_OECONF:append</span><span style=3D"font-family: &#39;JetBrains=
 Mono&#39;; mso-fareast-font-family: &#39;Times New Roman&#39;; color: blac=
k; mso-color-alt: windowtext;"> </span><span style=3D"font-family: &#39;Jet=
Brains Mono&#39;; mso-fareast-font-family: &#39;Times New Roman&#39;; color=
: #777777;">=3D</span><span style=3D"font-family: &#39;JetBrains Mono&#39;;=
 mso-fareast-font-family: &#39;Times New Roman&#39;; color: black; mso-colo=
r-alt: windowtext;"> </span><span style=3D"font-family: &#39;JetBrains Mono=
&#39;; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #777777;"=
>&#34;</span><span style=3D"font-family: &#39;JetBrains Mono&#39;; mso-fare=
ast-font-family: &#39;Times New Roman&#39;; color: #448c27;"> --enable-libs=
tdccxx-time --cache-file=3D</span><span style=3D"font-family: &#39;JetBrain=
s Mono&#39;; mso-fareast-font-family: &#39;Times New Roman&#39;; color: #77=
7777;">${</span><span style=3D"font-family: &#39;JetBrains Mono&#39;; mso-f=
areast-font-family: &#39;Times New Roman&#39;; color: #9c5d27;">B}</span><s=
pan style=3D"font-family: &#39;JetBrains Mono&#39;; mso-fareast-font-family=
: &#39;Times New Roman&#39;; color: #448c27;">/config.cache</span><span sty=
le=3D"font-family: &#39;JetBrains Mono&#39;; mso-fareast-font-family: &#39;=
Times New Roman&#39;; color: #777777;">&#34;</span><span style=3D"font-fami=
ly: &#39;JetBrains Mono&#39;; mso-fareast-font-family: &#39;Times New Roman=
&#39;;"></span></p>
<p class=3D"DefangedMsoNormal" style=3D"line-height: 14.25pt; background: w=
hitesmoke;" style=3D"margin:0px;"><span style=3D"font-family: &#39;JetBrain=
s Mono&#39;; mso-fareast-font-family: &#39;Times New Roman&#39;; color: bla=
ck; mso-color-alt: windowtext;">=C2=A0</span><span style=3D"font-family: &#=
39;JetBrains Mono&#39;; mso-fareast-font-family: &#39;Times New Roman&#39;;=
"></span></p>

--UoPKVlnRXoAAPPmxhgEB--

