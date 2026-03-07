Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 806D6F55111
	for <webhook@archiver.kernel.org>; Sat,  7 Mar 2026 22:23:46 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.18606.1772922222916777008
 for <poky@lists.yoctoproject.org>;
 Sat, 07 Mar 2026 14:23:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=HexbbpoB;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4806cc07ce7so120347765e9.1
        for <poky@lists.yoctoproject.org>; Sat, 07 Mar 2026 14:23:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1772922221; x=1773527021; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MaPopsnRKvX5qC1e9/mpDs6iaXShILAe7HOu7JlNEcg=;
        b=HexbbpoBkixggVqld5yFJ84X6Ba1N8m9oIKdONpR2sqdsmkaiiWLjugOmXjjpzudRK
         4tHG3S1CT6CmETGqiz1LsTVDP97bWvTKe1HjzfU9Bj9tuSg35mG45MQCm1+s0F2so4RM
         85uTpq7eyXrMyAIXZBPntAPmPOhodjgcSQK34=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772922221; x=1773527021;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MaPopsnRKvX5qC1e9/mpDs6iaXShILAe7HOu7JlNEcg=;
        b=e8cr02gBgVRIEfIisUk8DvSm55WMx2gQ+GP8yafBuJhZNRjB9N6lG2WNVgYjmFD1+g
         GRVgfbhZA4r7rvX2Z+XZWIzGVS8OhwgZUHHp4CQu5NMyeJPZ5yYCeqmOGMp7vQ4a10pX
         BbnolK39EUDOor0OnlLO9KHPyMY9XL15y5oaCE4a2Rq+R5kW6yqVHOhcgRCKuD1OArSD
         q48USKLvOhfe3QTL5D15Q1LvqLrR30iHjIv5/CGeQSASe5unSm54kSaEAwHDVWVLz1ch
         hB/HHbxcPg06Tn08ocNS4uHk8QWtUQl1gGTq/7Wqz5s3IVPjvltzzqsR71kKeyRTfxAD
         /pjg==
X-Gm-Message-State: AOJu0YywRPO0wpiNhLiKUkk7OYNT6HZITFrKRrCJNoY05n7ygr2z6pdd
	O1poQR+O3Gs4HFK3k32DlbOeH3JICouRKhvQdxGVQJ0FGWdkqPqnk99DTDHU0mEr5eU=
X-Gm-Gg: ATEYQzx2CgjpQerbe265o7GXvre4cwE8o0D2LH6/Rc79bVRMAGz+ghn4Zn3cj/iCvhw
	dCX34I13EchNChM9C3N58XcQTtFkVNrT9AP2RZCR4R5N8a2mCCCQHxxgTHf/klc3cMCLZGHLSmU
	jFvYhYaFN6vFe2iUFdUPyQ4h3k2aeqBL0rkUFwvhh9ANB+osM8IHc5lg0GdM1/pV9RnHmG4D2iG
	Dryrz1FBD5B1eCaRBBzH3Q57SH0qm952OTojPETtHxY1uwrb6Y3rhql/VLRrXwATpfkDoZa5Vj7
	beWLOQQKjjT7O1zPbouL4MyF8NLnLLmxnvcJ1LwC9+D5+MCR2JGQzMDQcOfi021ABFEsl2p2lwh
	vFcZFwuDSnY9VLpzs6rtsuoPJdD2PPsHakb5oWRYeGMA0kzFwh6Q/JRzfF0392iWEtF0jbil2SJ
	MEYDCQ5cLWTHk1FWOFuvSChtmBN8IDYawZdoDVUWAdVA/QtmtIeZeUt2hs5dUOzCbA8GXkUGO4a
	MZ9c9iwnHhnaD8=
X-Received: by 2002:a05:600c:a41:b0:485:2c61:9459 with SMTP id 5b1f17b1804b1-4852c61bcd8mr67734525e9.8.1772922220984;
        Sat, 07 Mar 2026 14:23:40 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:d4ce:7ad5:f57d:1a69? ([2001:8b0:aba:5f3c:d4ce:7ad5:f57d:1a69])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dae46353sm15540952f8f.33.2026.03.07.14.23.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Mar 2026 14:23:40 -0800 (PST)
