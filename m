Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F155BE0090F; Thu, 19 Mar 2015 20:16:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.178 listed in list.dnswl.org]
Received: from mail-pd0-f178.google.com (mail-pd0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7910DE00832
	for <poky@yoctoproject.org>; Thu, 19 Mar 2015 20:16:43 -0700 (PDT)
Received: by pdbcz9 with SMTP id cz9so95193127pdb.3
	for <poky@yoctoproject.org>; Thu, 19 Mar 2015 20:16:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=wQ1Y2SU8LTIfl8ChdZ3Rv6lnTiqluUW5ymqGaD28yqY=;
	b=ZLGGYD4YTGZHeuII+Sb1ZC2pM6TiifCbAjCOhC+VRsI+TABRCK8fsVrkCI8Q65YEOt
	tDmFdSug4RYfDkmBqdOlEjZLRNUp9fIFIX14M+iThRKcFc9T8OUBdIX16j0whyAn1Tjt
	RNa+En0LscElSIW1uDQTyMsgfee1Gai9+vUGsicmJtspw0qVC4MSsNgMdhvf5M4NejVG
	083haO5YQnlH2ODoUMVz3Nd2hvjIeXvofkrMKWFi6FeC1umntZF77sn6cB/zvuRESRY9
	GuKqtwvQT+WY82c4SfVEjD08885S+gE1NcdgfwWIOx8RWR5VeYC2YtYa2fU5YNqPfm2i
	4u1w==
X-Received: by 10.70.5.3 with SMTP id o3mr184385200pdo.17.1426821403405;
	Thu, 19 Mar 2015 20:16:43 -0700 (PDT)
Received: from ?IPv6:2601:9:3580:84c:f151:f903:f72b:3094?
	([2601:9:3580:84c:f151:f903:f72b:3094])
	by mx.google.com with ESMTPSA id z1sm5320652pdp.52.2015.03.19.20.16.42
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 19 Mar 2015 20:16:42 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CA+pXca0dVU9T=4EPJamKWmopsExG=u-7V+XaRbXYumqAQUwK2A@mail.gmail.com>
Date: Thu, 19 Mar 2015 20:16:51 -0700
Message-Id: <DA03ECC2-2BA4-49A1-81D1-09CF33DA0EF6@gmail.com>
References: <CA+pXca0dVU9T=4EPJamKWmopsExG=u-7V+XaRbXYumqAQUwK2A@mail.gmail.com>
To: praveen vattipalli <praveen.vatt@gmail.com>
X-Mailer: Apple Mail (2.2070.6)
Cc: poky@yoctoproject.org
Subject: Re: error compiling beaglebone using meta-lianro
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
X-List-Received-Date: Fri, 20 Mar 2015 03:16:49 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_06984DB8-BAA7-4A22-A38E-6C98BD5B6D2E"

--Apple-Mail=_06984DB8-BAA7-4A22-A38E-6C98BD5B6D2E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Mar 19, 2015, at 2:21 AM, praveen vattipalli =
<praveen.vatt@gmail.com> wrote:
>=20
> PREFERRED_VERSION_gcc ?=3D "linaro-4.9%"
> PREFERRED_VERSION_gcc-cross ?=3D "linaro-4.9%"
> PREFERRED_VERSION_gcc-cross-initial ?=3D "linaro-4.9%"
> PREFERRED_VERSION_gcc-cross-intermediate ?=3D "linaro-4.9%"
> PREFERRED_VERSION_gcc-cross-canadian ?=3D "linaro-4.9%"
> PREFERRED_VERSION_gcc-crosssdk ?=3D "linaro-4.9%"
> PREFERRED_VERSION_gcc-crosssdk-initial ?=3D "linaro-4.9%"
> PREFERRED_VERSION_gcc-crosssdk-intermediate ?=3D "linaro-4.9%"
> PREFERRED_VERSION_gcc-runtime ?=3D "linaro-4.9%"
> PREFERRED_VERSION_nativesdk-gcc-runtime ?=3D "linaro-4.9%"
> PREFERRED_VERSION_libgcc ?=3D "linaro-4.9%"
> PREFERRED_VERSION_nativesdk-libgcc ?=3D "linaro-4.9%"
> PREFERRED_VERSION_gcc-cross-canadian-${TRANSLATED_TARGET_ARCH} ?=3D =
"linaro-4.9%"
>=20

all you should require is setting=20

GCCVERSION =3D =E2=80=9Clinaro-4.9%"
SDKGCCVERSION  =3D =E2=80=9Clinaro-4.9%=E2=80=9D



--Apple-Mail=_06984DB8-BAA7-4A22-A38E-6C98BD5B6D2E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Mar 19, 2015, at 2:21 AM, praveen vattipalli &lt;<a =
href=3D"mailto:praveen.vatt@gmail.com" =
class=3D"">praveen.vatt@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-stroke-width: 0px;" class=3D"">PREFERRED_VERSION_gcc =
?=3D "linaro-4.9%"<br class=3D"">PREFERRED_VERSION_gcc-cross ?=3D =
"linaro-4.9%"<br class=3D"">PREFERRED_VERSION_gcc-cross-initial ?=3D =
"linaro-4.9%"<br class=3D"">PREFERRED_VERSION_gcc-cross-intermediate ?=3D =
"linaro-4.9%"<br class=3D"">PREFERRED_VERSION_gcc-cross-canadian ?=3D =
"linaro-4.9%"<br class=3D"">PREFERRED_VERSION_gcc-crosssdk ?=3D =
"linaro-4.9%"<br class=3D"">PREFERRED_VERSION_gcc-crosssdk-initial ?=3D =
"linaro-4.9%"<br class=3D"">PREFERRED_VERSION_gcc-crosssdk-intermediate =
?=3D "linaro-4.9%"<br class=3D"">PREFERRED_VERSION_gcc-runtime ?=3D =
"linaro-4.9%"<br class=3D"">PREFERRED_VERSION_nativesdk-gcc-runtime ?=3D =
"linaro-4.9%"<br class=3D"">PREFERRED_VERSION_libgcc ?=3D =
"linaro-4.9%"<br class=3D"">PREFERRED_VERSION_nativesdk-libgcc ?=3D =
"linaro-4.9%"<br =
class=3D"">PREFERRED_VERSION_gcc-cross-canadian-${TRANSLATED_TARGET_ARCH} =
?=3D "linaro-4.9%"</div><div style=3D"font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;" =
class=3D""></div><br =
class=3D"Apple-interchange-newline"></div></blockquote></div><br =
class=3D""><div class=3D"">all you should require is =
setting&nbsp;</div><div class=3D""><br class=3D""></div><div =
class=3D""><div class=3D"">GCCVERSION =3D =E2=80=9Clinaro-4.9%"</div><div =
class=3D"">SDKGCCVERSION &nbsp;=3D =E2=80=9Clinaro-4.9%=E2=80=9D</div></di=
v><div class=3D""><br class=3D""></div><div class=3D""><br =
class=3D""></div></body></html>=

--Apple-Mail=_06984DB8-BAA7-4A22-A38E-6C98BD5B6D2E--
