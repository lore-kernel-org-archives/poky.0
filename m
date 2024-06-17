Return-Path: <star@gmx.li>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A224C2BA15
	for <webhook@archiver.kernel.org>; Mon, 17 Jun 2024 13:13:46 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
 by mx.groups.io with SMTP id smtpd.web10.56442.1718630024790717065
 for <poky@lists.yoctoproject.org>;
 Mon, 17 Jun 2024 06:13:45 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: signature did not verify: crypto/rsa: verification error" header.i=star@gmx.li header.s=s31663417 header.b=V/AiaM0f;
 spf=pass (domain: gmx.li, ip: 212.227.15.18, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.li;
	s=s31663417; t=1718630022; x=1719234822; i=star@gmx.li;
	bh=H/1yasDHBt4mXu58chbn3egIBtFzbWMC9TPkeV3ktc4=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:From:Subject:
	 Content-Type:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=V/AiaM0frfr3opT/iw1hpkxveUpq/2DuRRdcgD7PTD01cg8YQJUZpHWixodd2MbQ
	 PtvlXGrJV82jfXfbuIQ3ww1fhANSEzBdDVAsogHaHjGIyLTPzMjr60z34Pe/IB7bR
	 hBHeY/qy9mUOC1YPJk4cwJsAYV7PxBtzpv66I/SWDJ9mBXSArbQ4/qKcxCL9pUkTV
	 NIiR7dbWQw0ZK2oGDsvZLkLADf3xlE3EmQa30ETTWdlKko5/jaV34EboZpSz8mIwv
	 FYiNvCLnKp/izAGSCvneUIkk67QzKXLn6tBJKpP9IAo65QEHr5FI8SRPr9yoS/ovm
	 jIEHAyR6xRgdjInI1A==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.3.21] ([84.185.233.65]) by mail.gmx.net (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MrQIv-1shCPB3JlX-00mlU4 for
 <poky@lists.yoctoproject.org>; Mon, 17 Jun 2024 15:13:42 +0200
Message-ID: <58e1f839-e931-4c26-a143-67c06cd059d3@gmx.li>
Date: Mon, 17 Jun 2024 15:13:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
From: star <star@gmx.li>
Subject: apply a patch to a complete meta-xxx - before using it (in kas)?
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:AbDCPXw2z1BtdV6fnRuiCg6ae9jUqytasZT7Abvx2Y7D+CuyNKK
 UPnaQ8dUh674Sqplgq7q3hyS0sQAaPShanAcJeXrqfPtcC+KeVkb7oEgysLPofN4/HrcP9Z
 rRoELTk4LrdgN2lOlO6WxmZWNogFdyiXA2qEYUsNojt3qfCSX1wGoDcxlW4hNOfnjm5r9G6
 5K2s1tOFyVW8iHMGBlM6A==
UI-OutboundReport: notjunk:1;M01:P0:arzGNcxkfro=;jJpZenTN4uM6Ho8pLJg1RMIQeDh
 LZryJZaU58G2yUj8vy5m+faSWRPUY3bG71cCfFQ5OPZ5OkMzG/6Oe2n435QQkBZXpdP/ILZZb
 W1SpiCUvYSPk/4uruLuE18OdpzaBKKDvvu/a/4dATbxFifhTu7wTNEuhRbf4S+CkiYdEkuqAs
 L02BP/hf3B+s1xURuH4+yOjxgGrVEh+pKmfd+k1T6EPYfA76YZKpk3sMkt7l23zwsTXayw0sT
 DFyNc25yiHmPWpug3NaxBPDb6pUCi1ZiVoa+xeP9NoPOdx7yAR4C0sFYzBQ2+UWUBM+DMmIIe
 IuGYYykKAgavV1zfWro08mTTH90sT73/TYC2m0hw/bJoWu4+KTyKY5ohdwDjIrQ7AcEm20k8F
 DcOYKv9YuezDk9xb1epjY1VNrCTEy/E1EAlKY4PT4f0QT+YEEHd6BVMYI40JMjOQInDkeOc0+
 7FFFpt/Exw0bXUjmycYa6jAo0jTttNohsgSki2yL24+mL80MXUu85DAy9bbRoUGyFvJD8dpx3
 E+13C7fZgw/ElcNCWK7Ng0VPpD0uTPt05ruooHcBacZ0fpcBIJgBguC+fLnz9kuAnnyISJrK/
 hfOov4UVZyshPdg3qtHiEs+YyEIVGP+A/eiaPg8JC7MQwSQ30bELI5pyzEdSRtVuAuP4Kr5da
 ap0Y/1T2RQvhQB0IzUWlDIjWxfHA3eQRTR5Z3QyEqla4hckSUGeWXe6SLeV2eNl2l2icUDpal
 cV7MQ51AXo8jSlclIO5D+0/RKkHGh8opzBT+13xvoFDgxaRnTsJxX6xPDMG8FQQRS3PUZGNfQ
 jcBAD2RsQ6NVLUKwZR7SKoJVZW6mdqDf0OSVKvV4PrYJU=
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 17 Jun 2024 13:13:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13371

I need a version of a meta-xxx repo that has new syntax ":" instead of
"_". Some other minor things have to be changed too (as compatibility
string)

I check that meta-xxx out by help of kas tool.
Do I have a chance to apply a patch right there once the meta-xxx has
been cloned? The kas docu confuses me a lot.
Guess I can't do it in Yocto, as my first bitbake command it will
complain about the syntax, so I can't "repair" that inside yocto.
Or am I wrong?

Best regards

