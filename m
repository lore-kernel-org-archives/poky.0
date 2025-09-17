Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 068D3CAC5A0
	for <webhook@archiver.kernel.org>; Wed, 17 Sep 2025 15:43:24 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web11.26969.1758123796765446791
 for <poky@lists.yoctoproject.org>;
 Wed, 17 Sep 2025 08:43:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YPelpmMf;
 spf=pass (domain: gmail.com, ip: 209.85.167.45, mailfrom: martin.jansa@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-55f753ec672so7531210e87.2
        for <poky@lists.yoctoproject.org>; Wed, 17 Sep 2025 08:43:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758123795; x=1758728595; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=89vI5OociPPGIG/qyYI3SvHUJk1NOmUZIHaBHawEzT8=;
        b=YPelpmMfV3F+GT1rwUFpehhMXIJhDjveTAnvUAh/KZ1Y4J8NksfRV2BRPfkcG1iILj
         RPa9OBmkgbj8T9qbKHUklnnUobEOCxpkmBfeB/ENw6k2O++egvqTVv4MuW9oB2FNOLWO
         Fvy2YUL8+AO5nOCi0qhyoCVZHyF8uO7Px6eas5Pvhir8Rv8dqvuTpuoNP/ckVDv6VUIY
         CON7DZB7m7yp2WzDhvE4STPIn+p4kuh77DkBaX8AWeskMIR1Sjgq08f9FnwNtcyRJoAd
         TAPEEi5PU5HidDWD1OQZIUID2ZrffF7u7WaUvLXDurhNqCRVs2MXHJXsa5UG9+bdxEBp
         bYcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758123795; x=1758728595;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=89vI5OociPPGIG/qyYI3SvHUJk1NOmUZIHaBHawEzT8=;
        b=C5VDR2RGMNvZY/Vod1jDzaEMJlJg8tnqpocTagrs/CelLVD0HAucrLulUQ3mNOAnu6
         9Z69/zTmye7lxHpi4TuChop3wJpKt04AicOGZwQyB3/ZnbAs4SSaWghLR+eUH4CaXCrL
         eUWS23L0kV8GZErRxhor+yitOzkYPbdOnAUrUNdU9IyUaXhp7OkedTVyK6V3cqAGyz/k
         4LgnPW3CHUWcipP2/03k6rfYdRzvtTh0G7TM/q2cgWPVKitiaTPyTHoUJPJfvxkg8ncn
         7D+8LYLeQ1bqqFLAq3G7xJycZgBtcfyaOboGPqzW+UPlpeXPD/00VKPEXMyYZlvrnV9G
         vnVA==
X-Gm-Message-State: AOJu0YwrlISB6rUn8TuI6PEO1zOw6ei06EmxY3po3JdTMWLXlkV/HtzI
	4AZM+ZkxwzXiHVUvPo/dCzdkNeRwRwmbGwWXmR19M62xSElSbP5SHcaig85sGL1Y7JpwRF3Sk6a
	gQQ/E7OVNfh/9gx75GQ3OWWh/aOHzVac=
X-Gm-Gg: ASbGncu9HpaLjfMD/8tFChNLnDboSPGsMRpQtsRH1ERjBsfpDXhU6nL+dAsT2P7z0be
	PyOpCuiKvIL/6Dpm2r/5TrmOyWYxD0AroqybzZUfcHque89jb9qGFudq23NDXdW/QFzjK9OTGcY
	wZ4h/IAtuL1XqcJZAVGcc50UsqG/DH1lXWbpk4N3SHzDr8STFcOs5CNqgqn6fa74dsY2w9PzyWN
	tindEw5RX28o4fk3rvjTZ6C4QBTGroRnZK/rNmgQcWuTMBd1IE4
X-Google-Smtp-Source: AGHT+IG+cVhhrjBnTniu4ioJjSiRksN7E4ELj6+nBuo42YMca+ZNhZTrrmET4XmdalU0B7+5mNu2Z0B54p8lj123qL4=
X-Received: by 2002:a05:6512:b85:b0:55f:48ab:a2ca with SMTP id
 2adb3069b0e04-577978d8525mr726034e87.6.1758123794310; Wed, 17 Sep 2025
 08:43:14 -0700 (PDT)
MIME-Version: 1.0
References: <EHVw.1758123487737695311.tSlM@lists.yoctoproject.org>
In-Reply-To: <EHVw.1758123487737695311.tSlM@lists.yoctoproject.org>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Wed, 17 Sep 2025 17:43:01 +0200
X-Gm-Features: AS18NWCLudyAbQEF1NvEDxtFoAYvXJyZAbNJsC4pBBNqr1LdX_wxsODboZS_Bmc
Message-ID: <CA+chaQdYkN4+7xAmcL4d+8vRC3B7x7AG7oPkR4d9_wa+rrfk7g@mail.gmail.com>
Subject: Re: [poky] meta-tensorflow scarthgap commit sha change
To: quic_sbanerje@quicinc.com
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000003b2bd3063f0118c8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 17 Sep 2025 15:43:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13748

--0000000000003b2bd3063f0118c8
Content-Type: text/plain; charset="UTF-8"

Unfortunately yes see
https://lists.yoctoproject.org/g/yocto-patches/message/2202

On Wed, 17 Sept 2025, 17:38 Sourabh Banerjee (QUIC) via
lists.yoctoproject.org, <quic_sbanerje=quicinc.com@lists.yoctoproject.org>
wrote:

> Hello all,
>
> The meta-tensorflow, scarthgap branch seems to have undergone git commit
> history rewrite!!
>
> Earlier this commit "tensorflow.inc: add write permission to 2 more
> directories"
> SHA was c382865 now it seems to have change to 1a0c74c.
>
> Is anyone else observing this issue?
>
> Thanks.
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13747):
> https://lists.yoctoproject.org/g/poky/message/13747
> Mute This Topic: https://lists.yoctoproject.org/mt/115293519/3617156
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
> martin.jansa@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000003b2bd3063f0118c8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Unfortunately yes see <a href=3D"https://lists.yoctoproje=
ct.org/g/yocto-patches/message/2202">https://lists.yoctoproject.org/g/yocto=
-patches/message/2202</a></div><br><div class=3D"gmail_quote gmail_quote_co=
ntainer"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 17 Sept 2025, 17:38 =
Sourabh Banerjee (QUIC) via <a href=3D"http://lists.yoctoproject.org">lists=
.yoctoproject.org</a>, &lt;quic_sbanerje=3D<a href=3D"mailto:quicinc.com@li=
sts.yoctoproject.org">quicinc.com@lists.yoctoproject.org</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">Hello all,<br>
<br>
The meta-tensorflow, scarthgap branch seems to have undergone git commit hi=
story rewrite!!<br>
<br>
Earlier this commit &quot;tensorflow.inc: add write permission to 2 more di=
rectories&quot;<br>
SHA was c382865 now it seems to have change to 1a0c74c.<br>
<br>
Is anyone else observing this issue?<br>
<br>
Thanks.<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#13747): <a href=3D"https://lists.yoctoproject.org/g/pok=
y/message/13747" rel=3D"noreferrer noreferrer" target=3D"_blank">https://li=
sts.yoctoproject.org/g/poky/message/13747</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/115293519/361=
7156" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/mt/115293519/3617156</a><br>
Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">poky+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" rel=3D=
"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/=
poky/unsub</a> [<a href=3D"mailto:martin.jansa@gmail.com" target=3D"_blank"=
 rel=3D"noreferrer">martin.jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000003b2bd3063f0118c8--

