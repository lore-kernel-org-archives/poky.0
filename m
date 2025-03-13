Return-Path: <jjvazha@yahoo.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D84A6C282DE
	for <webhook@archiver.kernel.org>; Thu, 13 Mar 2025 15:10:51 +0000 (UTC)
Received: from sonic301-20.consmr.mail.sg3.yahoo.com (sonic301-20.consmr.mail.sg3.yahoo.com [106.10.242.83])
 by mx.groups.io with SMTP id smtpd.web10.17362.1741878647725973808
 for <poky@lists.yoctoproject.org>;
 Thu, 13 Mar 2025 08:10:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yahoo.com header.s=s2048 header.b=MFlRp5qh;
 spf=neutral (domain: yahoo.com, ip: 106.10.242.83, mailfrom: jjvazha@yahoo.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1741878645; bh=9fyAlbfrEOk4cNhqHAYvwvGuiqqo5C7NnHHJmR2BJH4=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=MFlRp5qhLqa5gJXCJXnRu+WNv+ychzjgDKqYIufw2oqY7n34H3o7HgV4sXJoFjNkUPDltg5ZDr5DwLpaH9Y5386DzZlddgjY9AQhsgx91iZ7DaykaKpedKoDXus/n+lNQUJoH0m3HWnttYLTs4IQdrlnjfUNb9uRhvuMv4CGsmZwMGwU9P7zGiDMnXXyNM3BjS5BCYoOLJwtFLX3Ir3FcHdlMVg7Kz04SZzuExRGOnjlvJYm8x9I9r2Ub1N3bmgx8tu68OMCPojLP8x3o7Mq0lbr5OlgGHpyx8nk6tkwb67o02vmICLrfAH6nrIzn+mFQgFRX2Lwn2HAU44WLeCSow==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1741878645; bh=jw/nvUGYQaAKpaXQJ8iehZnvYmsiTciet8mZPgRwAN8=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=sHQ69IKoGlayfsLAjo/LNb9OFpS5sFrrkqmdw1AejM6BF4d8QdYDvBKn3+vAcY47NhUm1vOZQiwICGVRmekubEvRln3tfCeUhBwB2chY/JPAT+GhcAlNBpfpS+XEetHdC8RR33DH9YNXSTtJEwGNbT+vUydAaSdBdOqyu0s+RnseVVZUuE/AH1xIRGzQ+ioE2Uh45HO1wV+d1JZ4QDgOo/2LPZhkWYvXqy/stp3r3Ju+VSuOwX3aOI4Df3+gFVdp155V4mK+qAarlc8ZOHV4tsVjMbDO9wciB/6BNOdditiV5hMpWio1qPtA5umdEMB/sK8W0DWhzhR/6u55ZQV1gw==
X-YMail-OSG: CG9rrbgVM1ngMSdTuF5TUl7l2_WrkTbtvfIRhpf6MhvNgiuisRn0ZWZUqZmyJRv
 tnaRGshl7MNzTUKYqxzmZNlQY5_lw8r3hQZEwi8eyFr8_uH0QzeTs5AYp4tpIL4uGZYu4IQdf0QM
 AwCVckjtD5JQ2RszPduGibjAs.IvyfkVZtRnqM12acsB.pn55nhVSe8.HFCrlvI_zPUfKUOTGgkp
 TAiASJhwmE4YGx_6crnNgMqW0mCKB6ElnnTbNhcUb8gGYrnO2n0QmlCE5tCo2xTXUnA_qX2F24WN
 U7OxmnSx2ej7GZW5J6m2LawamPf8Um2VVMm0pO_oCQIxTO9RFpOL7dNWwjPo7vf85lD5V3.WXZjY
 awOciavUfukb8znlFaGSTTaGf3TBxj8uVI1S4tHqHe4BACk38vgdxtl7GPxELnCl3e2C6Z4fu173
 xac7lVBDN1.J.oHHYnCiTausT3YZwUL0jbVRE_lDDXBcOuNtsk3xN.JkRviioVS2jgf5htY7plbk
 wL26asxkywYrlivYW6SqkVOIJevzr000efBpy.8jIQYwd9QC7E9YWqM.hsyAir9Cgkp6g5E7qMPQ
 bInXOmBOWCmDlq30B4t4m8e6D1GKfHPQfITykeXar.plumejrRk2fo_v5bBZR9zlUK4CMJ7T4cA6
 Vesd.V2IphUmmv8FvxSn5IGj9cPw9UU9PtnvhXQdyM065GMaSmmjFgdhav18_m5oieZx1wpMhrhb
 g6DCqoQebJz6GTQrd5tHiSqnnlWWdIaiSluTHBEImVAZ4AYu5h.D.GZNceXQ8x4ESDwRu8L13ylx
 1f1.3KDC.zPxjwz270OR90XTFPHbFHx_agPLdYCPhmDI5JYzgJIV3p3N9EG2pML7SoFuwrH4QtHI
 pNfe5Qltqxr360_AqWpzfbYH55AOqr1OCWNWKejQo2nOFxSeFgS1zRz5Bq1haAejIu4oVfvYTyLW
 l0NjgH.zN0mcdCFMgQ1a8_67ycE3SOOvKjI2Q4sjIucE37Y9IVGcBs.eKLdgPqAul7Ik6EeXtdju
 qi4WHhjUJPKM3h7K_DNUuM48H.1CTXuPv6Dfb.SHLEyBVasdqnv3TVmuyNe6q2nVnB24TYFp3BNv
 NiTJ55NEqI1BRWjl4BRTR1kP9bDajtl3Fky6j_3q1_qeIIa2pE.hxJkCe4jsWv6zxOR3c7OP5UDz
 gklNZ9YO_4VvpgZt4qhODTmkE4JP3kYWFJ35wdrkoxrOlxyQJ9Us1dWSvxE9VXc.YCHEP0N1AnWn
 LHuYmF4oYlkxqPL7hU3GpoJqcbmuwquuwtEuQvTK0lue9f951oTVSDTL96Ieuk8PV3U_ZRWvQjoE
 WpH1AcLjxnGsvAiuDuWeYml4D7hhOgjh0_6aMkTGyQwWU6cQlxtvUrqtZmNF6MA6N4QKtvRYNOp.
 XA3OcPd.NrojQHQ2GkhxcAQV3.O.oWuFluqW5drNIrjAUTqwf9TwzBn.fNKKN9BHiH2NAeW0xGvl
 kLh6ROLMDAnnBhQSXPV9KHQhKX0hlWFpGVc2wgp9NZjqKlr0a6YW9Cah0ohQ8dlvuFYdtZriFynp
 9gm6UGPWgUyYbYsMgUsPajEU3fQ30ftmNgocG8Jp.uQogiQevpWaNw89OSRbl.LIW16HpfKe0zAH
 yeJrC6iL8pN2U4GfQ2SiSPkMAT4VXTKwyynugEDTxvbn6_LsA.lfWKbHumS0tJMOoKhoNxodqZas
 DanA5i3jWRnVwN1deUyotDgMKkD8kIImNYDGq4XdMAufQVq8blPW2KRVEtJDVt8vnd6zQP5r7_nN
 uzMUhtUlJgi7ScM3mw.Lbdqp8qsW2sPi2xI5Zg5EnNt2SQmx5V3pDZ.cSJsVi6zP207FyHKDcum_
 DS4.T62SOS85zf0mX8h8karcbyEmCk0wtd_iNIQK5hmOSHt1a.M55bKY0emfB1HKMaRJ96wWbzkx
 ywkZrXabsFA8Mw16YaHmt2uD0kbvlKiLLpslF1v8MYcPiFpZNQBBX9USpxpUfWUJxtRpFqdqlrsU
 i5dXjN.8B2BdY8rHpLq4vpQzYpfcbZ117wsyKt1ogEuamNXxcXnCoAxoj1yVdiTuOEdcsvFcPspK
 OkuUnsp_tdYyjeX2Vx.60U3ZBWnB.17oWLx0jIXFdrxagpztbUaq9OeibRcyd_3z1JaS8pPQ.5Qy
 0dup.PX78M0bsAVxjvzjAOA3AVMxdsuZXhEBiydd7JTnuaKigBH6y.lucSOPs9982MowYkDMXpkb
 CUQo4fjCEozbYw.s5lEriQ4k5cin.Yqo1lFS9PwzURJ7o8b.B6NsseqcZkF2kMvmZPdv58ikd_8U
 2
X-Sonic-MF: <jjvazha@yahoo.com>
X-Sonic-ID: fea44f05-93f4-4242-89b8-90eacda5daef
Received: from sonic.gate.mail.ne1.yahoo.com by sonic301.consmr.mail.sg3.yahoo.com with HTTP; Thu, 13 Mar 2025 15:10:45 +0000
Date: Thu, 13 Mar 2025 15:10:43 +0000 (UTC)
From: Jojan <jjvazha@yahoo.com>
To: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>, 
	"bovog@etipack.it" <bovog@etipack.it>
Message-ID: <1704937572.2379958.1741878643738@mail.yahoo.com>
In-Reply-To: <29623.1741853469718435692@lists.yoctoproject.org>
References: <649407414.2100451.1741793526549@mail.yahoo.com> <29623.1741853469718435692@lists.yoctoproject.org>
Subject: Re: [poky] Problem run bitbake on terminal in ubuntu #compiler
 #poky #yocto #bitbake
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_2379957_1539441623.1741878643736"
X-Mailer: WebService/1.1.23435 YMailNorrin
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 13 Mar 2025 15:10:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13563

------=_Part_2379957_1539441623.1741878643736
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 You can you edit the "bblayers.conf" file=C2=A0 and the layers to relative=
 path instead of absolute path=20

Please edit the the BBLAYERS=C2=A0 in your build/conf/bblayers.conf to a re=
lative path with $TOPDIR

or something like :
YOCTOROOT =3D "${@os.path.abspath(os.path.join("${TOPDIR}", os.pardir))}"

BBLAYERS ?=3D " \
=C2=A0 ${YOCTOROOT}/poky/meta \
=C2=A0 ${YOCTOROOT}/poky/meta-poky \
=C2=A0 ${YOCTOROOT}/poky/meta-yocto-bsp \


    On Thursday, March 13, 2025 at 01:11:11 AM PDT, bovog via lists.yoctopr=
oject.org <bovog=3Detipack.it@lists.yoctoproject.org> wrote: =20
=20
 Hi Jojan,After that it worked because I had to update to the lts version b=
ecause it didn't work for me, but now it gives me this problem when I run b=
itbake core-image-sato
ERROR: The following layer directories do not exist:
ERROR: =C2=A0 =C2=A0/home/etipack/poky/meta
ERROR: =C2=A0 =C2=A0/home/etipack/poky/meta-poky
ERROR: =C2=A0 =C2=A0/home/etipack/poky/meta-yocto-bsp
ERROR: Please check BBLAYERS in /media/etipack/86934a4c-2406-4cfd-afac-f0e2=
c785ec7e/home/etipack/poky/build/conf/bblayers.conf

But I see that in bblayers.conf the layers exist I don't know why these doe=
sn't work=C2=A0Thanks
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.
View/Reply Online (#13562): https://lists.yoctoproject.org/g/poky/message/1=
3562
Mute This Topic: https://lists.yoctoproject.org/mt/111656575/4743935
Mute #compiler:https://lists.yoctoproject.org/g/poky/mutehashtag/compiler
Mute #poky:https://lists.yoctoproject.org/g/poky/mutehashtag/poky
Mute #yocto:https://lists.yoctoproject.org/g/poky/mutehashtag/yocto
Mute #bitbake:https://lists.yoctoproject.org/g/poky/mutehashtag/bitbake
Group Owner: poky+owner@lists.yoctoproject.org
Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [jjvazha@yahoo.com=
]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

 =20
------=_Part_2379957_1539441623.1741878643736
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp2e05552fyahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">You can you edit the <span>"=
bblayers.conf" file&nbsp; and the layers to relative path instead of absolu=
te path <br></span></div><div dir=3D"ltr" data-setdir=3D"false"><span><br><=
/span></div><div dir=3D"ltr" data-setdir=3D"false"><span>Please edit the th=
e <span>BBLAYERS&nbsp; </span>in your build/conf/bblayers.conf to a relativ=
e path with $TOPDIR<br></span></div><div dir=3D"ltr" data-setdir=3D"false">=
<span><br></span></div><div dir=3D"ltr" data-setdir=3D"false"><span>or some=
thing like :<br></span></div><div dir=3D"ltr" data-setdir=3D"false"><span><=
span>YOCTOROOT =3D "${@os.path.abspath(os.path.join("${TOPDIR}", os.pardir)=
)}"</span><br></span></div><div dir=3D"ltr" data-setdir=3D"false"><span><br=
></span></div><div dir=3D"ltr" data-setdir=3D"false"><div>BBLAYERS ?=3D " \=
<br>&nbsp; ${YOCTOROOT}/poky/meta \<br>&nbsp; ${YOCTOROOT}/poky/meta-poky \=
<br>&nbsp; ${YOCTOROOT}/poky/meta-yocto-bsp \</div><div><br></div><div><br>=
</div></div><div><br></div>
       =20
        </div><div id=3D"ydp14071413yahoo_quoted_2361847038" class=3D"ydp14=
