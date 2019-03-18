Return-Path: <glenn.szejna@singlewire.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B726E00D07; Mon, 18 Mar 2019 08:49:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	T_REMOTE_IMAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.178 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-it1-f178.google.com (mail-it1-f178.google.com
	[209.85.166.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCA2AE00C38
	for <poky@yoctoproject.org>; Mon, 18 Mar 2019 08:49:02 -0700 (PDT)
Received: by mail-it1-f178.google.com with SMTP id l139so22034287ita.5
	for <poky@yoctoproject.org>; Mon, 18 Mar 2019 08:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=singlewire.com; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=Gx0Mx32p4KULl0sieEYx86vXgVCJUSAHe/Batnc05gU=;
	b=M8pDrLdmPhNtaGcH+n6eLNy1kFWP21gcY5qobKMdyVyNMBDzklJ6Ih8acsa7zUapXt
	yWHr8Bf8zAJdpQrvzQiuxKxpnASI5UUrxC42/o5TiMA8hVIexXJzqTrF3iMjXbtKuzYE
	mCgeTG4YAiuuv4ROUNHTdZNo9iwQ9fduUUaK4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Gx0Mx32p4KULl0sieEYx86vXgVCJUSAHe/Batnc05gU=;
	b=LjA0vOzJEAuF0HOC8fNGSzXjyum/GlrGucZMOPCuMpPcPGJJ5AKaQO+aOIDOeL/Yqn
	g1ut1uqiP/8ajz6VHHfGCbpH6nGPrnFHOEqvHstx8v2pyWmQ4tFZlxIYO4gE9IoQV93m
	BXliouSjheD4fVaxeOsx39WRdL7Aftu9nogCPu3vk/gA7VTgVvxa3ANiOykW+rQ4Do7D
	5BdmYoaj8AxITWwqzSXbCu3qv5gfSvk4crjvLA/fW1huOCpLB3UE3rcMYoyC5e3k5pg1
	4uY1k8/Xz/lBbY+qY0NYP3RJWiG6qBY59s+cYL3teWi90/pGIfKUnWzHneC+jALbZZmE
	m4qQ==
X-Gm-Message-State: APjAAAXe5izEEi1f9VVABIz8C1uNrVB4lczanQJ+djq62rpkfd1upfy+
	0ybnqoBX/ssKyRK3uQogE4c/6mL1PvPzodpi1d7DgyOFi9o=
X-Google-Smtp-Source: APXvYqzmE3Qj71a/QKHpasMClx9k+MtXjCNqMDndJHmF6nSnwvmQFMnSb0/v68MjWkDzAlJGWpXRmN8BLMhWVBqFjPA=
X-Received: by 2002:a24:7690:: with SMTP id
	z138mr11017348itb.119.1552924141958; 
	Mon, 18 Mar 2019 08:49:01 -0700 (PDT)
MIME-Version: 1.0
From: Glenn Szejna <glenn.szejna@singlewire.com>
Date: Mon, 18 Mar 2019 10:48:51 -0500
Message-ID: <CAEhK1XZaZ5veHutrrvnYx_90WabxTvzs=7jmQor8zHUQSKbuUg@mail.gmail.com>
To: poky@yoctoproject.org
Subject: For do_rootfs - basehash changed from 17... to 94... Variable TIME changed
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
X-List-Received-Date: Mon, 18 Mar 2019 15:49:05 -0000
Content-Type: multipart/alternative; boundary="000000000000d85d540584605381"

--000000000000d85d540584605381
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

It this the best place to ask this question?
Thanks in advance for your help.

The rootfs is not completing.  We see multiple ERROR lines in the
bitbake.log as shown below.

ERROR: When reparsing
/home/builder/gs/NextYocto/gs1/poky/build/../meta-rescue/recipes-core/image=
s/rescue-image.bb.do_rootfs,
the basehash value changed from 947387b80592ae282d6844d882e80bf5 to
17742feecc6b2041e730223328e17ad5. The metadata is not deterministic and
this needs to be fixed.

When we preform bitbake-diffsigs to see what has changed we get a TIME
difference displayed:

$ bitbake-diffsigs
1.0-r0.do_rootfs.sigbasedata.17742feecc6b2041e730223328e17ad5
1.0-r0.do_rootfs.sigbasedata.947387b80592ae282d6844d882e80bf5
NOTE: Starting bitbake server...
basehash changed from 17742feecc6b2041e730223328e17ad5 to
947387b80592ae282d6844d882e80bf5
Variable TIME value changed from '143451' to '143355'

In our recipe has the exclude line:

do_rootfs[vardepsexclude] =3D "TIME DATE DATETIME"


 Why is bitbake depending on TIME when we have told it not to?

Thank you,
Glenn

--=20
Glenn Szejna
Linux Embedded Systems Engineer - Madison
Office: (608) 421-7274 | glenn.szejna@singlewire.com

[image: Singlewire-Logo-Sigstr.png]
<http://t.sidekickopen08.com/e1t/c/5/f18dQhb0S7lM8dDMPbW2n0x6l2B9nMJN7t5X-F=
dSD1CW8rBpxl63Bf5lTBvgm1WRtYW103?t=3Dhttps%3A%2F%2Ftracking.cirrusinsight.c=
om%2F7349eca3-eb29-42c6-a7ac-cbfb0d751f7a%2Fsinglewire-com&si=3D70000000007=
70150&pi=3Dfc02b0ca-6d57-42fe-bb6b-5ebf219fc668>
*Keeping people safe and informed. Everywhere, every time.*

--000000000000d85d540584605381
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi All,<br></div><div><br></div><div=
>It this the best place to ask this question?</div><div>Thanks in advance f=
or your help.</div><div><br></div><div>The rootfs is not completing.=C2=A0 =
We see multiple ERROR lines in the bitbake.log as shown below.=C2=A0 =C2=A0=
</div><div><br></div><div>ERROR: When reparsing /home/builder/gs/NextYocto/=
gs1/poky/build/../meta-rescue/recipes-core/images/rescue-image.bb.do_rootfs=
, the basehash value changed from 947387b80592ae282d6844d882e80bf5 to 17742=
feecc6b2041e730223328e17ad5. The metadata is not deterministic and this nee=
ds to be fixed.</div><div><br></div><div>When we preform bitbake-diffsigs t=
o see what has changed we get a TIME difference displayed:</div><div><br></=
div><div>$ bitbake-diffsigs 1.0-r0.do_rootfs.sigbasedata.17742feecc6b2041e7=
30223328e17ad5 1.0-r0.do_rootfs.sigbasedata.947387b80592ae282d6844d882e80bf=
5</div><div>NOTE: Starting bitbake server...</div><div>basehash changed fro=
m 17742feecc6b2041e730223328e17ad5 to 947387b80592ae282d6844d882e80bf5</div=
><div>Variable TIME value changed from &#39;143451&#39; to &#39;143355&#39;=
</div><div><br></div><div>In our recipe has the exclude line:</div><div>=C2=
=A0</div><div>do_rootfs[vardepsexclude] =3D &quot;TIME DATE DATETIME&quot;<=
/div><div><br></div><div><br></div><div>=C2=A0Why is bitbake depending on T=
IME when we have told it not to?</div><div><br></div><div>Thank you,=C2=A0<=
/div><div>Glenn</div><div><br></div>-- <br><div dir=3D"ltr" class=3D"gmail_=
signature"><div dir=3D"ltr"><span style=3D"color:rgb(51,51,51);font-family:=
calibri,sans-serif;font-size:12px">Glenn Szejna</span><br style=3D"color:rg=
b(51,51,51);font-family:&quot;Source Sans Pro&quot;,Arial,Helvetica,sans-se=
rif;font-size:14px"><span style=3D"color:rgb(51,51,51);font-family:calibri,=
sans-serif;font-size:12px">Linux=C2=A0</span><span style=3D"color:rgb(51,51=
,51);font-family:calibri,sans-serif;font-size:12px">Embedded Systems Engine=
er - Madison</span><br style=3D"color:rgb(51,51,51);font-family:&quot;Sourc=
e Sans Pro&quot;,Arial,Helvetica,sans-serif;font-size:14px"><span style=3D"=
color:rgb(51,51,51);font-family:calibri,sans-serif;font-size:12px">Office: =
(608) 421-7274 | <a href=3D"mailto:glenn.szejna@singlewire.com" style=3D"co=
lor:rgb(17,85,204)" target=3D"_blank">glenn.szejna@singlewire.com</a><br></=
span><br style=3D"color:rgb(51,51,51);font-family:&quot;Source Sans Pro&quo=
t;,Arial,Helvetica,sans-serif;font-size:14px"><a href=3D"http://t.sidekicko=
pen08.com/e1t/c/5/f18dQhb0S7lM8dDMPbW2n0x6l2B9nMJN7t5X-FdSD1CW8rBpxl63Bf5lT=
Bvgm1WRtYW103?t=3Dhttps%3A%2F%2Ftracking.cirrusinsight.com%2F7349eca3-eb29-=
42c6-a7ac-cbfb0d751f7a%2Fsinglewire-com&amp;si=3D7000000000770150&amp;pi=3D=
fc02b0ca-6d57-42fe-bb6b-5ebf219fc668" style=3D"color:rgb(0,0,255);font-fami=
ly:&quot;Source Sans Pro&quot;,Arial,Helvetica,sans-serif;font-size:14px" t=
arget=3D"_blank"><img src=3D"https://d23fetfglg1ija.cloudfront.net/signatur=
e_fields/57767a7d83f7b4001832d08c/Singlewire-Logo-Sigstr.png" border=3D"0" =
alt=3D"Singlewire-Logo-Sigstr.png" style=3D"border: 0px; vertical-align: to=
p; height: auto;"></a><span style=3D"color:rgb(51,51,51);font-size:14px;fon=
t-family:calibri,sans-serif"><br><em><span style=3D"font-size:12px">Keeping=
 people safe and informed. Everywhere, every time.</span></em></span><br></=
div></div></div></div>

--000000000000d85d540584605381--
