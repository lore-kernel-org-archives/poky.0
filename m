Return-Path: <praveen.vatt@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5394E00961; Thu, 26 Mar 2015 05:04:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (praveen.vatt[at]gmail.com)
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
	*      [209.85.220.49 listed in list.dnswl.org]
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6C75E0095D
	for <poky@yoctoproject.org>; Thu, 26 Mar 2015 05:04:52 -0700 (PDT)
Received: by pabxg6 with SMTP id xg6so61265314pab.0
	for <poky@yoctoproject.org>; Thu, 26 Mar 2015 05:04:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=H0A38TjZHJZQtMlaiZdFXUPcw4je6Zmyt82AReEwsxk=;
	b=FIG0NLElcYBPegx48ev9le2EYTZ139QQzd7XtP6diP9dRjS2NAHsqPGGZtcWC5NSA1
	yFt5Zqjm0JJGCk4RlcavescqCaK7mxkGUeiD4EQRTV74Lcd1TdO78ShrGN6jE/dkkd2V
	/0H9MKXX2mScAq9dy1umMpv8zZToB6chmQho6H9pXMPNjN7Vfm2D8X/D9RVxKaocY9Y0
	hIy4c1KegPIrfLXeFan1lM50zTPYEmdlVD10xDMWsM9VUPmQ87gsaPEtdV/+RuSwpxDd
	gUbI6qMMSKJT7Yd/FZktOB8sp+f2dYoVHoUwHU6mVH2beh1eEFUQikvtAfBWipJDSgb6
	JXjg==
MIME-Version: 1.0
X-Received: by 10.66.160.138 with SMTP id xk10mr25814632pab.74.1427371492308; 
	Thu, 26 Mar 2015 05:04:52 -0700 (PDT)
Received: by 10.70.135.134 with HTTP; Thu, 26 Mar 2015 05:04:52 -0700 (PDT)
In-Reply-To: <DA03ECC2-2BA4-49A1-81D1-09CF33DA0EF6@gmail.com>
References: <CA+pXca0dVU9T=4EPJamKWmopsExG=u-7V+XaRbXYumqAQUwK2A@mail.gmail.com>
	<DA03ECC2-2BA4-49A1-81D1-09CF33DA0EF6@gmail.com>
Date: Thu, 26 Mar 2015 17:34:52 +0530
Message-ID: <CA+pXca3nEuQJjn825pW9U4z0gecHzgcM-pp+j4DbbBaJ7cwWeA@mail.gmail.com>
From: praveen vattipalli <praveen.vatt@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
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
X-List-Received-Date: Thu, 26 Mar 2015 12:04:58 -0000
Content-Type: multipart/alternative; boundary=047d7b6d81b2c2fa9105122fd222

--047d7b6d81b2c2fa9105122fd222
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi
Thanks  Khem Raj I replaced
PREFERRED_VERSION_gcc ?=3D "linaro-4.9%"
PREFERRED_VERSION_gcc-cross ?=3D "linaro-4.9%"
PREFERRED_VERSION_gcc-cross-initial ?=3D "linaro-4.9%"
PREFERRED_VERSION_gcc-cross-intermediate ?=3D "linaro-4.9%"
PREFERRED_VERSION_gcc-cross-canadian ?=3D "linaro-4.9%"
PREFERRED_VERSION_gcc-crosssdk ?=3D "linaro-4.9%"
PREFERRED_VERSION_gcc-crosssdk-initial ?=3D "linaro-4.9%"
PREFERRED_VERSION_gcc-crosssdk-intermediate ?=3D "linaro-4.9%"
PREFERRED_VERSION_gcc-runtime ?=3D "linaro-4.9%"
PREFERRED_VERSION_nativesdk-gcc-runtime ?=3D "linaro-4.9%"
PREFERRED_VERSION_libgcc ?=3D "linaro-4.9%"
PREFERRED_VERSION_nativesdk-libgcc ?=3D "linaro-4.9%"
PREFERRED_VERSION_gcc-cross-canadian-${TRANSLATED_TARGET_ARCH} ?=3D
"linaro-4.9%"

with

GCCVERSION =3D =E2=80=9Clinaro-4.9%"
SDKGCCVERSION =3D =E2=80=9Clinaro-4.9%=E2=80=9D
in conf/local.conf
It is compiling gcc-linaro
Thanks a lot

Thanks & Regards
Praveen


On Fri, Mar 20, 2015 at 8:46 AM, Khem Raj <raj.khem@gmail.com> wrote:

>
> On Mar 19, 2015, at 2:21 AM, praveen vattipalli <praveen.vatt@gmail.com>
> wrote:
>
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
> PREFERRED_VERSION_gcc-cross-canadian-${TRANSLATED_TARGET_ARCH} ?=3D
> "linaro-4.9%"
>
>
> all you should require is setting
>
> GCCVERSION =3D =E2=80=9Clinaro-4.9%"
> SDKGCCVERSION  =3D =E2=80=9Clinaro-4.9%=E2=80=9D
>
>
>

