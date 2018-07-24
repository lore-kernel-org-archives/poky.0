Return-Path: <hardik.vala@aumraj.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA93BE00887; Tue, 24 Jul 2018 01:29:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [106.10.242.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from sonic303-28.consmr.mail.sg3.yahoo.com
	(sonic303-28.consmr.mail.sg3.yahoo.com [106.10.242.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A133E006F1
	for <poky@yoctoproject.org>; Tue, 24 Jul 2018 01:29:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1532420980; bh=T3Jv7GH8w46UKHXz8GrRR5BICCH3IsRCdmiajareFXg=;
	h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:From:Subject;
	b=mFiBIax/eRJGAXCTYUgdDF/E7nT8pdOmDUCg+t5yyeOdchO6NuwgC2N4IK4fI+PBkgRpZH9MRWXbKZpjpx8Q6jSSOzKbZpIu03JUO/kzULWSKeBPjZwO6KXRtNYX2NRpSvUM5fsq2MAxfN23L413HFJPRwTySoMzW9lME3vLcInDjrdtHT7gE2oDs0iRanUhC50nU9CnEP2QFUQn3nV5qR/y3E7WOqssOPgREsMCJdCsA7JOS3n630i7JXBVvt3PKHihqhIrnYdAKDJ953rtnrL0Dhv7ETCO/h6geoz9PRDALLUaxZFn0nPNHxGFBUWZnIDy1nzPRbtKQZ8BqOhuKQ==
X-YMail-OSG: COx0djUVM1m8.EEp2h.bG1XtnhqI_tfoQmCRIdVjakIO9GlFB__2mZSSGW2I9Z1
	IkERHaA0QhAzJYuVJqBPNRkpdIxjV8WEiT2RvastoB79mdR0b1FHA37pvrxNG2_Vjq6snhYSE95g
	3NhetApOBxAo63bKI5xpAd.5ryFQJaBOoRtGhjCBg1kAXyUZ9gVT1NF3y5LUJcP9BvO6e1XBs34q
	AnS0pAW4iVKwyeL4yF_BtoR3uh7Xk3AGFr3_ZUC3VQK81jw4TdhG5asgPmozqwcba8N5C.g6Watc
	98EA5YOqzyDSU8yTXnN8ciUzYgltnqGLdbp__6KOUMkYmItKappceXFzsF9wcB022LY_g8TrIpnn
	XpbwcvqCqbR1NR1D2A2TUuTkfTRp9zUtjOfm2pIoDUt0ZcdZp58eD0Mauh50yFH6afKQhR4lg1PU
	fC4X0aj7bw9Lo_yAVyyaG32KIy9rQLyIm5E.G5cvltjKqsA93zsksFEMO7jCGILdzEPVMiXpVQRS
	faPUe8njfkSiF3YSluulj6baH8TpQSlNhs.jLJ.qXU3bGEhL5D1x9wd3QFDocM0HO4vDXzWS9Naf
	DYCreQALcqwhHZUejh7APy1sbz7CC7yJ7.wWd90LgAZdgttqnJyNL6OM55606mNmh574NZzd08nX
	rzFWX4hl4xIdJoRVr4Y8KSwRN8.kQB5fxwA9av4w6O0uyJKVtC6sRQMNeqbIB4QpFY8a4UjBjR68
	sJMlrzkxvcB.xlsfNcjrnrLwaYyfSr1CiAXJ3WReF5_kk0ypg_eQyeeI2KUZoK_QRTpP_PzwtyaR
	fx06hnOKhCEN8T5CdTW7EzQC0xG5PMDdzgABfmkHudnAJq3mO.bx6kJqwthg_mvSdVBanb3YMeCr
	z5BBO0gq9R2E3GUY6_oY_rL5dPge4nB..u3gvhECXyAPNNRVBOkJFLgalL_zSaFLfBK5ryVBQAu5
	uoahEbS3YSzyHAOgcTov9N5EOW4HY
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic303.consmr.mail.sg3.yahoo.com with HTTP;
	Tue, 24 Jul 2018 08:29:40 +0000
Date: Tue, 24 Jul 2018 08:29:40 +0000 (UTC)
From: hardik vala <hardik.vala@aumraj.com>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <1354130903.1354552.1532420980242@mail.yahoo.com>
In-Reply-To: <CAJTo0LbM4WH0JK4V7mYgMyNjf_S9v=uZEoWG_LMx-2B9mrjASA@mail.gmail.com>
References: <1986949339.1309580.1532416272151.ref@mail.yahoo.com>
	<1986949339.1309580.1532416272151@mail.yahoo.com>
	<CAJTo0LbM4WH0JK4V7mYgMyNjf_S9v=uZEoWG_LMx-2B9mrjASA@mail.gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.12144 YahooMailNeo Mozilla/5.0 (X11; Ubuntu;
	Linux x86_64; rv:61.0) Gecko/20100101 Firefox/61.0
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Build Error
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: hardik vala <hardik.vala@aumraj.com>
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 24 Jul 2018 08:29:44 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1354551_2111595262.1532420980240"

------=_Part_1354551_2111595262.1532420980240
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

one meta provided by poky and other meta is openembedded-core/meta director=
y=20

      From: "Burton, Ross" <ross.burton@intel.com>
 To: hardik vala <hardik.vala@aumraj.com>=20
Cc: Poky Project <poky@yoctoproject.org>
 Sent: Tuesday, 24 July 2018 1:40 PM
 Subject: Re: [poky] Build Error
  =20
On 24 July 2018 at 08:11, hardik vala <hardik.vala@aumraj.com> wrote:
> meta
> meta-poky
> meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =3D "sumo:96fbd39ba32362416c18d90bb7a8=
1eb6a76912e0"
> meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "master:f=
f0b682b807959521c85716296de7a1d26d7d18f"
> meta-oe
> meta-python
> meta-networking=C2=A0 =C2=A0 =C2=A0 =3D "master:0aff7abedc1c7727c88029a12=
3107f4faf5ba4f1"
> meta-java=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "master:ecb637a8cf=
5eb0cbff67e9e568858f7bfed061fc"

Why do you have meta twice, one with sumo and once with master?=C2=A0 What
branch do you want to be using?

Ross


  =20

------=_Part_1354551_2111595262.1532420980240
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:=E6=A8=99=E6=A5=B7=E9=AB=94, dfkai-sb;font-size:16px"><div id=3D=
"yui_3_16_0_ym19_1_1532406610609_13691"><span></span></div><div class=3D"qt=
dSeparateBR" id=3D"yui_3_16_0_ym19_1_1532406610609_13692"><div dir=3D"ltr" =
id=3D"yui_3_16_0_ym19_1_1532406610609_13727">one meta provided by poky and =
other meta is openembedded-core/meta directory <br></div><br></div><div cla=
ss=3D"yahoo_quoted" id=3D"yui_3_16_0_ym19_1_1532406610609_13696" style=3D"d=
isplay: block;">  <div style=3D"font-family: =E6=A8=99=E6=A5=B7=E9=AB=94, d=
fkai-sb; font-size: 16px;" id=3D"yui_3_16_0_ym19_1_1532406610609_13695"> <d=
iv style=3D"font-family: HelveticaNeue, Helvetica Neue, Helvetica, Arial, L=
ucida Grande, Sans-Serif; font-size: 16px;" id=3D"yui_3_16_0_ym19_1_1532406=
610609_13694"> <div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1532406610609_13693=
"> <font id=3D"yui_3_16_0_ym19_1_1532406610609_13700" size=3D"2" face=3D"Ar=
ial"> <hr id=3D"yui_3_16_0_ym19_1_1532406610609_13701" size=3D"1"> <b><span=
 style=3D"font-weight:bold;">From:</span></b> "Burton, Ross" &lt;ross.burto=
n@intel.com&gt;<br> <b><span style=3D"font-weight: bold;">To:</span></b> ha=
rdik vala &lt;hardik.vala@aumraj.com&gt; <br><b><span style=3D"font-weight:=
 bold;">Cc:</span></b> Poky Project &lt;poky@yoctoproject.org&gt;<br> <b><s=
pan style=3D"font-weight: bold;">Sent:</span></b> Tuesday, 24 July 2018 1:4=
0 PM<br> <b><span style=3D"font-weight: bold;">Subject:</span></b> Re: [pok=
y] Build Error<br> </font> </div> <div class=3D"y_msg_container" id=3D"yui_=
3_16_0_ym19_1_1532406610609_13702"><br><div dir=3D"ltr" id=3D"yui_3_16_0_ym=
19_1_1532406610609_13703">On 24 July 2018 at 08:11, hardik vala &lt;<a shap=
e=3D"rect" ymailto=3D"mailto:hardik.vala@aumraj.com" href=3D"mailto:hardik.=
vala@aumraj.com" id=3D"yui_3_16_0_ym19_1_1532406610609_13726">hardik.vala@a=
umraj.com</a>&gt; wrote:<div class=3D"yqt1692573313" id=3D"yqtfd64871"><br =
clear=3D"none">&gt; meta<br clear=3D"none">&gt; meta-poky<br clear=3D"none"=
>&gt; meta-yocto-bsp&nbsp; &nbsp; &nbsp;  =3D "sumo:96fbd39ba32362416c18d90=
bb7a81eb6a76912e0"<br clear=3D"none">&gt; meta&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;  =3D "master:ff0b682b807959521c85716296de7a1d26d=
7d18f"<br clear=3D"none">&gt; meta-oe<br clear=3D"none">&gt; meta-python<br=
 clear=3D"none">&gt; meta-networking&nbsp; &nbsp; &nbsp; =3D "master:0aff7a=
bedc1c7727c88029a123107f4faf5ba4f1"<br clear=3D"none">&gt; meta-java&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "master:ecb637a8cf5eb0cbff67e9e56885=
8f7bfed061fc"</div><br clear=3D"none"><br clear=3D"none">Why do you have me=
ta twice, one with sumo and once with master?&nbsp;  What<br clear=3D"none"=
>branch do you want to be using?<br clear=3D"none"><br clear=3D"none">Ross<=
div class=3D"yqt1692573313" id=3D"yqtfd55737"><br clear=3D"none"></div></di=
v><br><br></div> </div> </div>  </div></div></body></html>

------=_Part_1354551_2111595262.1532420980240--
