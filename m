Return-Path: <yann.cardaillac@balena.io>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56C08E83074
	for <webhook@archiver.kernel.org>; Tue,  3 Feb 2026 10:01:34 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.13229.1770112892259120281
 for <poky@lists.yoctoproject.org>;
 Tue, 03 Feb 2026 02:01:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@balena.io header.s=google header.b=bfIavWwI;
 spf=pass (domain: balena.io, ip: 209.85.218.52, mailfrom: yann.cardaillac@balena.io)
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b8e526081ceso112099366b.1
        for <poky@lists.yoctoproject.org>; Tue, 03 Feb 2026 02:01:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770112891; cv=none;
        d=google.com; s=arc-20240605;
        b=ewXjZr1I53pmpI7rMsTds1sQVfCk+sMHQYLs27TjRVw/vqw4IU500c8sosg91J6ZdY
         9awpR8YPMdiSQDb2EQ8YhXCTEDZBoWGyLI3sYrZeIaokZpbzUupvAWubNYSXOcnKCoeE
         VRqj0deryCfPtNvKrr8qbkFEmAeTLYPfju+Fg+Ilg9lXMS6rUpyioC97IEXwSe0IIDyB
         vtOmtzxfYSQFGAUXOIemkBweRZGThfw2lwp+fq9qSrNpMFjqLXsKb6bk6K1UAchh9aLu
         eFv8jbylqnFkwym75eF0DVbJEmdftyBKcqg2eYIqqvnZRmo9zDpbzFSWfNOYnLbl9rQB
         ksYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=vuYubHcfDK8+z70hYg+RDBHi8ggIaviu51jDuKHeBzI=;
        fh=4u+x8L6Y1WnB6MeOCPUHcJEh8YWl+pjx38PJu8QmVyk=;
        b=KVF8nnDMfOZ+bfpebcNngMkV6kpC+dM3/O2teMO1v/VJWu6Qq6TOdTY/U87DIUa8n8
         i//qbF7+AmMDTe4J1efhqiQzaR2fEIA3C8pRvsPkG8PNb5F7lwR/dHl9IsqIXYLV3s7i
         4frgofBP9hDqGFhkl37VXe7/idTcHxhF/5Rq1TIZrK0h6GJcN4kQu+IWSS+AbEQyWHer
         PlPfsZ9MInOV600FTksU7Q2RkPw19SY/bi3iRqD9LwgIsq0k/Ul7jdd1LFb9uZP+aWku
         plQvQJ1LfGfNzQeFpy//dl/lhFMWFVObXUPRA8G89gIFilha4A69flNfyMeuH/vBV6h3
         2E3w==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=balena.io; s=google; t=1770112891; x=1770717691; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vuYubHcfDK8+z70hYg+RDBHi8ggIaviu51jDuKHeBzI=;
        b=bfIavWwImUFkRtCo0UxwwzuvDhQelxFuitbjXD3AikYxV6gwKLIDEAHoqI4cKeAfJK
         yAqWbnbMJqqzUZ+le3+25R5qv+GjAy1cgJCYeWlUCuMAPdUOXHrGwEli9zWCXwzaTF4G
         PqKer+dpnGzytzK671czqo5jJ4XW0R13wHcDwi9D6tORsasFZ5GLDePSCyj+QxuDXbZF
         0nvj18aIJvHk8UOH8H1gGnIMzPLV6Vqt8qf79u2yH2z+Rn3ECpjYthwLvfztyHDaxE6d
         GtCUBtFGrWs0/w6h4bdhoWAIQFi9AqR1W8EUFHnntCd+ykxFP5obF6oaoRVNJ/d/3ZnF
         bpNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770112891; x=1770717691;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vuYubHcfDK8+z70hYg+RDBHi8ggIaviu51jDuKHeBzI=;
        b=J7EM0Ls/euN9SCYEEvPdDDr+4aYc7fmjQ/W4M0rWHvFnGGCrC5DLrlyD7QUeLO4iOv
         VV3UeTluwvTmn9PHq0Rbfjr/dC/xGh8i2uyEM2da61VSA/w2aca/SL7yAVDDj+ZslbOZ
         Bybv3f7fbVk3E70Yqy46OgSLSlvW8Q0LxtuZJYWSt4SFJANRDExC3J6VL9mlVBoJg2si
         Mtkab+Y+zwoAjf27CaQKj7v44KaFlwrNyCG+uODuZZfh3RNDWRUbJxqhelscKa9nNcBh
         2k1uLg0bG/4FziXQ2SpuTBSX80DkmF1T3ItZTT1BGfkeVJD1TjH40sYA465oTvyLvsDe
         1nbA==
