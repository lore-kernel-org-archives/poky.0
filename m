Return-Path: <jjvazha@yahoo.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2035DEE14A9
	for <webhook@archiver.kernel.org>; Wed,  6 Sep 2023 22:49:51 +0000 (UTC)
Received: from sonic301-21.consmr.mail.sg3.yahoo.com (sonic301-21.consmr.mail.sg3.yahoo.com [106.10.242.84])
 by mx.groups.io with SMTP id smtpd.web11.209.1694040589679732626
 for <poky@lists.yoctoproject.org>;
 Wed, 06 Sep 2023 15:49:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yahoo.com header.s=s2048 header.b=d4Id5HRf;
 spf=neutral (domain: yahoo.com, ip: 106.10.242.84, mailfrom: jjvazha@yahoo.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1694040586; bh=3Vqmop4a6CH1WzFP3dA3dmU+L/KIqi2ugazUNkhqSII=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=d4Id5HRftJpMOcCnGrAuLTA37VLBNjT3p15d7bj8XchlDmheCpTmC9rYOukT4roZZNlTv7rEsNsKVUr7E3yRoV7XxmFUekSADiPsl9SF+OuepkU7LTp8He+92Y8qHX5jWLzod2pxyOohIm1mSVNaM840T18MIoY4NHuNgIkdSRuGmgxyQ8tGbLl2HsGybIiY5nnfdAosrjGLs7PFZ+cjOK2VAPeXIzq27vVGITGmW9hWtdmh2wsI+Ax+a0XfRoWs8QQHcp9Oj7BX8XJxiFFWe4ydw8bnJLSmV94HL+4Q1fGcgun3+mwh4eUyjKjttWfPhUyQ0eXG8K390fltO0a1Cg==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1694040586; bh=6oEi+b2whZ5fd4vuBc6QZGniWtKykpSmFvvBbKzsa/y=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=VfCS7OSEWnqAqYfWnxTN4l0WrwHGKHII8XgnOrFwTQkt87rdY9HTmD+mLUVgsf32LzjUwXerBe3xpH2k6gxsfdewC3uvOR3I5tdV2BfvFdFcZt953S3bYhZ7l41k8NWMgaNYcTjGbTvDnMxhJc6sKOtLYvKiOGH5cay4r1usxpjDDOd6ASuy1FvHz9mkWQKoYMFxH43wmePkqWAtb1sfSfzPZOM32PlQqJS/Q1xaAuU82I0/XKW0rSpt9c5XxXe7EL1aLpN09A7tNgMSE5B2/UvSDyp1h4v1qWUIMVshII1GOWpwhzLxhHMe2u8GGZBf+XDC8eXdpVTPJcFWY9Y2kQ==
X-YMail-OSG: 0SSyfZkVM1nUU8dYs93m5cTT6Ln4oZZiH9dby62K1Y29kYgQ3GBfNYb0lrQUY5M
 GDNL5pzDnrlqdxFqB4TYqFtbFMDEjZl929Jm365WPbBk4ax9rS6exrlxjMgG3rtWIClnrlNC7Anx
 jDDW2l_1.Uho9tzMZsOHyh9UiEUznbwJBNraW0JmARkcp_UF_2Tq5CeYZbbyBqQwvGALigtQ8mSI
 Mb0lSYOsj2WvN7GSdZdE5XkKAfUOPfCGLGVaOPCnq8psSJywfXYH1SWKFkc8V3xNSHcoYqKeuP2p
 OVu5lciTinPptEFFcWq932ZMmMFHPWd8GyEhbkI9KxeWFftS.ZEpJMqXf4VDk9aj7EDMoMEcW4c4
 .1185xWWhwoJl6mRvTntPFeRw5MrZ1lHBUCYJ1W5YE3nWMkCI8UNpy4Bd0C68qd9fTNHoh2.VH7_
 HhOrdzuDK75XI.CjP0Kb9JMLyBsjA0CKl7NV.uxgbamp0XgU_sAMcmJdypY1gZRNjVtRHsPinlgz
 rPffK4wAReGobwjeTJC0h.YTTQ3h6hPLIyIEU7pNGES32SEJPOqNpmY4kjeJin1wPa340xyn_n.g
 gxahn.tE3Ppx.wVmZrFmsyl2etstmTj0N9tkg4LOc.0kxZZGWhKFCQNAefAfWtxZ4mSoMIkF2pWV
 ceDbYpSlWda8fzQE4T1vV7zBUDlc93pDU8qAQ0Y_hp62xm1uMb8Hw6PMca8TRCo8QV1ewqAU3g8l
 Ok7Ce2iu2lhzqvoKFgWWp5Jb7tPZhdsRetbpl2dtw17sK7.j2.TPH6OORnJSkqqHQtNfrFJEmV6T
 OOSdR1aQ_1J0ex.aRSvP2UouwcHBcsEhxNGVdvUSMO7Omj9FVIIWVP0HrS9GR4nRXbUaeQ1gPsHa
 G6Y1CHl3VF4Q4nejyKLMVWDBX7NIIO.fiYdpILCXLkB8PYE6wQGE.YGACq5ErkwdQATUwH1jpX9_
 B.TV.W3elkHLZ8kVyspjVWr_66EteyKawD4hEMCWUcgISSS9p8SK7gtfshy7Z..18BGlyNBtgrD8
 pMtaqgCisC09ukdCp2Hg7WQk3wnB4mw.bQro8_n7aq3BfrwXfchsYk7PUwRojdxDApSsS9WdfeQr
 q3NA6CVMd_WjhLWm1.7IyilmQYksej6COnlxpdQhKXTbP2SR49uSRDfynlLlYCm3g7r0xOcR5zas
 t48C032Onsffeh8jdlZX4XY3rDPzoSCAM_mjlVjNDf0pt3tmHoktkF.5toY5Z81vsABY.Of46hFA
 O6mQ3mjOGqmpIbrPQpf7jCYLWK8G0itDLNfjv4iO.cQgwwxX9QnlM0MmGD5zM3C8HaNTEXm1bYWv
 zMJMFF5N18.MtNrNQguZptF_NKzSh8RLol7SmtRyg.l4exixTBE_OBEmcgJGrWmU8z8yfVHsq2u.
 mtzyAuoio7JKTZemQ6NHxcLaVxNGKi.KxaAt8RvVahVY5JbV118zd33w0QAG.t3Fc38WQmQSHu.l
 FqwIVvkn.eEsjSI4MuyRGEM2Yoeme25rA8PYDSXumhRbbyK2PCku6dvYq1dizQqCPwrY25mprx5r
 3K0iCRH5db0sX6x.CvpPnaEADHNVDW.JeMo3ltFLraLO0us0KFRcXGh.DYMDBS34cQB6ZM2CpksA
 lRUQXyJRjsKsuUopN1unO.YuapsHRV7MDw0mMtjK5zOLM_ehAISO8aOhcfl_BR9Xyrc.LL6o.rYx
 KzOa6Dx0FBjwVq1j7lgLxL5MxJJ7gQVr36nO95H5kzpHVaHpqeSYaSqJzUcmoxFDuRjpqZj4eRVl
 PPpHG2Q_5.LNUUDRj0WjfaIOsIfHT6W0n1NqZLZdp5mkPzoUi4nuDSFDce9Eg58xD1QuKkKxynxg
 lxOO62uPvIFwu_D0isre5kN0CrUU1ylxG6GJUvGrSSmDD2tf0Ym8WmzoWP6_zXnMWBySTGi95hc4
 fGLWPeShka1C2j4L4oq5JNH.gRQXaEA3BVSgfTDrAyGQc53zndZAuclSqMJjIF.rzmpe6l2THuOl
 RWQelDXXwiEtRMkpAWp8zxvzCrL1GqPocSwsHJ_YRRV.JnSf9RCZX61fUuwWp6S3IFx1wTfiZ4Ix
 0j8AfmPzoLBR_vt2dWG_7dB2gVPqM8Hams_o0VUL.VtL28cpSjw44ULtzc07rXo4KV4chxaQi.6w
 dvveCIJFusaKrTzx0DpDjA6ZaU3ZJVwESV2hVGJUmRvNE1klLnXEuXfWHeWDi28NK51WFy0G6HDg
 ibUcGwa83I5wh3F4wdr.4j7st.etqdT5FuKOmIK0iOW5Xc68NHIdJ4oAhPRhj8B3sB3SAwyO9gDy
 SVRuJJCauvqc-
X-Sonic-MF: <jjvazha@yahoo.com>
X-Sonic-ID: 1a35678f-373d-40e8-8654-5f5b72b88240
Received: from sonic.gate.mail.ne1.yahoo.com by sonic301.consmr.mail.sg3.yahoo.com with HTTP; Wed, 6 Sep 2023 22:49:46 +0000
Date: Wed, 6 Sep 2023 22:49:45 +0000 (UTC)
From: Jojan <jjvazha@yahoo.com>
To: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>, 
	Henry Zhang <henryzhang62@gmail.com>
Message-ID: <1929184835.3669743.1694040585573@mail.yahoo.com>
In-Reply-To: <CANTW0yoo2OpJrT8TA1T7_O--btbQCuKtuHL+ET0Xhu62OfZ0DQ@mail.gmail.com>
References: <CANTW0yoo2OpJrT8TA1T7_O--btbQCuKtuHL+ET0Xhu62OfZ0DQ@mail.gmail.com>
Subject: Re: [poky] errors of "already stripped" when build busybox
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_3669742_1129967598.1694040585571"
X-Mailer: WebService/1.1.21763 YMailNorrin
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 06 Sep 2023 22:49:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13156

------=_Part_3669742_1129967598.1694040585571
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 You can add "INSANE_SKIP{Package name} _append =3D =E2=80=9Calready-stripp=
ed=E2=80=9D



    On Wednesday, September 6, 2023 at 02:58:18 PM PDT, Henry Zhang <henryz=
hang62@gmail.com> wrote: =20
=20
 I want to use busybox in SELinux and need to enable INDIVIDUAL feature.
CONFIG_BUILD_LIBBUSYBOX=3Dy
CONFIG_FEATURE_INDIVIDUAL=3Dy
CONFIG_FEATURE_SHARED_BUSYBOX=3Dy
$ bitbake busybox
returns errors regarding "already stripped":

WARNING: busybox-1.24.1-r0 do_populate_sysroot: File '/usr/lib/libbusybox.s=
o.1.24.1' from busybox was already stripped, this will prevent future debug=
ging!
ERROR: busybox-1.24.1-r0 do_package: QA Issue: File '/sbin/ifup.busybox' fr=
om busybox was already stripped, this will prevent future debugging! [alrea=
dy-stripped]
ERROR: busybox-1.24.1-r0 do_package: QA Issue: File '/sbin/insmod.busybox' =
from busybox was already stripped, this will prevent future debugging! [alr=
eady-stripped]
ERROR: busybox-1.24.1-r0 do_package: QA Issue: File '/sbin/swapoff.busybox'=
 from busybox was already stripped, this will prevent future debugging! [al=
ready-stripped]
...........................................................................=
.......

Where should I modify it to get rid of "already stripped"?

Thanks.
---henry
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.
View/Reply Online (#13155): https://lists.yoctoproject.org/g/poky/message/1=
3155
Mute This Topic: https://lists.yoctoproject.org/mt/101203571/4743935
Group Owner: poky+owner@lists.yoctoproject.org
Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [jjvazha@yahoo.com=
]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

 =20
------=_Part_3669742_1129967598.1694040585571
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpee807fe5yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">You can add <span><span>"INS=
ANE_SKIP{Package name} <span>_append =3D =E2=80=9Calready-stripped=E2=80=9D=
</span></span></span></div><div dir=3D"ltr" data-setdir=3D"false"><span><sp=
an><span><br></span></span></span></div><div dir=3D"ltr" data-setdir=3D"fal=
se"><span><span><span><br></span></span></span></div><div dir=3D"ltr" data-=
setdir=3D"false"><span><span><span><br></span></span></span></div><div><br>=
</div>
       =20
        </div><div id=3D"ydpa46753f5yahoo_quoted_4408321269" class=3D"ydpa4=
6753f5yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Wednesday, September 6, 2023 at 02:58:18 PM PDT, Hen=
ry Zhang &lt;henryzhang62@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"ydpa46753f5yiv3705314107"><div dir=3D"ltr">=
<div>I want to use busybox in SELinux and need to enable INDIVIDUAL feature=
.<br>CONFIG_BUILD_LIBBUSYBOX=3Dy<br>CONFIG_FEATURE_INDIVIDUAL=3Dy<br>CONFIG=
_FEATURE_SHARED_BUSYBOX=3Dy<br>$ bitbake busybox<br></div><div>returns erro=
rs regarding "already stripped":<br><br>WARNING: busybox-1.24.1-r0 do_popul=
ate_sysroot: File '/usr/lib/libbusybox.so.1.24.1' from busybox was already =
stripped, this will prevent future debugging!<br>ERROR:
 busybox-1.24.1-r0 do_package: QA Issue: File '/sbin/ifup.busybox' from=20
busybox was already stripped, this will prevent future debugging!=20
[already-stripped]<br>ERROR: busybox-1.24.1-r0 do_package: QA Issue:=20
File '/sbin/insmod.busybox' from busybox was already stripped, this will
 prevent future debugging! [already-stripped]<br>ERROR:=20
busybox-1.24.1-r0 do_package: QA Issue: File '/sbin/swapoff.busybox'=20
from busybox was already stripped, this will prevent future debugging!=20
[already-stripped]<br>.....................................................=
.............................<br><br></div><div>Where should I modify it to=
 get rid of "already stripped"?<br><br></div><div>Thanks.</div><font color=
=3D"#888888"><div><br></div><div>---henry</div></font></div>
</div><br>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>Links: You recei=
ve all messages sent to this group.<br>View/Reply Online (#13155): <a href=
=3D"https://lists.yoctoproject.org/g/poky/message/13155" rel=3D"nofollow" t=
arget=3D"_blank">https://lists.yoctoproject.org/g/poky/message/13155</a><br=
>Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/101203571/47=
43935" rel=3D"nofollow" target=3D"_blank">https://lists.yoctoproject.org/mt=
/101203571/4743935</a><br>Group Owner: poky+owner@lists.yoctoproject.org<br=
>Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" rel=
=3D"nofollow" target=3D"_blank">https://lists.yoctoproject.org/g/poky/unsub=
</a> [jjvazha@yahoo.com]<br>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<b=
r><br></div>
            </div>
        </div></body></html>
------=_Part_3669742_1129967598.1694040585571--