--047d7b6d81b2c2fa9105122fd222
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi</div><div>Thanks =C2=A0Khem Raj I replaced </div><=
div><div style=3D"font:12px/normal Helvetica;text-transform:none;text-inden=
t:0px;letter-spacing:normal;word-spacing:0px;white-space:normal;font-size-a=
djust:none;font-stretch:normal">PREFERRED_VERSION_gcc ?=3D &quot;linaro-4.9=
%&quot;<br>PREFERRED_VERSION_gcc-cross ?=3D &quot;linaro-4.9%&quot;<br>PREF=
ERRED_VERSION_gcc-cross-initial ?=3D &quot;linaro-4.9%&quot;<br>PREFERRED_V=
ERSION_gcc-cross-intermediate ?=3D &quot;linaro-4.9%&quot;<br>PREFERRED_VER=
SION_gcc-cross-canadian ?=3D &quot;linaro-4.9%&quot;<br>PREFERRED_VERSION_g=
cc-crosssdk ?=3D &quot;linaro-4.9%&quot;<br>PREFERRED_VERSION_gcc-crosssdk-=
initial ?=3D &quot;linaro-4.9%&quot;<br>PREFERRED_VERSION_gcc-crosssdk-inte=
rmediate ?=3D &quot;linaro-4.9%&quot;<br>PREFERRED_VERSION_gcc-runtime ?=3D=
 &quot;linaro-4.9%&quot;<br>PREFERRED_VERSION_nativesdk-gcc-runtime ?=3D &q=
uot;linaro-4.9%&quot;<br>PREFERRED_VERSION_libgcc ?=3D &quot;linaro-4.9%&qu=
ot;<br>PREFERRED_VERSION_nativesdk-libgcc ?=3D &quot;linaro-4.9%&quot;<br>P=
REFERRED_VERSION_gcc-cross-canadian-${TRANSLATED_TARGET_ARCH} ?=3D &quot;li=
naro-4.9%&quot;</div><div style=3D"font:12px/normal Helvetica;text-transfor=
m:none;text-indent:0px;letter-spacing:normal;word-spacing:0px;white-space:n=
ormal;font-size-adjust:none;font-stretch:normal"></div><br>with </div><div>=
=C2=A0</div><div><div>GCCVERSION =3D =E2=80=9Clinaro-4.9%&quot;</div><div>S=
DKGCCVERSION  =3D =E2=80=9Clinaro-4.9%=E2=80=9D </div><div>in conf/local.co=
nf</div><div>It is compiling gcc-linaro </div><div>Thanks a lot </div><div>=
=C2=A0</div><div>Thanks &amp; Regards</div><div>Praveen</div></div><div>=C2=
=A0</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On=
 Fri, Mar 20, 2015 at 8:46 AM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div style=3D"word-wrap:break-wo=
rd"><span><br><div><blockquote type=3D"cite"><div>On Mar 19, 2015, at 2:21 =
AM, praveen vattipalli &lt;<a href=3D"mailto:praveen.vatt@gmail.com" target=
=3D"_blank">praveen.vatt@gmail.com</a>&gt; wrote:</div><br><div><div style=
=3D"font:12px/normal Helvetica;text-transform:none;text-indent:0px;letter-s=
pacing:normal;word-spacing:0px;white-space:normal">PREFERRED_VERSION_gcc ?=
=3D &quot;linaro-4.9%&quot;<br>PREFERRED_VERSION_gcc-cross ?=3D &quot;linar=
o-4.9%&quot;<br>PREFERRED_VERSION_gcc-cross-initial ?=3D &quot;linaro-4.9%&=
quot;<br>PREFERRED_VERSION_gcc-cross-intermediate ?=3D &quot;linaro-4.9%&qu=
ot;<br>PREFERRED_VERSION_gcc-cross-canadian ?=3D &quot;linaro-4.9%&quot;<br=
>PREFERRED_VERSION_gcc-crosssdk ?=3D &quot;linaro-4.9%&quot;<br>PREFERRED_V=
ERSION_gcc-crosssdk-initial ?=3D &quot;linaro-4.9%&quot;<br>PREFERRED_VERSI=
ON_gcc-crosssdk-intermediate ?=3D &quot;linaro-4.9%&quot;<br>PREFERRED_VERS=
ION_gcc-runtime ?=3D &quot;linaro-4.9%&quot;<br>PREFERRED_VERSION_nativesdk=
-gcc-runtime ?=3D &quot;linaro-4.9%&quot;<br>PREFERRED_VERSION_libgcc ?=3D =
&quot;linaro-4.9%&quot;<br>PREFERRED_VERSION_nativesdk-libgcc ?=3D &quot;li=
naro-4.9%&quot;<br>PREFERRED_VERSION_gcc-cross-canadian-${TRANSLATED_TARGET=
_ARCH} ?=3D &quot;linaro-4.9%&quot;</div><div style=3D"font:12px/normal Hel=
vetica;text-transform:none;text-indent:0px;letter-spacing:normal;word-spaci=
ng:0px;white-space:normal"></div><br></div></blockquote></div><br></span><d=
iv>all you should require is setting=C2=A0</div><div><br></div><div><div>GC=
CVERSION =3D =E2=80=9Clinaro-4.9%&quot;</div><div>SDKGCCVERSION =C2=A0=3D =
=E2=80=9Clinaro-4.9%=E2=80=9D</div></div><div><br></div><div><br></div></di=
v></blockquote></div><br></div>

--047d7b6d81b2c2fa9105122fd222--