071413yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                        On Thursday, March 13, 2025 at 01:11:11 AM PDT, bov=
og via lists.yoctoproject.org &lt;bovog=3Detipack.it@lists.yoctoproject.org=
&gt; wrote:
                    </div>
                    <div><br></div>
                    <div><br></div>
               =20
               =20
                <div><div id=3D"ydp14071413yiv0039210758"><div><div>Hi Joja=
n,</div>
<div>After that it worked because I had to update to the lts version becaus=
e it didn't work for me, but now it gives me this problem when I run bitbak=
e core-image-sato<br clear=3D"none">ERROR: The following layer directories =
do not exist:<br clear=3D"none">ERROR: &nbsp; &nbsp;/home/etipack/poky/meta=
<br clear=3D"none">ERROR: &nbsp; &nbsp;/home/etipack/poky/meta-poky<br clea=
r=3D"none">ERROR: &nbsp; &nbsp;/home/etipack/poky/meta-yocto-bsp<br clear=
=3D"none">ERROR: Please check BBLAYERS in /media/etipack/86934a4c-2406-4cfd=
-afac-f0e2c785ec7e/home/etipack/poky/build/conf/bblayers.conf<br clear=3D"n=
one"><br clear=3D"none"></div>
<div>But I see that in bblayers.conf the layers exist I don't know why thes=
e doesn't work</div>
<div id=3D"ydp14071413yiv0039210758yqtfd47394" class=3D"ydp14071413yiv00392=
10758yqt3641807115"><div>&nbsp;</div>
<div>Thanks</div>
</div></div></div><br>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>Link=
s: You receive all messages sent to this group.<br>View/Reply Online (#1356=
2): <a href=3D"https://lists.yoctoproject.org/g/poky/message/13562" rel=3D"=
nofollow" target=3D"_blank">https://lists.yoctoproject.org/g/poky/message/1=
3562</a><br>Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/1=
11656575/4743935" rel=3D"nofollow" target=3D"_blank">https://lists.yoctopro=
ject.org/mt/111656575/4743935</a><br>Mute #compiler:https://lists.yoctoproj=
ect.org/g/poky/mutehashtag/compiler<br>Mute #poky:https://lists.yoctoprojec=
t.org/g/poky/mutehashtag/poky<br>Mute #yocto:https://lists.yoctoproject.org=
/g/poky/mutehashtag/yocto<br>Mute #bitbake:https://lists.yoctoproject.org/g=
/poky/mutehashtag/bitbake<br>Group Owner: poky+owner@lists.yoctoproject.org=
<br>Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" re=
l=3D"nofollow" target=3D"_blank">https://lists.yoctoproject.org/g/poky/unsu=
b</a> [jjvazha@yahoo.com]<br>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<=
br><br></div>
            </div>
        </div></body></html>
------=_Part_2379957_1539441623.1741878643736--

