Return-Path: <rjiejie@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 102D9E0070B
	for <poky@yoctoproject.org>; Wed, 20 Jun 2012 18:46:08 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so1675373pbb.35
	for <poky@yoctoproject.org>; Wed, 20 Jun 2012 18:46:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=pU4ca1/I+TyVberQmPvIOVzFtct9G4Cd/YxBRz0XWFU=;
	b=hsRlCwdoYhgIfqFmYjv2dyUr2lI2ZO5kSfrSld2v06SL7a3DTPtQ+driVgNdlX5I3W
	FcDVm8BJXpd+m7EKnWw3sUI7d/og0ZcNzLjU57GV69agCHyiozRVlHNlRGlbRTDdFDCQ
	8U3kDVJBkEKZe0PI8HMyn1VrACtmneJs18Mra7zmPx96Xefe7U8QJ4TZio3sskubAP4a
	WafLzOKyvpIHbG7zG8yOkgZ9JwqsZtPYcYBSKEEO9T5Vg3CtxGxPwjmAMkIApgJ1fo4y
	HvMEIqUNekaS646B5ro/sdWHfjqCaHvyidqO1DU2tPxVDf9FY0I0DyLtscnHztEBmtym
	K0rg==
Received: by 10.68.135.201 with SMTP id pu9mr79962703pbb.146.1340243167578;
	Wed, 20 Jun 2012 18:46:07 -0700 (PDT)
Received: from [10.5.1.107] ([101.71.248.130])
	by mx.google.com with ESMTPS id se9sm4880869pbc.25.2012.06.20.18.46.04
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 20 Jun 2012 18:46:06 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: jojo <rjiejie@gmail.com>
In-Reply-To: <CAMKF1somko6ZpxQB5uTCryhYgGmvDHQgPFFbXQm9nfMRqe_=PA@mail.gmail.com>
Date: Thu, 21 Jun 2012 09:46:01 +0800
Message-Id: <37B0D295-8778-4EBB-8CBC-B85920373A51@gmail.com>
References: <9F0B1281-3CC3-4D4B-847E-F1ABF5B32E8A@gmail.com>
	<CAMKF1somko6ZpxQB5uTCryhYgGmvDHQgPFFbXQm9nfMRqe_=PA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1278)
Cc: poky@yoctoproject.org
Subject: Re: Help with configuring Yocto with an external toolchain except "csl"
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 21 Jun 2012 01:46:08 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_F3054077-1478-4C78-B73A-AB387B21DD16"

--Apple-Mail=_F3054077-1478-4C78-B73A-AB387B21DD16
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=GB2312

@kr,
	Thanks for your reply.

	I have put following variables into local.conf & tested, but =
failed.
		TCMODE =3D "external-csl"
		EXTERNAL_TOOLCHAIN =3D "/opt/toolchain/gnuarm-4.4.1/"

	I think my situation is that i need three variables to control =
external toolchain at least like *buildroot*
		BR2_TOOLCHAIN_EXTERNAL_PREFIX
		BR2_TOOLCHAIN_EXTERNAL_PATH
		BR2_TOOLCHAIN_EXTERNAL_SYSROOT_PATH
	because that my toolchain pre-build source code  is not from =
*code sourcery* & directory struct is not like *code sourcery* also.

	is there some good method to fix this ? thanks

B.R.
-- jojo




=D4=DA 2012-6-20=A3=AC=CF=C2=CE=E71:47=A3=AC Khem Raj =D0=B4=B5=C0=A3=BA

> On Tue, Jun 19, 2012 at 2:06 AM, jojo <rjiejie@gmail.com> wrote:
>> @all,
>>        I google some information about this topic and then,
>>        i found the case is that jut support "CodeSourcery labs" =
toolchain.
>>=20
>>        I think my external toolchain is not standard of directory =
like "tcmode-externl-csl".
>>        I can use "buildroot" to use this toolchian that just use =
three variables following :
>>                BR2_TOOLCHAIN_EXTERNAL_PREFIX
>>                BR2_TOOLCHAIN_EXTERNAL_PATH
>>                BR2_TOOLCHAIN_EXTERNAL_SYSROOT_PATH
>>=20
>>        so there are some solution in poky ? thanks for you attention =
:)
>=20
> use TCMODE=3D"external-sourcery"
> and mention csl binary toolchain install tree using EXTERNAL_TOOLCHAIN
>=20
> in your local.conf
>=20
>=20
>>> B.R.
>> -- jojo
>>=20
>>=20
>>=20
>>=20
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky


