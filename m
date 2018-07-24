Return-Path: <hardik.vala@aumraj.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D065AE009AA; Tue, 24 Jul 2018 05:22:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [106.10.242.216 listed in list.dnswl.org]
Received: from sonic304-26.consmr.mail.sg3.yahoo.com
	(sonic304-26.consmr.mail.sg3.yahoo.com [106.10.242.216])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49602E0080A
	for <poky@yoctoproject.org>; Tue, 24 Jul 2018 05:22:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1532434969; bh=zCqEmyz3CPUkLmaarEJxvsp6te9jPWo4FF9AtfhBXRA=;
	h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:From:Subject;
	b=V/G5fDaw6rbtNfjxiA+NVnM67NAC+YRpdxTli667DK5NjaRLFp2GlZj6Uxw7zRP9c3xaeGQDLgCZpQ68InqqdVml5dHBfRi89ZUvWo6O66RF/P4GGZmcPVHnpKX4SDQ6DWkauywIGySkEz2z6jPWV8TLsJ9BQ9Bjv7PpPPAdg37860GZv41Mv/CelG3auvMfuvqtZ8fAOwi1yWVQSFkDORfivWkT2sRXRDePzb5DSxdTq5DI5AIC2Hr6ZUhxucYVAyrTM1TujkDjnAUfrPaYUt4Ao/DtTpmnfOYh5bP4fB3QUJUcSmr0bo01fw3dwf6TtUWhXBV0iPYpk2rdnNKvsQ==
X-YMail-OSG: 5WXKZm4VM1mwDwtCdxu8M.bcwBM8MfXatLGnzr4Wjb1GrBT.jAnA7d40JZ4Dv1M
	CiVYaEAhJcIT7KujBTg3xZj3cqNzLP90BbPIuD.QVxcYy25W08Xz9WQ7TDYMBmOT9eTpS_RO_zRk
	rHIK1zlnrowd3NMASpZKYRSQ5gGbU_EDpEGMQYdYSHWhpGfeiN3bXfsEo.5PCcTcTyMczIX060bF
	OzwiO0G8hp9lAa3CypeV5uChseEpYH6QRu3ExmAHTQKF6lKfgqtjL9C45JCRa518OTLNDzsi9C4r
	0CSEU.gIvqtT5R9PqZgMxvkT7NxRuoZBE6slv6lpmkeMhBSmkOoenPJ5Ykc_D.KltcpeG__92Io7
	wLOf9ob7wUqpOugIoXuP4lxYHraQJYr1iP9hdI2Uxg.QIi9ruf6.ASlfDEEqBqKn6.L8u91aUkET
	Y2lO8g15SRrghHMdfppMPDhlXSfSiMDVEMSUnZOg3E6o60_ACQhObsXhuAGkxH3A.xs_g3MLa1Sr
	Py5nA3UictoO6uOoZcgh4yfIj_wYRwIZhmNFBvtED1Jb0t4eKtjCOYNqRzfXEVEg0FaiNKOTk.V0
	6n5T5l4zfmdCZXPhrX5cDAmjibrrJvneLF4a0sIJbbLbP1y39SC4TWbwqFBtDO5nEECR2fF_plT4
	lWwnk6vVnb4XrJPAemSK.lmQXWiqrt0iLQ3Ln2XYj8NEPcmztEufe7lZU9FQYBXjH4Lmmh.OAPLe
	qbaOGeAHyE8QNwJ78KF9ICIE_Yh53q8frE5j2nPVMy8fnBXY6NgSBlcn8HCY.EKZ2IAZbOFbeOa7
	S9laPPqSRvkGi9rRIPNCGxoQfio50GOHKg5ulias8rv5tmEbYrNjEeiUOchW.HZNQtXT07v61PFa
	alaAZzW7znJcx6fu_KN8kqBi3GzXHMZHgEVMPHtpCJfzuVtLqUuwfPVqgqr.zBPnu7t.YNqv0Pio
	8OrUf4WvP6raTQZkeBpL50G7hPEg-
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic304.consmr.mail.sg3.yahoo.com with HTTP;
	Tue, 24 Jul 2018 12:22:49 +0000
