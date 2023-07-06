Return-Path: <Lincoln.Ramsay@digi.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7F7EEB64DA
	for <webhook@archiver.kernel.org>; Thu,  6 Jul 2023 00:36:56 +0000 (UTC)
Subject: Cannot enable a templated service where the instance starts with a number
To: poky@lists.yoctoproject.org
From: "Ramsay, Lincoln" <Lincoln.Ramsay@digi.com>
X-Originating-Location: Brunswick West, Victoria, AU (220.233.36.19)
X-Originating-Platform: Linux Chrome 114
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 05 Jul 2023 17:36:47 -0700
Message-ID: <zaH1.1688603807958251008.7uhU@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="QDPUlL0OTLaxk73nqnC7"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 06 Jul 2023 00:36:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13103

--QDPUlL0OTLaxk73nqnC7
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi folks,

We just tried to update our poky submodule (kirkstone branch) and hit a pro=
blem because of this change: https://git.yoctoproject.org/poky/commit/?h=3D=
kirkstone&id=3D7f8a4aa6cf240a5cdda012837f3f3f7a0f9bbf1c

The problem is that we install some templated services like so:

SYSTEMD_SERVICE:${PN} =3D "\
wsapi-fcgi.socket \
wsapi-fcgi@1.service \

In do_rootfs, the poky systemctl is told to enable the service and so insta=
nce is set to "1".

The problem is that the re.sub uses \\1 and then pastes the instance name i=
n, so in our case, it ends up as \\11, which fails because there is only 1 =
match in the pattern.

python has a solution for this, which is to use \\g<1>.

eg.

-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dependent =3D re.s=
ub("([^%](%%)*)%i", "\\1{}".format(instance), dependent)
+ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dependent =3D re.s=
ub("([^%](%%)*)%i", "\\g<1>{}".format(instance), dependent)

I am not sure which other poky branches this change is on... presumably at =
least all of the newer ones.

I'm not sure of the normal process for proposing patches to poky, hence thi=
s email.

Thanks,
Lincoln

--QDPUlL0OTLaxk73nqnC7
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<span style=3D"border: 0px; font-variant-numeric: inherit; font-variant-eas=
t-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; =
font-size: 12pt; line-height: inherit; font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-f=
eature-settings: inherit; font-variation-settings: inherit; margin: 0px; pa=
dding: 0px; vertical-align: baseline; color: black;">Hi folks,</span><span =
style=3D"color: #000000; font-family: Calibri, Arial, Helvetica, sans-serif=
; font-size: 16px;"></span>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; f=
ont-size: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetic=
a, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-fe=
ature-settings: inherit; font-variation-settings: inherit; margin: 0px; pad=
ding: 0px; vertical-align: baseline; color: black;">&nbsp;</div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; f=
ont-size: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetic=
a, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-fe=
ature-settings: inherit; font-variation-settings: inherit; margin: 0px; pad=
ding: 0px; vertical-align: baseline; color: black;">We just tried to update=
 our poky submodule (kirkstone branch) and hit a problem because of this ch=
ange:&nbsp;<a id=3D"LPlnk974012" style=3D"border: 0px; font: inherit; margi=
n: 0px; padding: 0px; vertical-align: baseline;" href=3D"https://git.yoctop=
roject.org/poky/commit/?h=3Dkirkstone&amp;id=3D7f8a4aa6cf240a5cdda012837f3f=
3f7a0f9bbf1c" target=3D"_blank" rel=3D"noopener noreferrer" data-auth=3D"No=
tApplicable" data-linkindex=3D"0">https://git.yoctoproject.org/poky/commit/=
?h=3Dkirkstone&amp;id=3D7f8a4aa6cf240a5cdda012837f3f3f7a0f9bbf1c</a></div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; f=
ont-size: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetic=
a, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-fe=
ature-settings: inherit; font-variation-settings: inherit; margin: 0px; pad=
ding: 0px; vertical-align: baseline; color: black;">&nbsp;</div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; f=
ont-size: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetic=
a, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-fe=
ature-settings: inherit; font-variation-settings: inherit; margin: 0px; pad=
ding: 0px; vertical-align: baseline; color: black;">The problem is that we =
install some templated services like so:</div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; f=
ont-size: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetic=
a, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-fe=
ature-settings: inherit; font-variation-settings: inherit; margin: 0px; pad=
ding: 0px; vertical-align: baseline; color: black;">&nbsp;</div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; f=
ont-size: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetic=
a, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-fe=
ature-settings: inherit; font-variation-settings: inherit; margin: 0px; pad=
ding: 0px; vertical-align: baseline; color: black;">
<div style=3D"border: 0px; font-style: inherit; font-variant: inherit; font=
-stretch: inherit; font-size: 14px; line-height: 19px; font-family: 'Droid =
Sans Mono', monospace, monospace; font-optical-sizing: inherit; font-kernin=
g: inherit; font-feature-settings: inherit; font-variation-settings: inheri=
t; margin: 0px; padding: 0px; vertical-align: baseline; color: #d4d4d4; bac=
kground-color: #1e1e1e;"><span style=3D"border: 0px; font: inherit; margin:=
 0px; padding: 0px; vertical-align: baseline; color: inherit;"><span style=