--Apple-Mail=_F3054077-1478-4C78-B73A-AB387B21DD16
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=GB2312

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><div>@kr,</div><div><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>Thanks for your =
reply.</div><div><br></div><div><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>I have put following variables =
into local.conf &amp; tested, but failed.</div><div><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">		=
</span>TCMODE =3D "external-csl"</div><div><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">		</span>EXTERNAL_TOOLCHAIN =3D =
"/opt/toolchain/gnuarm-4.4.1/"</div><div><br></div><div><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>I think =
my situation is that i need three variables to control external =
toolchain at least like *buildroot*</div><div><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">		=
</span>BR2_TOOLCHAIN_EXTERNAL_PREFIX</div><div><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">		=
</span>BR2_TOOLCHAIN_EXTERNAL_PATH</div><div><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">		=
</span>BR2_TOOLCHAIN_EXTERNAL_SYSROOT_PATH</div><div><span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>because =
that my toolchain pre-build source code &nbsp;is not from *code =
sourcery* &amp; directory struct is not like *code sourcery* =
also.</div><div><br></div><div><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>is there some good method to fix =
this ? thanks</div><div apple-content-edited=3D"true"><span =
class=3D"Apple-style-span" style=3D"border-collapse: separate; color: =
rgb(0, 0, 0); font-family: 'Heiti SC'; font-style: normal; font-variant: =
normal; font-weight: normal; letter-spacing: normal; line-height: =
normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: =
0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: =
auto; -webkit-text-stroke-width: 0px; font-size: medium; "><span =
class=3D"Apple-style-span" style=3D"border-collapse: separate; color: =
rgb(0, 0, 0); font-family: 'Heiti SC'; font-style: normal; font-variant: =
normal; font-weight: normal; letter-spacing: normal; line-height: =
normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-border-horizontal-spacing: 0px; -webkit-border-vertical-spacing: =
0px; -webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: =
auto; -webkit-text-stroke-width: 0px; font-size: medium; "><div =
style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; =
"><div><div><div><br></div>B.R.</div><div>-- =
jojo</div></div><div><br></div></div></span><br =
class=3D"Apple-interchange-newline"></span><br =
class=3D"Apple-interchange-newline">
</div>
<br><div><div>=D4=DA 2012-6-20=A3=AC=CF=C2=CE=E71:47=A3=AC Khem Raj =
=D0=B4=B5=C0=A3=BA</div><br =
class=3D"Apple-interchange-newline"><blockquote type=3D"cite"><div>On =
Tue, Jun 19, 2012 at 2:06 AM, jojo &lt;<a =
href=3D"mailto:rjiejie@gmail.com">rjiejie@gmail.com</a>&gt; =
wrote:<br><blockquote type=3D"cite">@all,<br></blockquote><blockquote =
type=3D"cite">&nbsp; &nbsp; &nbsp; &nbsp;I google some information about =
this topic and then,<br></blockquote><blockquote type=3D"cite">&nbsp; =
&nbsp; &nbsp; &nbsp;i found the case is that jut support "CodeSourcery =
labs" toolchain.<br></blockquote><blockquote =
type=3D"cite"><br></blockquote><blockquote type=3D"cite">&nbsp; &nbsp; =
&nbsp; &nbsp;I think my external toolchain is not standard of directory =
like "tcmode-externl-csl".<br></blockquote><blockquote =
type=3D"cite">&nbsp; &nbsp; &nbsp; &nbsp;I can use "buildroot" to use =
this toolchian that just use three variables following =
:<br></blockquote><blockquote type=3D"cite">&nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; =
&nbsp;BR2_TOOLCHAIN_EXTERNAL_PREFIX<br></blockquote><blockquote =
type=3D"cite">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;BR2_TOOLCHAIN_EXTERNAL_PATH<br></blockquote><blockquote =
type=3D"cite">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;BR2_TOOLCHAIN_EXTERNAL_SYSROOT_PATH<br></blockquote><blockquote =
type=3D"cite"><br></blockquote><blockquote type=3D"cite">&nbsp; &nbsp; =
&nbsp; &nbsp;so there are some solution in poky ? thanks for you =
attention :)<br></blockquote><br>use TCMODE=3D"external-sourcery"<br>and =
mention csl binary toolchain install tree using =
EXTERNAL_TOOLCHAIN<br><br>in your local.conf<br><br><br><blockquote =
type=3D"cite"><blockquote =
type=3D"cite">B.R.<br></blockquote></blockquote><blockquote =
type=3D"cite">-- jojo<br></blockquote><blockquote =
type=3D"cite"><br></blockquote><blockquote =
type=3D"cite"><br></blockquote><blockquote =
type=3D"cite"><br></blockquote><blockquote =
type=3D"cite"><br></blockquote><blockquote =
type=3D"cite">_______________________________________________<br></blockqu=
ote><blockquote type=3D"cite">poky mailing =
list<br></blockquote><blockquote type=3D"cite"><a =
href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br></block=
quote><blockquote type=3D"cite"><a =
href=3D"https://lists.yoctoproject.org/listinfo/poky">https://lists.yoctop=
roject.org/listinfo/poky</a><br></blockquote></div></blockquote></div><br>=
</body></html>=

--Apple-Mail=_F3054077-1478-4C78-B73A-AB387B21DD16--