Date: Tue, 24 Jul 2018 12:22:46 +0000 (UTC)
From: hardik vala <hardik.vala@aumraj.com>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <781896419.1466959.1532434966685@mail.yahoo.com>
In-Reply-To: <CAJTo0LZmxDvvNUb_xztGwXjkMu3ukf+9AKY-A2xK7grwTUUjwA@mail.gmail.com>
References: <1986949339.1309580.1532416272151.ref@mail.yahoo.com>
	<1986949339.1309580.1532416272151@mail.yahoo.com>
	<CAJTo0LbM4WH0JK4V7mYgMyNjf_S9v=uZEoWG_LMx-2B9mrjASA@mail.gmail.com>
	<1354130903.1354552.1532420980242@mail.yahoo.com>
	<CAJTo0LZmxDvvNUb_xztGwXjkMu3ukf+9AKY-A2xK7grwTUUjwA@mail.gmail.com>
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
X-List-Received-Date: Tue, 24 Jul 2018 12:22:52 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1466958_1096743068.1532434966679"

------=_Part_1466958_1096743068.1532434966679
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

That's what I found in the directory but thanks for your reply Ross
Vala


      From: "Burton, Ross" <ross.burton@intel.com>
 To: hardik vala <hardik.vala@aumraj.com>=20
Cc: Poky Project <poky@yoctoproject.org>
 Sent: Tuesday, 24 July 2018 3:38 PM
 Subject: Re: [poky] Build Error
  =20
Poky contains openembedded-core, so you've got two versions of meta.
This is probably why it breaks.

Ross

On 24 July 2018 at 09:29, hardik vala <hardik.vala@aumraj.com> wrote:
> one meta provided by poky and other meta is openembedded-core/meta direct=
ory
>
> ________________________________
> From: "Burton, Ross" <ross.burton@intel.com>
> To: hardik vala <hardik.vala@aumraj.com>
> Cc: Poky Project <poky@yoctoproject.org>
> Sent: Tuesday, 24 July 2018 1:40 PM
> Subject: Re: [poky] Build Error
>
> On 24 July 2018 at 08:11, hardik vala <hardik.vala@aumraj.com> wrote:
>
>> meta
>> meta-poky
>> meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =3D "sumo:96fbd39ba32362416c18d90bb7a=
81eb6a76912e0"
>> meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "master:=
ff0b682b807959521c85716296de7a1d26d7d18f"
>> meta-oe
>> meta-python
>> meta-networking=C2=A0 =C2=A0 =C2=A0 =3D "master:0aff7abedc1c7727c88029a1=
23107f4faf5ba4f1"
>> meta-java=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D "master:ecb637a8c=
f5eb0cbff67e9e568858f7bfed061fc"
>
>
> Why do you have meta twice, one with sumo and once with master?=C2=A0 Wha=
t
> branch do you want to be using?
>
> Ross
>
>
>


  =20

------=_Part_1466958_1096743068.1532434966679
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:=E6=A8=99=E6=A5=B7=E9=AB=94, dfkai-sb;font-size:16px"><div id=3D=
"yui_3_16_0_ym19_1_1532406610609_22184">That's what I found in the director=
y but thanks for your reply Ross</div><div id=3D"yui_3_16_0_ym19_1_15324066=
10609_22204"><br></div><div id=3D"yui_3_16_0_ym19_1_1532406610609_22207">Va=
la<br></div><div class=3D"qtdSeparateBR" id=3D"yui_3_16_0_ym19_1_1532406610=
609_22154"><br><br></div><div class=3D"yahoo_quoted" id=3D"yui_3_16_0_ym19_=
1_1532406610609_22212" style=3D"display: block;">  <div style=3D"font-famil=
y: =E6=A8=99=E6=A5=B7=E9=AB=94, dfkai-sb; font-size: 16px;" id=3D"yui_3_16_=
0_ym19_1_1532406610609_22211"> <div style=3D"font-family: HelveticaNeue, He=
lvetica Neue, Helvetica, Arial, Lucida Grande, Sans-Serif; font-size: 16px;=
" id=3D"yui_3_16_0_ym19_1_1532406610609_22210"> <div dir=3D"ltr"> <font siz=
e=3D"2" face=3D"Arial"> <hr size=3D"1"> <b><span style=3D"font-weight:bold;=
">From:</span></b> "Burton, Ross" &lt;ross.burton@intel.com&gt;<br> <b><spa=
n style=3D"font-weight: bold;">To:</span></b> hardik vala &lt;hardik.vala@a=
umraj.com&gt; <br><b><span style=3D"font-weight: bold;">Cc:</span></b> Poky=
 Project &lt;poky@yoctoproject.org&gt;<br> <b><span style=3D"font-weight: b=