=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertical-align: =
baseline; color: #9cdcfe;">SYSTEMD_SERVICE:${PN}</span><span style=3D"borde=
r: 0px; font: inherit; margin: 0px; padding: 0px; vertical-align: baseline;=
 color: inherit;">&nbsp;=3D<span style=3D"border: 0px; font: inherit; margi=
n: 0px; padding: 0px; vertical-align: baseline; color: inherit;">&nbsp;</sp=
an></span><span style=3D"border: 0px; font: inherit; margin: 0px; padding: =
0px; vertical-align: baseline; color: #ce9178;">"\</span></span>
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;"><span style=3D"border: 0px; font: inhe=
rit; margin: 0px; padding: 0px; vertical-align: baseline; color: #ce9178;">=
&nbsp; &nbsp; wsapi-fcgi.socket \</span></div>
</div>
<div style=3D"border: 0px; font-style: inherit; font-variant: inherit; font=
-stretch: inherit; font-size: 14px; line-height: 19px; font-family: 'Droid =
Sans Mono', monospace, monospace; font-optical-sizing: inherit; font-kernin=
g: inherit; font-feature-settings: inherit; font-variation-settings: inheri=
t; margin: 0px; padding: 0px; vertical-align: baseline; color: #d4d4d4; bac=
kground-color: #1e1e1e;"><span style=3D"border: 0px; font: inherit; margin:=
 0px; padding: 0px; vertical-align: baseline; color: inherit;"><span style=
=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertical-align: =
baseline; color: #ce9178;">&nbsp; &nbsp; wsapi-fcgi@1.service \</span></spa=
n></div>
<div style=3D"border: 0px; font-style: inherit; font-variant: inherit; font=
-stretch: inherit; font-size: 14px; line-height: 19px; font-family: 'Droid =
Sans Mono', monospace, monospace; font-optical-sizing: inherit; font-kernin=
g: inherit; font-feature-settings: inherit; font-variation-settings: inheri=
t; margin: 0px; padding: 0px; vertical-align: baseline; color: #d4d4d4; bac=
kground-color: #1e1e1e;">
<div style=3D"border: 0px; font: inherit; margin: 0px; padding: 0px; vertic=
al-align: baseline; color: inherit;">&nbsp;</div>
</div>
</div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; f=
ont-size: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetic=
a, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-fe=
ature-settings: inherit; font-variation-settings: inherit; margin: 0px; pad=
ding: 0px; vertical-align: baseline; color: black;">In do_rootfs, the poky =
systemctl is told to enable the service and so instance is set to "1".</div=
>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; f=
ont-size: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetic=
a, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-fe=
ature-settings: inherit; font-variation-settings: inherit; margin: 0px; pad=
ding: 0px; vertical-align: baseline; color: black;">&nbsp;</div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; f=
ont-size: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetic=
a, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-fe=
ature-settings: inherit; font-variation-settings: inherit; margin: 0px; pad=
ding: 0px; vertical-align: baseline; color: black;">The problem is that the=
 re.sub uses \\1 and then pastes the instance name in, so in our case, it e=
