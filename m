Return-Path: <jjvazha@yahoo.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF969C35FF1
	for <webhook@archiver.kernel.org>; Fri, 14 Mar 2025 15:11:25 +0000 (UTC)
Received: from sonic312-19.consmr.mail.sg3.yahoo.com (sonic312-19.consmr.mail.sg3.yahoo.com [106.10.244.209])
 by mx.groups.io with SMTP id smtpd.web10.17109.1741965075314094499
 for <poky@lists.yoctoproject.org>;
 Fri, 14 Mar 2025 08:11:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@yahoo.com header.s=s2048 header.b=kxkwjhcr;
 spf=neutral (domain: yahoo.com, ip: 106.10.244.209, mailfrom: jjvazha@yahoo.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1741965072; bh=bBDRljmXHTjv5SGrb8GP44/Im4dBgkZZ8NLyeugrnH0=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=kxkwjhcrcPzV9VS7/wDSAZIxv4iKIQ5YmFaUKXPzcgLW8VSx9EUdO3S0783EoamXaJxwHfJREE8ezUO/r5RgbWDApqugdaCAWeXvuFiPd0sR/SpC2r1oP0aqDnWt+6gB7rIxk1NyWHCdmpm3uU6zsvKKTKkzxynTBfMJB/bZrmoM8Xw+XIS6BfoyGQlLCDuMOV1gQ7DdN8OrCGPLLhCJz1iPTepEEBvalsRcHyw41XbxePDGQ45Rzsma0cLnv8Oylj6pJl4QqKWpoGb+21/O4Sqf/U/KY+mDF7hwoor8TR+5wS/vzCWXOlJh3bjYIRAGm0P0D0Q6yfLqK9uiUK9IUw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1741965072; bh=yN0INQIAyaLxNGka50pDc8IKcABg2RTvJPVdvFYzKsa=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=rjHc86eBMZ0aAhN14D0uq4VBH598rqcyxVtSoMGgAP96zePKIoWy8BjgtyV0JdHA+K6SN3XGHyz8UJXi48nep0dxPYqbFW59a9Kqx+UdfDvYS+4oF7ud+NeMz6eW+ZrtYbBkKexrksDYf6ddUxxX8ffbjxO2LqHIfbHwVPz2iNsMQxZ5ZKZOHoM5Qq/Tu4/wcxrvJ/abn1aT00hpQMZuamMSPxfKy3r/m6agDXoXJbC9rcQHg1TsrFhPjCJkMwhmKvb19Mt2T9mxvN25alAm9XLmlCd1J/v/RxKF/JoUlnTexyQA07YZFfDxK+TCFxLQS9TxGRrID6mjVUCQqb0+Tg==
X-YMail-OSG: kJo4TaMVM1nKuCwvIfkTEZU5BuacP_RYJf86p5Su6E8BdVno5AlfGFDDSxjHiz6
 oQIazd6lF4Yr7CsYmQKlqs8lQ4iItMjCFLIyoaqVYIy85tTjdwXm_1e6xfcVKSE7QHZ.aSSRDLa1
 LP25ijW6DjA_IztLHQRWxmMguk6JaM6yD45g91T026nty0EH1H4iovQImAvx2Npk1GMonOT44RZc
 Z3glr9X9ufjcjRWH..sO17B.X5WU_8qE4cnPf3abE2NqcV009ieBHxFmo2Q1GKOduwGCfVYBuKPJ
 BffakTDYgozZwyriekT0R9OWn8_x10wOIXK0VWmNA67uwHN5MtGRFQ6R0sJBOuZgz0BfHwp5N4wI
 89212pvNz.t8k7hnDLscD8HDDADCWofssg.tXo36DuYF5bTksTkaRU09rh55WjpN03iE0ZOg7D0B
 zkXUQqso4QqHGnLMo4J7trnU8sXMzfovavewkoQEJ2paayldpmsKpd.JNtArjkcqSpwSdB7aMMKX
 qHlODrBC6kTnhlNIofhF.D5Wu1rwNzr5j4_mXPyDRGIl3jEQXP2vLbwiXOc1IJ_F1tWDvWlVyFJk
 h7mnTgM2m1IgZ.FEQg8Bun__2bGl7X0JvrYJXzSSxP7AumfBxReAtHQxk8WhS29cXnj77FAq.wNa
 ZN.QSndqwKmf8vooRjAup2g_969Z7V5t9jfLrv92tdobYXNFxJv_Eg3wx6HGlOIGlPYCMZiYfTir
 fKqJg.VLnTiUt6uPD1p4tRTLFMF_JfXOXkgAw3gIbE7n6DbkgKKhb3H7qnrBHce8If8Z8cyw9.4R
 Qwxw9ByVyyvaDiMok_MbN275GQ6Wyff_W65S9_ASPmTLa5lK7CX8NAaLvOkiqcNcj.D5BC7hV3xV
 fyTZbtHTK4k9VksNap9aiFGrlh.FreTUiKD.HnVJSiTZFNd0L00gbR2p_KkwHBlW8xoqZThawLYS
 Nrn4ji44qUUTDuY.ea044Aoqx6GqSXPoyDVUx_t8cCMGS9I9oNmAL0CPIeJk2b3xrCxQU9bzQdh3
 .gmnJ5fErsjnTb_jsjSj2vEqMZxlCzTFKhJQmLiX0NZXjPZtDro5XzwIadSecTZUYrOZTcmoePT7
 .65Mc4gJZxnk73N2fXxvaBrgka55K_A.fdXfCTjbGppJBiHIpbvyGG9WsTkutJxd2PYQYBZY91VS
 8fcdyFkNHvbP6EIaIV5A7uEhp7KeDFZrl4i8QScE3gsPrEPdl5__sKQOUnjcnomr2qCusayeY_dG
 uJbr3eIuC.tqEvdtydx68IdCYDCs7Z04ibvUfR7GNXzwWa1m8W6iuHnGanosSz3LusWOGBmlzLV3
 S.gf0ophe11iodXeewNA_H2gfjdH4qE_gSt0ENsTe21rxCGq6TEu.tnJS.Weynzc3tyWDkaEygbA
 tq8exWeEg6vx6SE7q713cawnr5dSdrYv9.zvrQ8a1Kyh03hdEGJsdRghTUI92SPKOMZGaNGWEzyk
 hE01xyNx_Pllc_nHkgCGONsqOxrkDQC0cpQ_NsFXVyNA1zxuDOIQNkvw5UfK6xJzlpVjMWcMxtjA
 tZmL_H6.sFyOq073wMSfoHxGqFJUVadxrvZHOQlK_bgfOgbCNo3J3a7OPTOD8QlBbRxs75qw8vLz
 jwCX.f281zh0baf3EtPHt1Xaiai1661fRyzkmlGeWHak9pbpGqNU7uHFVe.QHnVjygaih69fsqgp
 eq8QKl5HNGW_vX22832rPOWp_tscO1.pK1oSWh1468bRxmeJS1pRjHgswCMHtRUkAaspzECczH37
 Fz0PJOQ_sKJ4QKMzdEvZmIge6OPZVFLSAxf32jIz0qIjCXW9WgCB5UxDGujiB51Ft6IfH67Vj7OV
 mhCjja6x.Iz2thEVFFLW5D7WkhJh_15kIp9YUaC3tJ3XCqKxqFStD9suTfdxNylzu3AD.PzHPStY
 jjGqI1wKdrKBb0tu7sdxj9xebJnlYxpaKGxzFvDtBf8QXuP26dKfp1YBrZtqdGlUaihSqVCpJH7F
 8275SM8XY4aSG8FJUQOiQdqjgxZ7nYfk.o_2q1XzRet6PhQVw15.AsOoE4wqpNrlEcT7Cp2baVj4
 moWOl8qD1HlDUS2Np_0G1OHhtcvzSUucWw_ffA1nCd2LTUF8a8FryHj__9IKZIUEiDxbHq9.ud5J
 qSzm_BQqT.IsJBt4sfw1vWVjd2zfZn.9atytgic0OY.oAb9axeNB6.3axfU00FH.7NdgxsnftUPk
 SpK5rEc4jV8lGoO8Eao4wIce2ZRHqKtxRdyuLZC5p3r5i6mQGiTg.Dg.OzkV_MZhRXUX_LDGVk8l
 Xmp8bwcIYcTQUu5nNkFc-
X-Sonic-MF: <jjvazha@yahoo.com>
X-Sonic-ID: 4afdadd5-c818-4082-8a9c-ce793e8c70d4
Received: from sonic.gate.mail.ne1.yahoo.com by sonic312.consmr.mail.sg3.yahoo.com with HTTP; Fri, 14 Mar 2025 15:11:12 +0000
Date: Fri, 14 Mar 2025 15:11:10 +0000 (UTC)
From: Jojan <jjvazha@yahoo.com>
To: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>, 
	"bovog@etipack.it" <bovog@etipack.it>
Message-ID: <1161514211.2601213.1741965070738@mail.yahoo.com>
In-Reply-To: <28085.1741964622292204270@lists.yoctoproject.org>
References: <294424950.2385492.1741880395495@mail.yahoo.com> <28085.1741964622292204270@lists.yoctoproject.org>
Subject: Re: [poky] Problem run bitbake on terminal in ubuntu #compiler
 #poky #yocto #bitbake
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_2601212_2121435434.1741965070737"
X-Mailer: WebService/1.1.23435 YMailNorrin
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 14 Mar 2025 15:11:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13569

------=_Part_2601212_2121435434.1741965070737
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Please read the link , I shared
It says "
Disable this restriction using a persistent setting by adding a new file (/=
etc/sysctl.d/60-apparmor-namespace.conf) with the following contents:
kernel.apparmor_restrict_unprivileged_userns=3D0"It says add a new file .
   On Friday, March 14, 2025 at 08:03:43 AM PDT, bovog via lists.yoctoproje=
ct.org <bovog=3Detipack.it@lists.yoctoproject.org> wrote: =20
=20
 Hi Jojan,Where I can find this file /etc/sysctl.d/60-apparmor-namespace.co=
nf ?=C2=A0Thanks
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.
View/Reply Online (#13568): https://lists.yoctoproject.org/g/poky/message/1=
3568
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
------=_Part_2601212_2121435434.1741965070737
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp12051982yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Please read the link , I sha=
red<br></div><div dir=3D"ltr" data-setdir=3D"false">It says "<div><p>Disabl=
e this restriction using a persistent setting by adding a new file (<code>/=
etc/sysctl.d/60-apparmor-namespace.conf</code>) with the following contents=
:</p>
<pre class=3D"ydp5dc81c2ecodeblock-buttons"><div class=3D"ydp5dc81c2ecodebl=
ock-button-wrapper"></div></pre><pre class=3D"ydp5dc81c2ecodeblock-buttons"=
><code class=3D"ydp5dc81c2elang-auto">kernel.apparmor_restrict_unprivileged=
_userns=3D0</code></pre></div>"</div>It says add a new file .</div><div cla=
ss=3D"ydp12051982yahoo-style-wrap" style=3D"font-family:Helvetica Neue, Hel=
vetica, Arial, sans-serif;font-size:16px;"><br></div><div id=3D"ydpd84f27fe=
yahoo_quoted_2473819305" class=3D"ydpd84f27feyahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                        On Friday, March 14, 2025 at 08:03:43 AM PDT, bovog=
 via lists.yoctoproject.org &lt;bovog=3Detipack.it@lists.yoctoproject.org&g=
t; wrote:
                    </div>
                    <div><br></div>
                    <div><br></div>
               =20
               =20
                <div><div id=3D"ydpd84f27feyiv2513978294"><div><div>Hi Joja=
n,</div>
<div>Where I can find this file <code>/etc/sysctl.d/60-apparmor-namespace.c=
onf</code> ?</div><div id=3D"ydpd84f27feyiv2513978294yqtfd61067" class=3D"y=
dpd84f27feyiv2513978294yqt0411500842">
<div>&nbsp;</div>
<div>Thanks</div>
</div></div></div><br>-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>Link=
s: You receive all messages sent to this group.<br>View/Reply Online (#1356=
8): <a href=3D"https://lists.yoctoproject.org/g/poky/message/13568" rel=3D"=
nofollow" target=3D"_blank">https://lists.yoctoproject.org/g/poky/message/1=
3568</a><br>Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/1=
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
------=_Part_2601212_2121435434.1741965070737--