Message-ID: <d1047820faf4180c123c0320c88a7804acfaddb4.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH v2 2/2] oeqa runtime parselogs: ignore KV260 USB
 error on genericarm64
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mikko Rapeli <mikko.rapeli@linaro.org>
Cc: poky@lists.yoctoproject.org
Date: Sat, 07 Mar 2026 22:23:38 +0000
In-Reply-To: <aarcN0TWNPU42PZb@nuoska>
References: <20260306093316.7018-1-mikko.rapeli@linaro.org>
	 <20260306093316.7018-3-mikko.rapeli@linaro.org>
	 <f0efec2c7ec34b40379153e3d871d76044bd4243.camel@linuxfoundation.org>
	 <aarcN0TWNPU42PZb@nuoska>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.0-1ubuntu0.1 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sat, 07 Mar 2026 22:23:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13853

On Fri, 2026-03-06 at 15:52 +0200, Mikko Rapeli wrote:
> Hi,
>=20
> On Fri, Mar 06, 2026 at 12:17:32PM +0000, Richard Purdie wrote:
> > On Fri, 2026-03-06 at 11:33 +0200, Mikko Rapeli via lists.yoctoproject.=
org wrote:
> > > On AMD KV260 the USB 1-1 driver sometimes throws this new warning at =
boot but
> > > continues and USB stack works so ignore the error:
> > >=20
> > > usb 1-1: device descriptor read/64, error -71
> > > hub 1-1:1.0: USB hub found
> > > hub 1-1:1.0: 5 ports detected
> > > usb 2-1: new SuperSpeed USB device number 2 using xhci-hcd
> > > hub 2-1:1.0: USB hub found
> > > hub 2-1:1.0: 4 ports detected
> > >=20
> > > https://lists.yoctoproject.org/g/automated-testing/message/1525
> > >=20
> > > Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> >=20
> > I'm sure people will tell me I should just merge these and we move on.
> >=20
> > Before I do that, I want to be really clear that this approach really
> > isn't great. It amounts to "oh, we have errors we don't even understand
> > but we'll just ignore them and hope for the best". Should we even
> > bother with the test if we're just going to ignore anything it shows
> > up?
> >=20
> > I appreciate Mikko can't go and fight the world on issues like this and
> > this isn't directed at him, it is just a general frustration with the
> > "quality" of where software seems to be going.
> >=20
> > Where do we draw the line if we're just going to ignore any error?
>=20
> I think the maintainers needs to decide.
>=20
> I maintain yocto genericarm64 testing on real target HW like the AMD KV26=
0 and thus
> I've decided that I accept these workarounds. These changes do not impact
> other SW or maintainers in meta-yocto git repo so I think applying the co=
mmit
> is safe.
>=20
> The parselogs test is really good, too good infact, in finding issues com=
ing from DUT HW,
> lab setup with DUT, firmware, kernel and rest of the high level yocto
> based OS image. Since my maintenance time is limited I need to
> decide which issues to fix and which to just accept. It is ok to challeng=
e my
> decisions and especially help with fixing the actual root causes. Any HW =
vendors,
> please step in to help!
>=20
> I have been able to fix DUT HW setup issues for example by adding dummy H=
DMI
> adapters so that Xorg startup completes, fix firmware and kernel issues f=
or
> some of the devices like Xorg 16bpp graphics output, and fix higher level
> oddities like systemd udev breakages so I do some analysis and try fix is=
sues
> before adding these workarounds.

That is good to know, I knew you'd fixed some things but I am glad it
it doesn't have a totally bad reputation!

> Another aspect is the reuse of oeqa runtime tests in other environments a=
nd
> genericarm64 showing an example how to do that in the imperfect world. I
> would like to see more of this since they are actually pretty good basis =
for
> doing CI and on target testing. But that testing environment is complex a=
nd
> target HW and firmware by definition unstable since they are under develo=
pment,
> even after vendors ship the HW and provide the BSP SW adaptations. Thus
> these layer specific ignore lists are likely needed in custom
> environments to get basic set of tests working and to stop new issues fro=
m popping
> up, which is actually really important. It is important to get stable tes=
ting results
> and it is important to find bugs and fixes for them. The parselogs findin=
gs are
> sometimes rare oddities but sadly common with real HW, firmware and yocto=
 based OSes.
> That world is never perfect black and white, the gray zone is quite thick=
. That
> is where parselogs ignore lists fit, into the gray zone when someone need=
s make
> something imperfect but usable to produce reliable pass or fail results i=
n testing.

The higher level software tests struggle with many of the same issues.
We're slowly winning there but it has taken a lot to get to where we
are. Definitely worthwhile in the long run though.

Cheers,

Richard