old;">Sent:</span></b> Tuesday, 24 July 2018 3:38 PM<br> <b><span style=3D"=
font-weight: bold;">Subject:</span></b> Re: [poky] Build Error<br> </font> =
</div> <div class=3D"y_msg_container" id=3D"yui_3_16_0_ym19_1_1532406610609=
_22209"><br><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1532406610609_22208">P=
oky contains openembedded-core, so you've got two versions of meta.<br clea=
r=3D"none">This is probably why it breaks.<br clear=3D"none"><br clear=3D"n=
one">Ross<br clear=3D"none"><div class=3D"yqt8546491288" id=3D"yqtfd88697">=
<br clear=3D"none">On 24 July 2018 at 09:29, hardik vala &lt;<a shape=3D"re=
ct" ymailto=3D"mailto:hardik.vala@aumraj.com" href=3D"mailto:hardik.vala@au=
mraj.com">hardik.vala@aumraj.com</a>&gt; wrote:<br clear=3D"none">&gt; one =
meta provided by poky and other meta is openembedded-core/meta directory<br=
 clear=3D"none">&gt;<br clear=3D"none">&gt; _______________________________=
_<br clear=3D"none">&gt; From: "Burton, Ross" &lt;<a shape=3D"rect" ymailto=
=3D"mailto:ross.burton@intel.com" href=3D"mailto:ross.burton@intel.com">ros=
s.burton@intel.com</a>&gt;<br clear=3D"none">&gt; To: hardik vala &lt;<a sh=
ape=3D"rect" ymailto=3D"mailto:hardik.vala@aumraj.com" href=3D"mailto:hardi=
k.vala@aumraj.com">hardik.vala@aumraj.com</a>&gt;<br clear=3D"none">&gt; Cc=
: Poky Project &lt;<a shape=3D"rect" ymailto=3D"mailto:poky@yoctoproject.or=
g" href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a>&gt;<br c=
lear=3D"none">&gt; Sent: Tuesday, 24 July 2018 1:40 PM<br clear=3D"none">&g=
t; Subject: Re: [poky] Build Error<br clear=3D"none">&gt;<br clear=3D"none"=
>&gt; On 24 July 2018 at 08:11, hardik vala &lt;<a shape=3D"rect" ymailto=
=3D"mailto:hardik.vala@aumraj.com" href=3D"mailto:hardik.vala@aumraj.com">h=
ardik.vala@aumraj.com</a>&gt; wrote:<br clear=3D"none">&gt;<br clear=3D"non=
e">&gt;&gt; meta<br clear=3D"none">&gt;&gt; meta-poky<br clear=3D"none">&gt=
;&gt; meta-yocto-bsp&nbsp; &nbsp; &nbsp; =3D "sumo:96fbd39ba32362416c18d90b=
b7a81eb6a76912e0"<br clear=3D"none">&gt;&gt; meta&nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; =3D "master:ff0b682b807959521c85716296de7a1d2=
6d7d18f"<br clear=3D"none">&gt;&gt; meta-oe<br clear=3D"none">&gt;&gt; meta=
-python<br clear=3D"none">&gt;&gt; meta-networking&nbsp; &nbsp; &nbsp; =3D =
"master:0aff7abedc1c7727c88029a123107f4faf5ba4f1"<br clear=3D"none">&gt;&gt=
; meta-java&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D "master:ecb637a8cf=
5eb0cbff67e9e568858f7bfed061fc"<br clear=3D"none">&gt;<br clear=3D"none">&g=
t;<br clear=3D"none">&gt; Why do you have meta twice, one with sumo and onc=
e with master?&nbsp; What<br clear=3D"none">&gt; branch do you want to be u=
sing?<br clear=3D"none">&gt;<br clear=3D"none">&gt; Ross<br clear=3D"none">=
&gt;<br clear=3D"none">&gt;<br clear=3D"none">&gt;<br clear=3D"none"></div>=
</div><br><br></div> </div> </div>  </div></div></body></html>

------=_Part_1466958_1096743068.1532434966679--
