Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 008A6C04FFE
	for <webhook@archiver.kernel.org>; Sat, 18 May 2024 01:05:57 +0000 (UTC)
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
 by mx.groups.io with SMTP id smtpd.web11.10837.1715994350670336913
 for <poky@lists.yoctoproject.org>;
 Fri, 17 May 2024 18:05:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ArX6EoHA;
 spf=pass (domain: gmail.com, ip: 209.85.161.54, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-5b2dec569e3so1061454eaf.2
        for <poky@lists.yoctoproject.org>; Fri, 17 May 2024 18:05:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715994350; x=1716599150; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FwLghzcCz8J8uoewhBaCyOw1XUoLwgPGkIErIpBhMeE=;
        b=ArX6EoHAINZDfo/YcdJA2sViTv3nDqBadQHADHF2vlfsx/pbQIQ6Ftt+hn9kN6jAUE
         aVQQiDZIn5w/p00MSAQlvYi8RD6lHd5SwQoD0Thhwx73jlpPfHw2K1pF9ZnpV5hpOzF2
         UmxH1XgvP1fMWl1USVTzS8G+L1W/4ORebCO+ao03U+PJcE4cGI4LjyJCxyEmSAB10A3Y
         48/gFcNXwBnI7Pw5AnfS6Yv4pUd7LKHTAwRprPrEjCRlCZ30uKw3QK8rqa7XRsm9N1IC
         H7EPP8OzyyJ6Q87Q5rsDWNG1go+WmdSoV7ZhLU0FSFzjUDysGNc6owXGFah9Jrub5J3k
         THsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715994350; x=1716599150;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FwLghzcCz8J8uoewhBaCyOw1XUoLwgPGkIErIpBhMeE=;
        b=klxLLiO7gysTS6vqB+/TgVUfkM5sDaue3DS6pqIunEV2bgRgq2KMnCPXeBeBVYu90B
         dd/Cbm8MGMtpKI5HiMlMFQwabc1MyAzk03zQ2rAfXW5PSFGjCyvqc1m4V6fLL0WtHi+/
         ei33IskArmcNgblLTA2CUYnbvtf9g6alaANGCLITAJUq40WtWjnKgNF6bW3amZyc7BAU
         qDQreUOakdKxHrXeL38hHHtB6327/Yn1TwLTjdgTMkF8nTm4nzL8FZjzMpnnaVsFV/gy
         suDuKCA3FD6aytiwFCFaeeQbU+zVprw2WR+ICQ59sImNtAlYmz26tRDNH31v7U0+9pai
         5gig==
X-Gm-Message-State: AOJu0YyD0/4m0m3eOokfHx3RLvMrh91JU6wSKbKplSljHzJ8ljpCEp8T
	dhJBNqFrCxpl0yaNkwtPCEVo2g8ErS/UtKb7Kka+6068Bsgskguo87sLT3CjoFkuWckVgsm101+
	z+7JW7jpWOEOy2f5E+Suasj0pWZU=
X-Google-Smtp-Source: AGHT+IHUJnTwu/VxEsftQzT8gRgVyJWhawZaZtpjnSxBWOTADachP8jzllyjicLA+1bYXECmfNcjb/hTvgLu7Kkla0A=
X-Received: by 2002:a05:6870:78a:b0:233:6e02:57ee with SMTP id
 586e51a60fabf-24172e2ebc9mr25183580fac.42.1715994349595; Fri, 17 May 2024
 18:05:49 -0700 (PDT)
MIME-Version: 1.0
References: <dn9q.1715993730040960434.wcch@lists.yoctoproject.org>
In-Reply-To: <dn9q.1715993730040960434.wcch@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 17 May 2024 18:05:23 -0700
Message-ID: <CAMKF1srvJjcFmcD3t0Pdi0V2Ub6ufYwbiX0cEa9vqOtNv9rxeg@mail.gmail.com>
Subject: Re: [poky] Best practice to share constants between C code and recipes
To: maude007@protonmail.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sat, 18 May 2024 01:05:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13357

On Fri, May 17, 2024 at 5:55=E2=80=AFPM maude007 via lists.yoctoproject.org
<maude007=3Dprotonmail.com@lists.yoctoproject.org> wrote:
>
> Hello,
>
> A project uses GUIDs. They are constant string values. The values are use=
d:
> - in several recipes do_install() function to generate xml files
> - in another recipe where the GUIDs are used in C code
>
> What is the best practice to manage these constants so they are centraliz=
ed in a single file? Is it OK to put them in a bitbake .inc file, then gene=
rate a C header file at build time? Are dependencies managed correctly in t=
hat case? Changing the .inc file should trigger rebuilding of the C code.
>
> Thanks in advance for any suggestions

you might want to look into useradd-staticids class -
https://docs.yoctoproject.org/ref-manual/classes.html?highlight=3Duseradd+s=
taticids#ref-classes-useradd

> Best regards
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13356): https://lists.yoctoproject.org/g/poky/message=
/13356
> Mute This Topic: https://lists.yoctoproject.org/mt/106165043/1997914
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [raj.khem@gmail.=
com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

