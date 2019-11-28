Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.1920.1574964330652924385
 for <poky@lists.yoctoproject.org>;
 Thu, 28 Nov 2019 10:05:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@srin-me.20150623.gappssmtp.com header.s=20150623 header.b=1rLUBP2/;
 spf=none, err=SPF record not found (domain: srin.me, ip: 140.211.169.56, mailfrom: s@srin.me)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 384A9E010A5; Thu, 28 Nov 2019 10:05:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.128.41 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32B8AE0085D
	for <poky@yoctoproject.org>; Thu, 28 Nov 2019 10:05:28 -0800 (PST)
Received: by mail-wm1-f41.google.com with SMTP id y5so12538245wmi.5
        for <poky@yoctoproject.org>; Thu, 28 Nov 2019 10:05:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=srin-me.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=RAFI/eVEIAOXTgcfsDlPA2NYwSW2dlgaH7BmP73Hheg=;
        b=1rLUBP2/QP1H2kKVRT+Scw5y/ZcBNZSlr4TtDyW9j8fnk/mBk/6pDsd7oEVWafcuLr
         VkNJzqF3YquuSBo3YOTA12D/S+CHXFrF2cojpVveVtucnYwMrrXgJT3AE6S7QppdqOwK
         o6oLvtoIvyx0AaxMoY68bZswAk6AzYlOgpYHnf20SIwgNMiOk8We9ysIKoc6eBwE3Td1
         5vjPeLs//y5aO2xOuqHt6SQo/+qtuo+nIaBwhAVZbCQ4YFvropnaLq6ZBgBIiTJc1AIS
         HEQ6k0yVVybixatFaqyIyI+ZzY46df1pEvB5mbDm7e+t3mUBFFvCJVoALeMoexvBzbwj
         S7mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=RAFI/eVEIAOXTgcfsDlPA2NYwSW2dlgaH7BmP73Hheg=;
        b=HcUOBFs1aSixz5SybZXpn5vrWCCL+Th+xfzTqckBVhCfX7taZbUogL91tlZcGc5z5A
         1zRIeg78JZoAdwM0EoPEkFgAqOUdSUq2e6dMO4dthA66sTtWyXb31kzdGPZyk//w97tz
         SaNAefbK9P2iagEi8N6sChIYZSV9/sE3GMdA1d4EqsFRXIDs98S/ZErNBqWJ82ub+L8K
         Up8MnFOelgLIpbkb7bIEyrE16TnMWvD8yxM3rJB6K1SQIMMfiX8XkRnjnV491BxlD+7x
         gxdEgThMXQZgtIvnUwKz9VKMlynugk0kzr6WW/NzBROdqQ62DEjbBuRogWj/8VVxqla2
         aSjg==
X-Gm-Message-State: APjAAAX6KRZq7TbTFTxOSQxGc5iK0PeNJ06Yufe8Mg+VGW5KX7bz53u8
	UOuvuQQgBeHUVpq8LzqSBev4hCNIt/PFxOw0Zbg1gzdLO2wuWw==
X-Google-Smtp-Source: APXvYqxx1SVoZAySpYcVH/wZnthq1gVjsfUr/w1Dppf2cHHXj6dWAisJaApPYN49WGLWZVOIuZmdQ3dDLxR4r5y/eoc=
X-Received: by 2002:a1c:9e4c:: with SMTP id h73mr11231597wme.1.1574964326796;
 Thu, 28 Nov 2019 10:05:26 -0800 (PST)
MIME-Version: 1.0
From: "R Srinivasan" <s@srin.me>
Date: Thu, 28 Nov 2019 13:05:02 -0500
Message-ID: <CAGNn0hbVwv3wQ9iog-MWZCF0z5N76Djnaz-DUwscv2CweATt_w@mail.gmail.com>
Subject: ANN: rollpwd - a dynamic password generator
To: poky@yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000003bacae05986bf506"

--0000000000003bacae05986bf506
Content-Type: text/plain; charset="UTF-8"

all

another practical and useful tool for the yocto based device I worked on;
 targeting embedded linux devices at one end and a conventional
windows/linux platform in the other. Hoping it will be useful by itself or
as an example projectlet:

https://github.com/RajaSrinivasan/rollpwd.git

Best, Srinivasan

--0000000000003bacae05986bf506
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><span style=3D"font-size:13px">all</span>=
<div style=3D"margin:0px;padding:0px;border:0px;font-size:13px"><br></div><=
div style=3D"margin:0px;padding:0px;border:0px;font-size:13px">another prac=
tical and useful tool for the yocto based device I worked on; =C2=A0targeti=
ng embedded linux devices at one end and a conventional windows/linux platf=
orm in the other. Hoping it will be useful by itself or as an example proje=
ctlet:</div><div style=3D"margin:0px;padding:0px;border:0px;font-size:13px"=
><br></div><div style=3D"margin:0px;padding:0px;border:0px;font-size:13px">=
<a href=3D"https://github.com/RajaSrinivasan/rollpwd.git">https://github.co=
m/RajaSrinivasan/rollpwd.git</a><br></div><div style=3D"margin:0px;padding:=
0px;border:0px;font-size:13px"><br></div><div style=3D"margin:0px;padding:0=
px;border:0px;font-size:13px">Best, Srinivasan</div></div></div>

--0000000000003bacae05986bf506--
