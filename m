Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B163CCF9F8
	for <webhook@archiver.kernel.org>; Fri,  7 Nov 2025 17:05:34 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.4265.1762535128224723384
 for <poky@lists.yoctoproject.org>;
 Fri, 07 Nov 2025 09:05:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=IH5bMypv;
 spf=pass (domain: gmail.com, ip: 209.85.219.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-88033f09ffeso10599696d6.1
        for <poky@lists.yoctoproject.org>; Fri, 07 Nov 2025 09:05:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762535127; x=1763139927; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ISNsLDEOe+DBkfFNXoEkOzhKTHt3AHe9b+pzuUFJIKo=;
        b=IH5bMypvZM7XV0HkCoPTRsGYln1qGVzWBmIOIJu2KYHfTZisKQlLHizcdV063sCtjk
         oQR858oJDMGt7kTegt5wYiz5mPxSOeL+CDIdQWGDiUHhZMWBP0Br8D4zBUv6BkY/UI/Z
         gsJID98q4cjbdQ6+uhRj3RdbIZ2WdOcHjuXsdlALI7KtoBCKy2eds1czAJ5oLubXRm74
         7PGzGycVjArXMG2Njbl/wP0kTe4FTPUl8GjkCqZ+NcH7AV6To9KTwE1jF2/gHdYwC+ij
         XKroyIxQAGeHxNs2MVSPEVhXcQkh4ZZXJm1MGKkzyNRSGK2OzEa6H/PhY2QDCVubGM/+
         iHRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762535127; x=1763139927;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ISNsLDEOe+DBkfFNXoEkOzhKTHt3AHe9b+pzuUFJIKo=;
        b=Xw5VRDEyGcTWQoX1SOb+2jSjeRNKpOqfs5bVkc3NiwzrMMlIRe08fmyBTNGE1a2ZVe
         1bqKnhRGjlyJX29TKDR8VvzxES8mBTfh3Ut6hOKTiDHi04T6VlPF38abgwAfc4QIh3st
         dpAlwaIdZb+FC5ncJ73zQTpUQEh0FOPA0kywLZqNxp92P6pmd6lOb5UYxO441GacladT
         ovcJhjJM1pMPRhBnNjRILreT5ch++nRmrdDmn2JNw1+H/NvvkylKxA/maGOKL+krdLyM
         C+SDuVHecALGxPXdQNFaaOgs7wyWzArD+Spabh5ttViTD5trbQ5uftkQ44fGMNh2+qrF
         tzdg==
X-Forwarded-Encrypted: i=1; AJvYcCWByLhy+usYRdIiEnlgaIFoFu9kRQorGC4QUxXqnSduMSF8QTOIrcHuN1iyjePv1irSeVKz@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzJapSxe6KsuUniF3h7PV+YrU19ovkF7WiRprO5LyMUbpb8zXT1
	RdTrzqo7SvcuDPr8FPWUrAhlopE8+7AUBlG0Y3bR0fM9yMJg9yhBItJ0LF2n4wjT2O/FXGtZCJx
	E/BfNCFNGpxT5tEG2EYGH7DLIUceKPCw=
X-Gm-Gg: ASbGncujbNtyk1To6IL5GEJTENrAJWphlxtIAwOldZ88d30lFr77bo9BWJ7WN/aK+4n
	giNtKVKRd0UpMk0lrkVPM3xrN9ZO32gxpjjGqsin7ug+EFPldaBJarT1TmafR9ZYDfB2NpsFi0K
	JGfhr80fSRQkcFVKd290+eeGPNmchQXXHLg3GilZiisLwBbkPpdHWm6jYzEUZjpzS7uUJWS94iz
	1ULIp9A55GXIDZpxKKXCVXBK7zhCze0EGKwd1l2dqkkxiHijNsYVS/s+3SFcR62xfjlThdCU45d
	c7WYvewUJej8y2cB8Clx/gfvSTZ9
X-Google-Smtp-Source: AGHT+IG8A0zZ9OznXJdHQUX7DvZggaK8PlPfceQrD6mU1/doyQ9FoGGlTab3k84+xeuiLVUyMtmHPj/Lhd8Aockn+/k=
X-Received: by 2002:ad4:5ae1:0:b0:876:403e:a15d with SMTP id
 6a1803df08f44-88174830df2mr53044076d6.26.1762535127078; Fri, 07 Nov 2025
 09:05:27 -0800 (PST)
MIME-Version: 1.0
References: <20251107133459.1667071-1-richard.purdie@linuxfoundation.org>
 <DE2KVT4Y3PZ6.322SIT5UH6JJ7@bootlin.com> <CANNYZj_ssKfHN7_2Zy2A4dJLrkTfSTjWSTBjJLtPYcD_DZxsRw@mail.gmail.com>
 <713f65c4bbed680412d42e1d4e5b1718e5fa33ac.camel@linuxfoundation.org>
In-Reply-To: <713f65c4bbed680412d42e1d4e5b1718e5fa33ac.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 7 Nov 2025 18:05:16 +0100
X-Gm-Features: AWmQ_bmwv5L1AUWWxcvAAFtWnss_HHB-EyEukuCC-NwxZ8bz-6_fNLMPPVluc_U
Message-ID: <CANNYZj8-mbtmU5dbHBPG=v+L35Dz80nTDuGT06uCbH4QanwPuQ@mail.gmail.com>
Subject: Re: [poky] [PATCH] The poky repository master branch is no longer
 being updated.
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: antonin.godard@bootlin.com, poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 07 Nov 2025 17:05:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13787

On Fri, 7 Nov 2025 at 17:37, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> > Can these be added directly to
> > https://git.yoctoproject.org/poky/tree/README
> > ?
>
> Done.

Needs a fixup: the same link (for the manual setup) is repeated twice!

Alex

