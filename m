Return-Path: <jonathan.richardson@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70C5FE00D32; Thu, 11 Apr 2019 14:05:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.180 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f180.google.com (mail-it1-f180.google.com
	[209.85.166.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63F23E00CD5
	for <poky@yoctoproject.org>; Thu, 11 Apr 2019 14:05:43 -0700 (PDT)
Received: by mail-it1-f180.google.com with SMTP id k64so11994426itb.5
	for <poky@yoctoproject.org>; Thu, 11 Apr 2019 14:05:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
	h=from:mime-version:thread-index:date:message-id:subject:to;
	bh=IjZ7C/kkIIQ7tIs3kpuXv7WJtKrUciQW1s1GKrbmTJ4=;
	b=QvuHJfku8aZJNaQgNnGVnBL5KB2poOLKM9t3qScVnV1Ba0FGLKqaHJfepQ3fEKadZf
	Wwt3ObuBGcjlTufp8ZxonUpdSWqRTdZ5+NvFBNvHWkS+J4Gai8Rgk+X0rwwHz01AnoIm
	Y16nsQN2kKNZmfiZ4SQ39D7UAl+FO9GPyCgJI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:thread-index:date:message-id
	:subject:to;
	bh=IjZ7C/kkIIQ7tIs3kpuXv7WJtKrUciQW1s1GKrbmTJ4=;
	b=FEnVvbS+baL4u2fJ7jvSNhpQUxw7Jrhsu110acSpue6Aoti2RvzjTchffG0rHtDGT3
	vQqh9cOgE/UX6QcYK87qEi3abPitLRZ+ajTNucE7kV7THqoWI6OZhS5xlXuiVXJ85b7k
	Y1ivg2nxRfQYyalrdSJ27zlniozn0t8I795R2zB9EwgKTiRB/Sy4yBpeXmARwFyBblnH
	R4Q5Ec5ShO4Q4tFg4hfTpD0XDI1cs1AjXNtL/GYlDN6BYNa8QpngUruFDyptTvzfk1N9
	UxY0zgthL51ODOEJziebl1qj3wIEr2KtNzTJ0R1vfQLjRiv+IfVvoLjBbWyEASeBStUV
	xU0w==
X-Gm-Message-State: APjAAAVkLTbAsWzjTw0VZeUKIi0RgQ7zmgrKwRcalD7CvA0y1dHt+8w1
	nFogqNvyCNPMFQtcJuqMvREwqvQ0AfBzpJq+mnpH8dIY
X-Google-Smtp-Source: APXvYqyETOf14gKyiQRRawR5TE2g0LZYjwmZJwyDjFxRgwR6HrOGNT2moBO20n5WIL+J1EJBMQEMFxCRzzHiHLrOxo0=
X-Received: by 2002:a24:247:: with SMTP id 68mr9319301itu.13.1555016742396;
	Thu, 11 Apr 2019 14:05:42 -0700 (PDT)
From: Jonathan Richardson <jonathan.richardson@broadcom.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdTwqLjdtlIAbB+1QpqoFKLPB2htsw==
Date: Thu, 11 Apr 2019 14:05:40 -0700
Message-ID: <6687346091c25467c61566ecf86ea6f8@mail.gmail.com>
To: poky@yoctoproject.org
Subject: libc configuration of multilib config
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
X-List-Received-Date: Thu, 11 Apr 2019 21:05:44 -0000
Content-Type: multipart/alternative; boundary="0000000000008d2d1e0586478cbc"

--0000000000008d2d1e0586478cbc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,



We have a cortex-A72 tuning defined as our default tuning based on armv8.
We also have some bare metal code that runs on a cortex M0. Yocto allows
you to set a default tune for that multilib config so we call it softfp but
it=E2=80=99s an armv6 architecture with soft floating point:



MULTILIB_GLOBAL_VARIANTS +=3D "softfp"

MULTILIBS +=3D "multilib:softfp"

DEFAULTTUNE_virtclass-multilib-softfp =3D "armv6t-novfp"



Since we only have 1 recipe for code running on that processor (the SOC
contains armv8 and an M0) we compile it as softp-recipe_name, add it to
EXTRA_IMAGEDEPENDS along with other bootloaders and have everything in the
same deploy/machine when we create our image.



Now we want to use newlib instead of glibc for the softfp multilib config
only. I don=E2=80=99t see a way of configuring this. At this point should w=
e put it
in a different MACHINE? Should we be defining a multilib config for a
different architecture or is this overusing the feature?



Thanks.

--0000000000008d2d1e0586478cbc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3Dus-ascii"><meta name=3D"Generator" content=3D"Microsoft Word 14 (filtere=
d medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style></head><body lang=3D"EN-US" link=3D"blue" vlink=3D"purple"><div =
class=3D"WordSection1"><p class=3D"MsoNormal">Hi,</p><p class=3D"MsoNormal"=
>=C2=A0</p><p class=3D"MsoNormal">We have a cortex-A72 tuning defined as ou=
r default tuning based on armv8. We also have some bare metal code that run=
s on a cortex M0. Yocto allows you to set a default tune for that multilib =
config so we call it softfp but it=E2=80=99s an armv6 architecture with sof=
t floating point:</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal=
">MULTILIB_GLOBAL_VARIANTS +=3D &quot;softfp&quot;</p><p class=3D"MsoNormal=
">MULTILIBS +=3D &quot;multilib:softfp&quot;</p><p class=3D"MsoNormal">DEFA=
ULTTUNE_virtclass-multilib-softfp =3D &quot;armv6t-novfp&quot;</p><p class=
=3D"MsoNormal">=C2=A0</p><p class=3D"MsoNormal">Since we only have 1 recipe=
 for code running on that processor (the SOC contains armv8 and an M0) we c=
ompile it as softp-recipe_name, add it to EXTRA_IMAGEDEPENDS along with oth=
er bootloaders and have everything in the same deploy/machine when we creat=
e our image. </p><p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </p><p class=3D"MsoNormal">Now we want to us=
e newlib instead of glibc for the softfp multilib config only. I don=E2=80=
=99t see a way of configuring this. At this point should we put it in a dif=
ferent MACHINE? Should we be defining a multilib config for a different arc=
hitecture or is this overusing the feature?</p><p class=3D"MsoNormal">=C2=
=A0</p><p class=3D"MsoNormal">Thanks.</p></div></body></html>

--0000000000008d2d1e0586478cbc--
