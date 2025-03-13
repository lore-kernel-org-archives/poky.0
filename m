Return-Path: <jjvazha@yahoo.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 007F0C282EC
	for <webhook@archiver.kernel.org>; Thu, 13 Mar 2025 15:40:02 +0000 (UTC)
Received: from sonic311-21.consmr.mail.sg3.yahoo.com (sonic311-21.consmr.mail.sg3.yahoo.com [106.10.244.38])
 by mx.groups.io with SMTP id smtpd.web11.18019.1741880399942157080
 for <poky@lists.yoctoproject.org>;
 Thu, 13 Mar 2025 08:40:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yahoo.com header.s=s2048 header.b=oM63Me+V;
 spf=neutral (domain: yahoo.com, ip: 106.10.244.38, mailfrom: jjvazha@yahoo.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1741880396; bh=qWpa+T+b2/ZqXsDzqwnRirbTKqP0M6fvDwElvBZfzwM=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=oM63Me+Vm1yqrTfCsdzGzR0VgvnTmbsjL9mc2RsViAFCbMEzFzAwPpsP1vJygU43jZxP6Ih4LYq4bWi620qgDD+j80HKvmfqKonlAMmnwGsPfT28+wj4UkDyyhsP40wxYk/niZfB2BYAM+hWfXpI9MSpojVUqX8bbCdhK4buYWEVXrWGK4Ydx8timPC9SGJKQLJs+WbbSfC4uQqEAm5y3Jgq0ejv7N5jdn/Xjqbv/XV62WwmhgPiY3I48hunMLyBPEwyHSU6DSsvxnzfbcGoQWtf2o/qYJ0nzdhnTCMvpJsw40anmjR7jtpyObx161/YrAhF/ZlnBISfddMIqRbaTg==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1741880397; bh=4K3WpddNMC2lMRPx8/UMvJlwQTVpeylY3of9Kwdsj0r=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=NsZh9z3UOEhyHwYc0dkfJ9o6gf8Zqdl1FHAgu4Rr6KwtqZclElNkpVYqIogQGaa4YBFp6N0UGc9yjVoFHqGj/XR9cQMV9RUW+I26FVyFWm2aFQcdJUGkHs7EM1jSujSBkS/2d/WwXXRLdRZo2Ync0A/Mjj2w5Hw0tYPtCQMzFw6MWf2NYnMzumBrIjbxIfCErXRZPc4Qk91eNJtIF+ra2GU+YWStKufF5Ije7LXNGx6dq/IeqFvstnvWnRvPrv5RYsuW0ho1ozkr1Wk9CSUXfjxGwruRTWIbiEzXaoRP7APC2BoMHYUkMre4FqY3RD40fRtXWx/WUERtW9gixLxtgg==
X-YMail-OSG: orGbkZoVM1mUjnvyXN3XYC5PGwAKewnBnkY7IfmrlI49t2015hMvnPLaIK80F4M
 JV4TyMcE5t1Iq_2TpTqEI_WDrPEohT1g58baDM8PqWFFyUbfHknSZaIAz2Jac083gHrwd2s9hkvj
 VYdlxDzz6N.1Q9pM1kcGxkjEN3zbb2Dc1USRGRk.UXjbFjNA9tcZPVKRUMK52Pf9TkK8K8CXyLBt
 9UBHYsY3QyAXRl6cxwepMyVkP1JFQYdhyDe1EjphYBq_HRnntog7fegSvwduyTSEvpdEjPwuWEUZ
 IZJRjh2Fwcrf6_8pAhST5E0WO2cBUjZjme0bvQ2vJopVB4__XB_u6VLw9WymmpTWEFikfSpBl.tu
 6uuJ_XcK6Yz8ECYNjx5ppQIt2crOviWTI9z9qd9rUVIWM2yETEUnQeBIde7JGhrB6o5XblYXGkLF
 yHHMZtIEOPHN3gez8_Pwh9BQtrjxPfngwlhWQnBjoAiwHV8rDrbBy61cjv03SJr8f8rpWwqM2vCa
 4nbN0AWe.zzgOWQaz0lMl0bwwe65teNr2Jq18ut1CIfuIgivIF6Y4hcRcTSWKYNxSzufdnHfconH
 wyUSzlf8Kj5_7.dnuSWOmshYZPZ87.QJ_.jhuOl5Ao82caFo_D10oO873x2eM5cgl4Q7Z6I9HKMJ
 CKrTHevVJg2s4U8FyCiQeSXXtVvde9SIQHP2W5nLd2iCh5Os2WUL44jLgKT1XGkL18F2Uj8aClUr
 Hinr6Ti4ieJSBZ036qCzY_WymzoT6TLIU.2UCZw57cHznVUCoGWFsm3pK8dLdjShdVZDSpJCqVev
 nSe3e557Mq.D1BvOiQj_QRdTQsS.VOB6lBQ_DPUVYQbwn5ZaIig7CSCkrb1DVsv00FItyOVoRPhG
 vvXbKU.TNedQtoqxkPvIWoCCj0GQCihWdSqiU1KbWTwS1aW6bCMfQ.PcOZ1sVEDOgM3fmeySkOUk
 BLWXjtlJ2wVM3987UG7C4PJnuSqmBvA9wUVm8cjTgEKOrV6efe_74p0SRUfqsv9hZMGMiqhR3Hqj
 4gYFpUlGC1ES5ePjBSbfgdqIbdhagBfEPpo95kfhKiSgERrfM0eaPdcGJw65q7XqbqkxgZMK4yCZ
 8X9vwhzHcYvJt_MBihzyeogU81AEvz5OTGO05Fi3QAHYxg_8wKEorTdgT7opuO38pWEUda_gqS2f
 SmPntBdRa1s8dnIRdKBHjDMB034d4UgnKizrkSKJLYCPGbqUxE8LnpVK6OeLKa_ho122UECsedlc
 IvplQkRwgDPYwso3KlNISQQh8f6qPpUNbLBceXdxq6D0WzZTSpk7_HFfNTF5GTPplNYDzI7kZV1f
 rSlcrLON9xR5tnhLGaRMYlt5w7R9enqewHNI_Bhec3rXCWBDAdyo_8AIdWYo3bdX2DDJhFRHpRxu
 Jbu4GSqbhhsCkAIGtRFHKkK4rNLPCMXPf5irDP5vjclyqaIBaZraie.bOj84hfCNJtaeRTvdBfRd
 uUcN7lvJK5L0OEWp.2KgZyTHRyvuvpG3MaYyNyy6DfDpTgb5FUloJapmvuCSUj127KCvgwLNrydJ
 NjieQ_woU0gSkWw0OXsMBxGb8ezziQeAfPIs.ORshz9OuVyHkvq5GNQtEIW.pp.1rbKQehAntFdG
 G5eG91lA9hT6tiHouHF_aafoLFP7ZybOzmPmHRP_2DFzQzDboDLs4Tzk0q6BrFjfswU7yU4V3sWq
 IqjiSvAx6ALK.GSV9lxEiParllHIAPcVDbxuhMDEaWhgGv5Cog7EZQv00s0zNnYUfviOLZBZLpt4
 3qanHab7HwyxhYfLnaPiDauph9j9xItWxGi.1wifDt1P8smkJ21UeWb62atecIqoNgkgwtjprKYa
 YdqBoVQ2LGg8WHKUINny9CmZx1uVryxd9coDJUjbAucfMh6jCqdfpjVFp820I7cdUu.0YK2ZTs2H
 I2PhIYtU8ojHH_oChQp4qt3aIbAqGOP1Nq8ShaBnNF4i0uj9TbO3PfxTyZAD0AjZKYSm0dwRHMlv
 vMeSyBESsRpqDzrAzJKw7oTEt_P9zUk2iDgEsYC7vkYix7DG_6z6AvRVWQjtRRuY3uQ0W.Th69Nj
 DuzlBoAkQcBO225F8WCEi5hylrA4RGNo4jPTsGyESyzLiw23KubgeOB75ek8dUuk1407RDU7L57A
 i6FPN1izOKBaH.LU4GKDLFilbL5_K1hcvhI7KoJfsuXgYA3WkfyYIfB8npSY4AaN0qtxJbDD_auw
 VDkIzKTVUvn.WqeIQXjeXcOZdVwa4YMIDm6mOis6NglWu9UZqOEvrbs8o7zlL3p0sNbBUCKTg.L_
 2mj5nM5aUZZNxXtTpqtM-
X-Sonic-MF: <jjvazha@yahoo.com>
X-Sonic-ID: 91480b58-081a-47f8-9294-f8ccf1943b10
Received: from sonic.gate.mail.ne1.yahoo.com by sonic311.consmr.mail.sg3.yahoo.com with HTTP; Thu, 13 Mar 2025 15:39:56 +0000
Date: Thu, 13 Mar 2025 15:39:55 +0000 (UTC)
From: Jojan <jjvazha@yahoo.com>
To: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>, 
	"bovog@etipack.it" <bovog@etipack.it>
Message-ID: <294424950.2385492.1741880395495@mail.yahoo.com>
In-Reply-To: <29623.1741879634015542208@lists.yoctoproject.org>
References: <1704937572.2379958.1741878643738@mail.yahoo.com> <29623.1741879634015542208@lists.yoctoproject.org>
Subject: Re: [poky] Problem run bitbake on terminal in ubuntu #compiler
 #poky #yocto #bitbake
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_2385491_128142652.1741880395494"
X-Mailer: WebService/1.1.23435 YMailNorrin
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 13 Mar 2025 15:40:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13565

------=_Part_2385491_128142652.1741880395494
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

=20
Just follow the link ( Ubuntu 24.04 LTS (Noble Numbat) Release Notes)

|=20
|=20
|=20
|  |  |

 |

 |
|=20
|  |=20
Ubuntu 24.04 LTS (Noble Numbat) Release Notes

Noble Numbat Release Notes Table of Contents Introduction New features in 2=
4.04 LTS Known Issues Official flavo...
 |

 |

 |



But you need to have sudo permission.
  =20
   -   =20
Disable this restriction on the entire system for one boot by executing ech=
o 0 | sudo tee /proc/sys/kernel/apparmor_restrict_unprivileged_userns. This=
 setting is lost on reboot. This similar to the previous behaviour, but it =
does not mitigate against kernel exploits that abuse the unprivileged user =
namespaces feature.

   -   =20
Disable this restriction using a persistent setting by adding a new file (/=
etc/sysctl.d/60-apparmor-namespace.conf) with the following contents:
  =20
kernel.apparmor_restrict_unprivileged_userns=3D0

Reboot. This is similar to the previous behaviour, but it does not mitigate=
 against kernel exploits that abuse the unprivileged user namespaces featur=
e.


    On Thursday, March 13, 2025 at 08:27:20 AM PDT, bovog via lists.yoctopr=
oject.org <bovog=3Detipack.it@lists.yoctoproject.org> wrote: =20
=20
 Hi,Now I have found an another problem=C2=A0/poky/build$ bitbake core-imag=
e-sato
ERROR: User namespaces are not usable by BitBake, possibly due to AppArmor.
See https://discourse.ubuntu.com/t/ubuntu-24-04-lts-noble-numbat-release-no=
tes/39890#unprivileged-user-namespace-restrictions for more information.Sum=
mary: There was 1 ERROR message, returning a non-zero exit code.=C2=A0What =
I have to do?=C2=A0Thanks
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.
View/Reply Online (#13564): https://lists.yoctoproject.org/g/poky/message/1=
3564
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
------=_Part_2385491_128142652.1741880395494
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html xmlns=3D"http://www.w3.org/1999/xhtml" xmlns:v=3D"urn:schemas-microso=
ft-com:vml" xmlns:o=3D"urn:schemas-microsoft-com:office:office"><head><!--[=
if gte mso 9]><xml><o:OfficeDocumentSettings><o:AllowPNG/><o:PixelsPerInch>=
96</o:PixelsPerInch></o:OfficeDocumentSettings></xml><![endif]--></head><bo=
dy><div class=3D"ydp6eee44a5yahoo-style-wrap" style=3D"font-family:Helvetic=
a Neue, Helvetica, Arial, sans-serif;font-size:16px;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" d=
ata-setdir=3D"false">Just follow the link (<span> </span><a href=3D"https:/=
/discourse.ubuntu.com/t/ubuntu-24-04-lts-noble-numbat-release-notes/39890#u=
nprivileged-user-namespace-restrictions" rel=3D"nofollow" target=3D"_blank"=
 class=3D"enhancr_card_2362371183">Ubuntu 24.04 LTS (Noble Numbat) Release =
Notes</a>)</div><div><br></div><div id=3D"ydpa821518cenhancr_card_236237118=
3" class=3D"ydpa821518cyahoo-link-enhancr-card ydpa821518cymail-preserve-cl=
ass ydpa821518cymail-preserve-style" style=3D"max-width:400px;font-family:Y=
ahooSans VF, YahooSans, OpenSans VF, OpenSans, Helvetica Neue, Segoe UI, He=
lvetica, Arial, sans-serif" data-url=3D"https://discourse.ubuntu.com/t/ubun=
tu-24-04-lts-noble-numbat-release-notes/39890#unprivileged-user-namespace-r=
estrictions" data-type=3D"YENHANCER" data-size=3D"MEDIUM" contenteditable=
=3D"false"><a href=3D"https://discourse.ubuntu.com/t/ubuntu-24-04-lts-noble=
-numbat-release-notes/39890#unprivileged-user-namespace-restrictions" style=
=3D"text-decoration-line: none !important; text-decoration-style: solid !im=
portant; text-decoration-color: currentcolor !important; color: rgb(0, 0, 0=
) !important;" class=3D"ydpa821518cyahoo-enhancr-cardlink" rel=3D"nofollow"=
 target=3D"_blank"><table border=3D"0" class=3D"ydpa821518ccard-wrapper ydp=
a821518cyahoo-ignore-table" cellpadding=3D"0" cellspacing=3D"0" style=3D"ma=
x-width:400px"><tbody><tr><td width=3D"400"><table border=3D"0" class=3D"yd=
pa821518ccard ydpa821518cyahoo-ignore-table" cellpadding=3D"0" cellspacing=
=3D"0" width=3D"100%" style=3D"max-width:400px;border-width:1px;border-styl=
e:solid;border-color:rgb(224, 228, 233);border-radius:2px"><tbody><tr><td c=
lass=3D"ydpa821518ccard-primary-image-cell" background=3D"https://s.yimg.co=
m/lo/api/res/1.2/mwjrG2N.rqsL5tA4gWw7hQ--~A/Zmk9ZmlsbDt3PTQwMDtoPTIwMDthcHB=
pZD1pZXh0cmFjdA--/https://ubuntucommunity.s3.us-east-2.amazonaws.com/origin=
al/3X/6/2/6217e85bdc9dbe7aa3cb089957430be9cbd080a9.png.cf.jpg" bgcolor=3D"#=
000000" valign=3D"top" height=3D"175" style=3D"background-color: rgb(0, 0, =
0); background-repeat: no-repeat; background-size: cover; position: relativ=
e; border-radius: 2px 2px 0px 0px; min-height: 175px;"><!--[if gte mso 9]><=
v:rect fill=3D"true" stroke=3D"false" style=3D"width:396px;height:175px;pos=
ition:absolute;top:0;left:0;"><v:fill type=3D"frame" color=3D"#000000" src=
=3D"https://s.yimg.com/lo/api/res/1.2/mwjrG2N.rqsL5tA4gWw7hQ--~A/Zmk9ZmlsbD=
t3PTQwMDtoPTIwMDthcHBpZD1pZXh0cmFjdA--/https://ubuntucommunity.s3.us-east-2=
.amazonaws.com/original/3X/6/2/6217e85bdc9dbe7aa3cb089957430be9cbd080a9.png=
.cf.jpg"/></v:rect><![endif]--><table border=3D"0" class=3D"ydpa821518ccard=
-overlay-container-table ydpa821518cyahoo-ignore-table" cellpadding=3D"0" c=
ellspacing=3D"0" style=3D"width:100%"><tbody><tr><td class=3D"ydpa821518cca=
rd-overlay-cell" background=3D"https://s.yimg.com/cv/ae/nq/storm/assets/enh=
ancrV21/1/enhancr_gradient-400x175.png" bgcolor=3D"transparent" valign=3D"t=
op" style=3D"background-color: transparent; border-radius: 2px 2px 0px 0px;=
 min-height: 175px;"><!--[if gte mso 9]><v:rect fill=3D"true" stroke=3D"fal=
se" style=3D"width:396px;height:175px;position:absolute;top:-18px;left:0;">=
<v:fill type=3D"pattern" color=3D"#000000" src=3D"https://s.yimg.com/cv/ae/=
nq/storm/assets/enhancrV21/1/enhancr_gradient-400x175.png"/><v:textbox inse=
t=3D"0,0,20px,0"><![endif]--><table border=3D"0" class=3D"ydpa821518cyahoo-=
ignore-table" height=3D"175" style=3D"width: 100%; min-height: 175px;"><tbo=
dy><tr><td class=3D"ydpa821518ccard-richInfo2" style=3D"text-align:left;pad=
ding:15px 0 0 15px;vertical-align:top"></td><td class=3D"ydpa821518ccard-ac=
tions" style=3D"text-align:right;padding:15px 15px 0 0;vertical-align:top">=
<div class=3D"ydpa821518ccard-share-container"></div></td></tr></tbody></ta=
ble><!--[if gte mso 9]></v:textbox></v:rect><![endif]--></td></tr></tbody><=
/table></td></tr><tr><td><table border=3D"0" align=3D"center" class=3D"ydpa=
821518ccard-info ydpa821518cyahoo-ignore-table" cellpadding=3D"0" cellspaci=
ng=3D"0" style=3D"background-color: rgb(255, 255, 255); background-repeat: =
repeat; background-attachment: scroll; background-image: none; background-s=
ize: auto; position: relative; z-index: 2; width: 100%; max-width: 400px; b=
order-radius: 0px 0px 2px 2px; border-top: 1px solid rgb(224, 228, 233);"><=
tbody><tr><td style=3D"background-color:#ffffff;padding:16px 0 16px 12px;ve=
rtical-align:top;border-radius:0 0 0 2px"></td><td style=3D"vertical-align:=
middle;padding:12px 24px 16px 12px;width:99%;font-family:YahooSans VF, Yaho=
oSans, OpenSans VF, OpenSans, Helvetica Neue, Segoe UI, Helvetica, Arial, s=
ans-serif;border-radius:0 0 2px 0"><h2 class=3D"ydpa821518ccard-title" styl=
e=3D"font-size: 14px; line-height: 19px; margin: 0px 0px 6px; font-family: =
YahooSans VF, YahooSans, OpenSans VF, OpenSans, Helvetica Neue, Segoe UI, H=
elvetica, Arial, sans-serif; color: rgb(29, 34, 40); max-width: 314px;">Ubu=
ntu 24.04 LTS (Noble Numbat) Release Notes</h2><p class=3D"ydpa821518ccard-=
description" style=3D"font-size: 12px; line-height: 16px; margin: 0px; colo=
r: rgb(151, 158, 168);">Noble Numbat Release Notes Table of Contents  Intro=
duction New features in 24.04 LTS Known Issues Official flavo...</p></td></=
tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></a>=
</div><div><br></div><div><br></div><div dir=3D"ltr" data-setdir=3D"false">=
<div dir=3D"ltr" data-setdir=3D"false">But you need to have sudo permission=
.<br><ul><li>
<p>Disable this restriction on the entire system for one boot by executing =
<code>echo 0 | sudo tee /proc/sys/kernel/apparmor_restrict_unprivileged_use=
rns</code>.
 This setting is lost on reboot. This similar to the previous behaviour,
 but it does not mitigate against kernel exploits that abuse the=20
unprivileged user namespaces feature.</p>
</li>
<li>
<p>Disable this restriction using a persistent setting by adding a new file=
 (<code>/etc/sysctl.d/60-apparmor-namespace.conf</code>) with the following=
 contents:</p>
<pre class=3D"ydp918b67d1codeblock-buttons"><div class=3D"ydp918b67d1codebl=
ock-button-wrapper"></div></pre></li><pre class=3D"ydp918b67d1codeblock-but=
tons"><code class=3D"ydp918b67d1lang-auto">kernel.apparmor_restrict_unprivi=
leged_userns=3D0
</code></pre>
<p>Reboot. This is similar to the previous behaviour, but it does not=20
mitigate against kernel exploits that abuse the unprivileged user=20
namespaces feature.</p></ul></div><br></div><div><br></div>
       =20
        </div><div id=3D"ydp60ecb75eyahoo_quoted_2161144899" class=3D"ydp60=
ecb75eyahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                        On Thursday, March 13, 2025 at 08:27:20 AM PDT, bov=
og via lists.yoctoproject.org &lt;bovog=3Detipack.it@lists.yoctoproject.org=
&gt; wrote:
                    </div>
                    <div><br></div>
                    <div><br></div>
               =20
               =20
                <div><div id=3D"ydp60ecb75eyiv8960768409"><div><div>Hi,</di=
v>
<div>Now I have found an another problem</div>
<div>&nbsp;</div>
<div>
<div>/poky/build$ bitbake core-image-sato<br clear=3D"none">ERROR: User nam=
espaces are not usable by BitBake, possibly due to AppArmor.<br clear=3D"no=
ne">See https://discourse.ubuntu.com/t/ubuntu-24-04-lts-noble-numbat-releas=
e-notes/39890#unprivileged-user-namespace-restrictions for more information=
.</div>
<div>Summary: There was 1 ERROR message, returning a non-zero exit code.</d=
iv>
<div>&nbsp;</div>
<div>What I have to do?</div>
<div id=3D"ydp60ecb75eyiv8960768409yqtfd73714" class=3D"ydp60ecb75eyiv89607=
68409yqt6468343199"><div>&nbsp;</div>
<div>Thanks</div>
</div></div><div id=3D"ydp60ecb75eyiv8960768409yqtfd34095" class=3D"ydp60ec=
b75eyiv8960768409yqt6468343199">
</div></div></div><br>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>Link=
s: You receive all messages sent to this group.<br>View/Reply Online (#1356=
4): <a href=3D"https://lists.yoctoproject.org/g/poky/message/13564" rel=3D"=
nofollow" target=3D"_blank">https://lists.yoctoproject.org/g/poky/message/1=
3564</a><br>Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/1=
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
------=_Part_2385491_128142652.1741880395494--

