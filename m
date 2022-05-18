Subject: Need suggestion to handle COMBINED_FEATURES variable.
To: poky@lists.yoctoproject.org
From: "Rahul Chauhan" <rahulchauhankitps@gmail.com>
X-Originating-Location: Melbourne, Victoria, AU (155.190.53.4)
X-Originating-Platform: Windows Chrome 101
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 18 May 2022 07:01:28 -0700
Message-ID: <iXLe.1652882488907922335.H4ri@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="mImm3cRNrZcm2nJPgmGH"

--mImm3cRNrZcm2nJPgmGH
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Team,

I need one suggestion.

As we know wifi is the default distro feature.
meta/conf/distro/include/default-distrovars.inc ( https://git.yoctoproject.=
org/poky/tree/meta/conf/distro/include/default-distrovars.inc ) (this file =
add the DISTRO_FEATURES_DEFAULT)

packagegroup-base-wifi is dependent on COMBINED_FEATURES wifi.
${@bb.utils.contains('COMBINED_FEATURES', 'wifi', 'packagegroup-base-wifi',=
 '',d)} \

I don't want to include *packagegroup-base-wifi* package group in my build.

One way I can use DISTRO_FEATURES_remove =3D "wifi" in my distro.

Second thing I can use COMBINED_FEATURES_remove =3D "wifi".

But here my question is if I am using COMBINED_FEATURES_remove where is the=
 ideal place to keep this variable.

Or suggest me what is the ideal way to remove the combined feature from the=
 build. (I dont't want to keep it in local.conf file)

Thanks in advance.
Rahul Chauhan

--mImm3cRNrZcm2nJPgmGH
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Team,</div>
<div>&nbsp;</div>
<div>I need one suggestion.</div>
<div><br />As we know wifi is the default distro feature.<br /><a href=3D"h=
ttps://git.yoctoproject.org/poky/tree/meta/conf/distro/include/default-dist=
rovars.inc" target=3D"_blank" rel=3D"noopener">meta/conf/distro/include/def=
ault-distrovars.inc</a>&nbsp;(this file add the&nbsp;<span style=3D"color: =
#000000; font-family: Menlo, Monaco, Consolas, 'Courier New', monospace; fo=
nt-size: 13.3333px;">DISTRO_FEATURES_DEFAULT)</span><br /><br /></div>
<div>packagegroup-base-wifi is dependent on COMBINED_FEATURES wifi.<br />
<pre style=3D"padding: 0px; margin-bottom: 0px; color: #000000; font-size: =
13.3333px; background-color: #ffffff;"><span class=3D"s2" style=3D"color: #=
dd2200; background-color: #fff0f0;">${@bb.utils.contains('COMBINED_FEATURES=
', 'wifi', 'packagegroup-base-wifi', '',d)} \</span></pre>
</div>
<p><br />I don't want to include<strong> packagegroup-base-wifi</strong>&nb=
sp; package group in my build.<br /><br />One way I can use DISTRO_FEATURES=
_remove =3D "wifi" in my distro.</p>
<div>&nbsp;</div>
<div>Second thing I can use COMBINED_FEATURES_remove =3D "wifi".</div>
<div>&nbsp;</div>
<div>But here my question is if I am using COMBINED_FEATURES_remove where i=
s the ideal place to keep this variable.</div>
<div>&nbsp;</div>
<div>Or suggest me what is the ideal way to remove the combined feature fro=
m the build. (I dont't want to keep it in local.conf file)</div>
<div>&nbsp;</div>
<div>Thanks in advance.<br />Rahul Chauhan</div>

--mImm3cRNrZcm2nJPgmGH--