nds up as \\11, which fails because there is only 1 match in the pattern.</=
div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; f=
ont-size: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetic=
a, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-fe=
ature-settings: inherit; font-variation-settings: inherit; margin: 0px; pad=
ding: 0px; vertical-align: baseline; color: black;">&nbsp;</div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; f=
ont-size: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetic=
a, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-fe=
ature-settings: inherit; font-variation-settings: inherit; margin: 0px; pad=
ding: 0px; vertical-align: baseline; color: black;">python has a solution f=
or this, which is to use \\g&lt;1&gt;.</div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; f=
ont-size: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetic=
a, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-fe=
ature-settings: inherit; font-variation-settings: inherit; margin: 0px; pad=
ding: 0px; vertical-align: baseline; color: black;">&nbsp;</div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; f=
ont-size: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetic=
a, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-fe=
ature-settings: inherit; font-variation-settings: inherit; margin: 0px; pad=
ding: 0px; vertical-align: baseline; color: black;">eg.</div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; f=
ont-size: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetic=
a, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-fe=
ature-settings: inherit; font-variation-settings: inherit; margin: 0px; pad=
ding: 0px; vertical-align: baseline; color: black;">&nbsp;</div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; f=
ont-size: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetic=
a, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-fe=
ature-settings: inherit; font-variation-settings: inherit; margin: 0px; pad=
ding: 0px; vertical-align: baseline; color: black;"><span style=3D"border: =
0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font=
-stretch: inherit; font-size: 13.31px; line-height: inherit; font-family: m=
onospace; font-optical-sizing: inherit; font-kerning: inherit; font-feature=
-settings: inherit; font-variation-settings: inherit; margin: 0px; padding:=
 0px; vertical-align: baseline; color: green;">-&nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; dependent =3D re.sub("([^%](%%)*)%i", "\\1{}".=
format(instance), dependent)</span></div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; f=
ont-size: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetic=
a, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-fe=
ature-settings: inherit; font-variation-settings: inherit; margin: 0px; pad=
ding: 0px; vertical-align: baseline; color: black;"><span style=3D"border: =
0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font=
-stretch: inherit; font-size: 13.31px; line-height: inherit; font-family: m=
onospace; font-optical-sizing: inherit; font-kerning: inherit; font-feature=
-settings: inherit; font-variation-settings: inherit; margin: 0px; padding:=
 0px; vertical-align: baseline; color: green;"><span style=3D"border: 0px; =
font: inherit; margin: 0px; padding: 0px; vertical-align: baseline; color: =
inherit;">+ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;dependen=
t =3D re.sub("([^%](%%)*)%i", "\\g&lt;1&gt;{}".format(instance), dependent)=
</span><br aria-hidden=3D"true" /></span></div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; f=
ont-size: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetic=
a, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-fe=
ature-settings: inherit; font-variation-settings: inherit; margin: 0px; pad=
ding: 0px; vertical-align: baseline; color: black;">&nbsp;</div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; f=
ont-size: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetic=
a, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-fe=
ature-settings: inherit; font-variation-settings: inherit; margin: 0px; pad=
ding: 0px; vertical-align: baseline; color: black;"><span style=3D"border: =
0px; font: inherit; margin: 0px; padding: 0px; vertical-align: baseline; co=
lor: inherit;">I am not sure which other poky branches this change is on...=
 presumably at least all of the newer ones.</span></div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; f=
ont-size: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetic=
a, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-fe=
ature-settings: inherit; font-variation-settings: inherit; margin: 0px; pad=
ding: 0px; vertical-align: baseline; color: black;"><span style=3D"border: =
0px; font: inherit; margin: 0px; padding: 0px; vertical-align: baseline; co=
lor: inherit;">&nbsp;</span></div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; f=
ont-size: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetic=
a, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-fe=
ature-settings: inherit; font-variation-settings: inherit; margin: 0px; pad=
ding: 0px; vertical-align: baseline; color: black;"><span style=3D"border: =
0px; font: inherit; margin: 0px; padding: 0px; vertical-align: baseline; co=
lor: inherit;">I'm not sure of the normal process for proposing patches to =
poky, hence this email.</span></div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; f=
ont-size: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetic=
a, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-fe=
ature-settings: inherit; font-variation-settings: inherit; margin: 0px; pad=
ding: 0px; vertical-align: baseline; color: black;">&nbsp;</div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; f=
ont-size: 12pt; line-height: inherit; font-family: Calibri, Arial, Helvetic=
a, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-fe=
ature-settings: inherit; font-variation-settings: inherit; margin: 0px; pad=
ding: 0px; vertical-align: baseline; color: black;">Thanks,</div>
<span style=3D"border: 0px; font-variant-numeric: inherit; font-variant-eas=
t-asian: inherit; font-variant-alternates: inherit; font-stretch: inherit; =
font-size: 12pt; line-height: inherit; font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-f=
eature-settings: inherit; font-variation-settings: inherit; margin: 0px; pa=
dding: 0px; vertical-align: baseline; color: black;">Lincoln</span>

--QDPUlL0OTLaxk73nqnC7--