X-Gm-Message-State: AOJu0YzhkzkiNH0gnrUCRtY9d9Qj3Jzal6lB7PXEMQJcTfFd2mCCdUuG
	ctKLBPRJsKE2gukLSGNYYswATw9VU7Uz6oEzvExM9N8+Lmfc9wEuiG2KIpqAJFntuVL8RPnChZC
	SKOGQ87OPfTC044jbwAsH6OI0ZaypKqaTqG4psvyYfqK63mt/HHpHF6Q=
X-Gm-Gg: AZuq6aIeIVMnQVqgkvIH/5TDm3Pk4Lmhh7X0srSn4o7L21qkYuAKsp3adkVgwY80yKW
	2Oon/f0MbFTYNOYaAnQ43PWQ9O7m+LDpDI7KuKWa44x7G+IoOFohi6jpOtqrXV/ut8sFW85shOM
	f4l8WaHZVr15/bNqq4tiyjqkAyVjj9LKoS/54sO44nnzyFeAr5Oe2KC4soCI6lwzlGLS6T+fstm
	c9nCqodZXrfKJO6pLv4YtpqEglEkpIXThlcAQVwC0RND3tGviBqXd3vz9dgYYnahHu6wg==
X-Received: by 2002:a17:907:9344:b0:b88:3877:d922 with SMTP id
 a640c23a62f3a-b8e837b93c3mr175467066b.10.1770112890384; Tue, 03 Feb 2026
 02:01:30 -0800 (PST)
MIME-Version: 1.0
References: <20260129160033.849551-1-yann.cardaillac@balena.io> <22ebb247-6752-42ef-b6fe-5f6abc211ae4@cherry.de>
In-Reply-To: <22ebb247-6752-42ef-b6fe-5f6abc211ae4@cherry.de>
From: Yann Cardaillac <yann.cardaillac@balena.io>
Date: Tue, 3 Feb 2026 11:01:19 +0100
X-Gm-Features: AZwV_QizQGQJcKEqWn2nvbRmM7K8RktCzA89Zd_j1HcRdb7xuwTkY_f_JdlDPJk
Message-ID: <CACuRGzCoMXxDmuy=RPu5C13aChZeWzuFXzuBSt3J1n26q4HLVw@mail.gmail.com>
Subject: Re: [poky] [PATCH] Clearing empty linux firmware packages
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000000b5ccb0649e886ce"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 03 Feb 2026 10:01:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13833

--0000000000000b5ccb0649e886ce
Content-Type: text/plain; charset="UTF-8"

Hello guys,

Thanks for the feedback!

Next version of the patch will be in the proper mailing list, this was on
Scarthgap.

Quentin, I've had an issue when trying to install empty packages in my
image, essentially doing so would fail the build. But that could be thanks
to local distro settings, idk and I'm happy with this.

From my point of view, we shouldn't be shipping and maintaining
empty packages as they will inevitably accumulate over time.

Now do you rather have only the fix for 12xx and 1251 or also the package
removal? I can do 2 commits as well so that you can cherry pick the one
you're interested in.

Bests regards,

Yann

--0000000000000b5ccb0649e886ce
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hello guys,</div><div><br></div><div=
>Thanks for the feedback!</div><div><br></div><div>Next version of the patc=
h will be in the proper mailing list, this was on Scarthgap.</div><div><br>=
</div><div>Quentin, I&#39;ve had an issue when trying to install empty pack=
ages in my image, essentially doing=C2=A0so would fail the build. But that =
could be thanks to local distro settings, idk and I&#39;m happy with this.<=
/div><div><br></div><div>From my point of view, we shouldn&#39;t be shippin=
g and maintaining empty=C2=A0packages as they will inevitably accumulate ov=
er time.</div><div><br></div><div>Now do you rather have only the fix for 1=
2xx and 1251 or also the package removal? I can do 2 commits as well so tha=
t you can cherry pick the one you&#39;re interested in.</div><div><br></div=
>Bests regards,</div><div dir=3D"ltr"><br></div><div>Yann</div></div>

--0000000000000b5ccb0649e886ce--

