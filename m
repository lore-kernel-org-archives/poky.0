Return-Path: <star@gmx.li>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C955BD12695
	for <webhook@archiver.kernel.org>; Tue,  5 Nov 2024 12:01:48 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by mx.groups.io with SMTP id smtpd.web10.16199.1730808098066790664
 for <poky@lists.yoctoproject.org>;
 Tue, 05 Nov 2024 04:01:38 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: signature did not verify: crypto/rsa: verification error" header.i=star@gmx.li header.s=s31663417 header.b=fDY7wVaO;
 spf=pass (domain: gmx.li, ip: 212.227.15.19, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.li;
	s=s31663417; t=1730808096; x=1731412896; i=star@gmx.li;
	bh=LW3554OCMZrUIjAiZrnK+thK4lion46W5texql0Jzhc=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=fDY7wVaOgNpdKVtL67oCcALGS0zC/E5lTpyTGDOPMo3CsNvkS0vOGQvPPHZlhYBb
	 IM8a2MIyAhCwWFK6+vR0TjNfZ4dHb1lyuwUlBzDJMBpB2xEaPYcNElkFy92jipvon
	 JpAp0yUwhRDtVH1S+Z1k2eYueSDyJlF/StAuNNEMG33Q3Zfru2vFvfqQxUH0/raWK
	 eTt46guqaj/Nm2RdUrdnQHQ/D76PhvxDSlrGcKe2eTo40Hl40e2iwel253lFNK0UW
	 EjCbsW1P3pyexAm2TrVj8Z47dtHPOGiH6E2sd8EFCt4+Z9bs6u8eC/uf7bRgbNcu6
	 r8z6KKVnwXiJffmdxA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.3.21] ([217.225.88.88]) by mail.gmx.net (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MRmfo-1tERKc21Qg-00YyLw for
 <poky@lists.yoctoproject.org>; Tue, 05 Nov 2024 13:01:36 +0100
Message-ID: <47da8641-7a74-4d64-afc4-84c81ba713b0@gmx.li>
Date: Tue, 5 Nov 2024 13:01:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [poky] One recipe for fetch a bigger repo, multiple recipes to
 build parts of it
To: poky@lists.yoctoproject.org
References: <9d150f03-34b6-4a6e-93d9-2530f12ba3e4@gmx.li>
 <CANNYZj_i=Wg_S2dXNRMUVZ0v0AzkWRwrNASBSxHMoe9SqDv4zQ@mail.gmail.com>
Content-Language: en-US
From: Arno Steffens <star@gmx.li>
In-Reply-To: <CANNYZj_i=Wg_S2dXNRMUVZ0v0AzkWRwrNASBSxHMoe9SqDv4zQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:VRE69YKByaCpGBLKZ2OYJUo8CW/tfZ5OsvP6RXns9HaGVKFIhjx
 um2lwt1JXyMm8q9TQBZyVvsl6sc6ajd/0ledDXbBpoLhVzJ9WY98WNARtaCZ1FrnvpslwAM
 /1706E9KPUTJ1w8GaU4VHZeDU4zLL4eLvYTFzrl+inAAHNEqacABOekZF+6JAqMrwaspy8M
 h/VG2zZ6FzD5rlPPghDWg==
UI-OutboundReport: notjunk:1;M01:P0:GyU1NmpN9OY=;e+2zUz3itowKRELGRQGep7nkexJ
 WLq/pWz/IKsfAr38A6oNGzXNmAq2sEAvCl/HJ2wKctll0jrDxuNK2UZHMj4fC8fTWPsrN7QAX
 W/sRNvYzq9ey2b65N/yin2BijsbG5BdHDlJ94wcUpiFBme2EijvrZEbooVE3/EYr9HwZca8Rr
 7ONYxWygfoZ//DeszjxabVEH08EmNm3UHav2LMEKk4aLpZ/3QpNmV8wIGViCU29/Zzi5evZGn
 ZY18GJRsO76DPQIDyf5pbN1wzCo/YCMyMpC4ULNVEThUeg88DucdDsiCsfmYSJDQu2b1M57NN
 nvASeG5W4iS4m8O8AVmI3JcTW5ydJIZbxIQTPX955DRGYqKLaj7DDj0cHtm6NZXGkTZur9CzC
 0RfceZbtJoaGmbVCvf6B/x43k+O1ZmO4zn8S9VDA1ns7gGGGo7pq0piYiV0vZ85s5erLJtYoA
 ONLAkoJMGCbyGYk1+7wDcOYU8+NbtySvw4K7SmMZk7Kh8v+De0/BFZTNNE/MMU3Nv4GaKwzxI
 ygk3Fe1tMA7bqq4xWRnMkTtTIa4VKMSn/ML+LLR4wmWS9/3lKvQm1Wrr36gVaFuoogSeW4JK/
 yG39NHcQDQlD+IQ0v0lvmXhrECw2UKRcY73+aoeJnBs9Tn0xAPWYT+/AakB4mNeaRwLEU8V4M
 sshkOoQAczE360eVKot0ai8UN/cDexTZI3abgQ9+UJP2SdsxuasZHqM3a7yT1UMXnnInTMCWq
 4FFYrORcJ54hRg1Ok/IojAZJ21JxhZG5s092h11uO81qbPSFX0wVGN7EDIpJ+gwE3ZBxbyVqv
 lsSrobJg1RbH6QFqf3q/L48Q==
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 05 Nov 2024 12:01:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13475

Hi Alex,
well download may indeed happened just once, but isn't in each recipe
the git folder with it's complete content?
Maybe I described it misleading:
So it is not about download, but about the amount of storage needed for
each recipe. Assuming 10 recipes using same main repo, in each of the
../build/tmp/<recipe-name>/<tag>+gitAUTOINC+<git-hash>/git
I see the full checked out repo.
Best regards,




On 11/5/24 12:44, Alexander Kanavin via lists.yoctoproject.org wrote:
> If SRC_URI is the same in multiple recipes then it will be cloned just
> once and then reused from the download folder. Not sure what=E2=80=99s e=
xactly
> happening on your side, you need to demonstrate how that is not working,
> and where mutiple clones are happening.
>
> Alex
>
> On Tue 5. Nov 2024 at 11.51, Steve via lists.yoctoproject.org <http://
> lists.yoctoproject.org> <star=3Dgmx.li@lists.yoctoproject.org
> <mailto:gmx.li@lists.yoctoproject.org>> wrote:
>
>     Hello,
>
>     Do have a bigger repo with submodules. Before each submodule gets it=
s
>     tag - so I did have mutliple recipes and need to fetch only parts.
>
>     Now there is just one(!) tag for the main repo. Anyhow it was a pain=
 to
>     clone that repo and submodules multiple times.
>     So I think about one recipe for just fetching data and multiple reci=
pes
>     that (depend on download-recipe)=C2=A0 work on the fetched data to
>     compile parts?
>
>     Problem is, that I have a huge git repo (with submodules / gitsm) an=
d
>     the download is via gitsm with branch and tag. Than the download fol=
der
>     is some recipe-name/<tag>+gitAUTOINC+<git-hash> and other recipes ca=
n't
>     know that hash to access this folder.
>
>     What is a solution for this? I think about creating a link to the le=
vel
>     below - but that doesn't sound save or clever. What would your appro=
ach
>
>     Thanks,
>     Arno
>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13474): https://lists.yoctoproject.org/g/poky/messag=
e/13474
> Mute This Topic: https://lists.yoctoproject.org/mt/109403571/3618575
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [star@gmx.li]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


