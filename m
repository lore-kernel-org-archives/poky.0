Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web11.120317.1669648115739714752
 for <poky@lists.yoctoproject.org>;
 Mon, 28 Nov 2022 07:08:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=R+hexz7B;
 spf=pass (domain: gmail.com, ip: 209.85.208.175, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id e15so5698576ljl.7
        for <poky@lists.yoctoproject.org>; Mon, 28 Nov 2022 07:08:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MttbYSq6dnGFPnVgd/yzdoOjIbY3Z1iQSoDx3Q9sLSI=;
        b=R+hexz7Bv4r8nE1emd3LEGP8y99UjkDbET5ETXZ6tuIipZ2HXTdFFgF7SUmBFbWkWS
         HuLdIDpKV0P6L4JauB4tHaw+cSS7dPLBk6fZpVtQxE9m07CXm5892t5glaeGdw3ahwkr
         rIkf8TrL9Ff1s/ZUYLnvWV3DPyNctG5IE43YrG/WFpz1moGxHOKy01LiVBtKD+gQl5L4
         ZUaedUyT6oDLhFnKPLADcD2JqcpiqgJVZwJWv+B4dySPHyQv85uCeL2yse9wX7rEkY9R
         HdZSGapfZ++zlO46nE1UooWjC45uAQBxh8Bze+hRfup3QuKHTePVReqxYlECInCrbKXO
         ouqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MttbYSq6dnGFPnVgd/yzdoOjIbY3Z1iQSoDx3Q9sLSI=;
        b=PzgNG8TaeKDIIqRoZOA5CqzA8w9PCdelNpB7NgKe2ZcMui6H1zqzadTpak6Vvm9/7m
         IF1qk/E7UrfqAT+bP1SiCdGAVSJPS2uDEM5W9ZTgarNv412vxsOjMcIvtoWyhyg0q/1Z
         ltccKBw1jym55ALW0xQ6++43AABwO0Vco2RF9CQaM1tHaHFyKyQ5m+YJgZdH03vKPzJC
         X3EM4jnu9Wg7f9hpMXKXd0WruTVOZ/yFHy34aqljxnbUm1mms6vRxOAAGGGK9NE/hsXC
         hk2vHX01NnB5c58XSzQjBOywPjqAj5qfTL5bUh2Xc+irMv6u1RsG6pLI8yh4S97rLXhg
         Hnjg==
X-Gm-Message-State: ANoB5pl0Zbs1fHDrT/VgsbacsYl9vgBsitUQFbUUdODxHrmJFZd3cbmc
	uoe65aJJtXBy/wmG40XNiZS2+eS/oPXkvlzVVLs=
X-Google-Smtp-Source: AA0mqf5NXYKPpm4xhhx9KF1GdrWsbQNhXbflVWMhihLdBaKDtYSJas332peRWUYqNd/rB0iZUPfGz1sdf2CrnHYvBPM=
X-Received: by 2002:a2e:3a07:0:b0:279:43be:97d6 with SMTP id
 h7-20020a2e3a07000000b0027943be97d6mr14473871lja.33.1669648113843; Mon, 28
 Nov 2022 07:08:33 -0800 (PST)
MIME-Version: 1.0
References: <CANNYZj9sFraiugRax5P2ztKCKRbK4pzRhiJh2mf-K5FpoKBBoA@mail.gmail.com>
 <29070.1669647852896855532@lists.yoctoproject.org>
In-Reply-To: <29070.1669647852896855532@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Mon, 28 Nov 2022 16:08:22 +0100
Message-ID: <CANNYZj8OWo=miKBJkzgDX4LNRUXJtu7qJRHVss-mYnCkvgMzGQ@mail.gmail.com>
Subject: Re: [poky] Azure Devops repo URL support ? #poky
To: BELHADJ SALEM Talel <talel.hajsalem@sofia-technologies.com>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

But it's not the same. The command is
LANG=C git -c core.fsyncobjectfiles=0 clone --bare --mirror
"ssh://git@ssh.dev.azure.com:v3/WITTI/(Embedded)
Gateways/sofiatech_Gateway_setup"
/home/talel/Desktop/YoctoWork/maie/witti-embedded/build/downloads/git2/ssh.dev.azure.com.v3.WITTI.(Embedded)_Gateways.sofiatech_Gateway_setup
--progress

Alex

On Mon, 28 Nov 2022 at 16:04, BELHADJ SALEM Talel
<talel.hajsalem@sofia-technologies.com> wrote:
>
> I tried the same command and it was successfull:
>
> git clone --bare --mirror "ssh://WITTI@ssh.dev.azure.com/v3/WITTI/(Embedded) Gateways/sofiatech_Gateway_setup"
>
> 
>
