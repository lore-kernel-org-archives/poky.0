Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E208C44515
	for <webhook@archiver.kernel.org>; Fri, 17 Jul 2026 16:19:48 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.313.1784305183562377557
 for <poky@lists.yoctoproject.org>;
 Fri, 17 Jul 2026 09:19:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=bmThBNwd;
 spf=pass (domain: smile.fr, ip: 209.85.221.51, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-47122683cf3so4692655f8f.0
        for <poky@lists.yoctoproject.org>; Fri, 17 Jul 2026 09:19:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1784305182; x=1784909982; darn=lists.yoctoproject.org;
        h=in-reply-to:references:to:from:subject:message-id:date:content-type
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=BjmJk97ztfkeSLrLt4ga3z4GUNRGfq5xu2JkgpNI04k=;
        b=bmThBNwdcxw/H0/4YsbBfNlesYtv9/50L/B1B/9Ekfu3g41CqN980RsalvWsNRDXo+
         iX9r+/bhXYPmzuCfhlJOJSNofypzS5ShAlsunOfGaG1VgD8V7lJksBn9wlPtQ5vmL7fO
         h5k9EPGpvFFKev+g/Zk8bVv+b1I05V5YX9IoI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784305182; x=1784909982;
        h=in-reply-to:references:to:from:subject:message-id:date:content-type
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=BjmJk97ztfkeSLrLt4ga3z4GUNRGfq5xu2JkgpNI04k=;
        b=RI7Ojq6BYRvMowiUXgU8hzGh8RNB8Hf/bg12ygFYrf2JjblJCeRKZBkJE4gJUW+Dci
         IR+H26zi2t5snz0GmTwDDyi1iBVw8qV5SQpDBFllqNefbstZutBhiyPW6Vjs6Meileo3
         xBOp0whjuv9/aobiNnW3cDShgA+to1KfLd5zC8tTzbWcWzym5NqtS1tpOvFEcpZos9E7
         Z19HdlHsu3ZhRAy7WLvmHb3UGo1O7vTiz7JcchnuwejFO7EkDQMz+v2MPQGfVgwb8jUU
         KAl4sMgMb38UpSmnQ7K9UjvsEA2drXdMJCj+mm/tfsd1FeFEfWeIHFvGhO8ZDXyR0G8D
         EUjQ==
X-Forwarded-Encrypted: i=1; AHgh+Rpcm5oiqU66i1qzt/U8JffzjFADqLgRegqUKi48IeqvtbcjZnxC/TG7prkf1gSCHyhQY1jp@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwV+zTLotFUnZaOnj754Zd6Udlel1m3tXy7jzi6szkZ4hhNl9Vi
	78MwlD3YLojSGFQTACrMgh0AtRcIqjDqhXF7IdMajxWwinOpWDATdnYKgUbLFSLZFoA=
X-Gm-Gg: AfdE7clUJazsoC4sd0JUaaAce+O/lMTV58jsOuqdHBOKaFk2ZvuEtm9Y2Ab2u3PjtUp
	4WdgzC8XMyxkR0iPmZcswvN7Dh8j+FP/DHlyzBQ1bkPnhpoUOpsg7I2+xdM6+9o02u6QRykA+jf
	amCz9JigST0mJKcmCt2PDKwEbAL5ON5ouNz35offsOU1HYC7oU1k0ch/f549HPWKXp8ivUDE40I
	ljr7lAffFecVjgjQQD530gj4nEORJRBLZ8/23lEAZUp2ghXEugp32omEz5XVC4yZMy6ZqAnNlbk
	zyzJM66Of1Jacok7gMPoFJTR6rRUEYzV7uMGfU+sHRimKBvIyV8pSuhUVEFfrGrK63bwcZPT2Wm
	jaKkXyH9F0vLAv1ops1taJm3JGAqkwyDI2j9Km9vYOBZjpBQliPxIJ5xOhzXwGXhinymhCBW4Au
	b9Hn6WbD4Ox/p5jVMq+2YLWJ1+sZ9lSESNv062D3W8tW+7IOG+C6iH+ZPhWj5pPOW5UJo=
X-Received: by 2002:a05:6000:387:b0:476:5c84:e830 with SMTP id ffacd0b85a97d-47f622fef9amr4732374f8f.9.1784305181671;
        Fri, 17 Jul 2026 09:19:41 -0700 (PDT)
Received: from localhost (2a01cb001331aa0093f4151e9fe9f4b8.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:93f4:151e:9fe9:f4b8])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47f63edd7d3sm4312162f8f.25.2026.07.17.09.19.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jul 2026 09:19:41 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Fri, 17 Jul 2026 18:19:41 +0200
Message-Id: <DK0ZEC5ELIWQ.1Q40KM5ICOKFO@smile.fr>
Subject: Re: [PATCH][wrynose] poky.conf: Add newly sanity tested distros
From: "Yoann Congal" <yoann.congal@smile.fr>
To: "Trevor Woerner" <twoerner@gmail.com>, <poky@lists.yoctoproject.org>
X-Mailer: aerc 0.20.0
References: <20260717155726.3527567-1-twoerner@gmail.com>
In-Reply-To: <20260717155726.3527567-1-twoerner@gmail.com>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 17 Jul 2026 16:19:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13943

On Fri Jul 17, 2026 at 5:57 PM CEST, Trevor Woerner wrote:
> Fedora 44 and Alma 10 workers were added to the autobuilder, and the
> Alma 8 and 9 workers were updated. Add fedora-44, almalinux-8.10,
> almalinux-9.8 and almalinux-10.2 to SANITY_TESTED_DISTROS.

Hello,

Well, I was not aware that this kind of commit[0], had the side-effect
of changing the wrynose worker pool. My builds seem to have run on those
new workers a little but I don't know if that's enough to qualify as
sanity-tested.

If nobody minds, hold this while:
* I let my builds run on it more
* I run some manual testing on those workers

Thanks!

[0]: https://git.yoctoproject.org/yocto-autobuilder2/commit/?id=3Ded7548afe=
0c29f959ef9c2e685bce6d600367299

>
> AI-Generated: codex/claude-opus 4.8 (xhigh)
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>  meta-poky/conf/distro/poky.conf | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky=
.conf
> index 90f6e5f03ea7..8b2bc0fede45 100644
> --- a/meta-poky/conf/distro/poky.conf
> +++ b/meta-poky/conf/distro/poky.conf
> @@ -39,6 +39,7 @@ SANITY_TESTED_DISTROS ?=3D " \
>              ubuntu-26.04 \n \
>              fedora-42 \n \
>              fedora-43 \n \
> +            fedora-44 \n \
>              centos-9 \n \
>              centos-10 \n \
>              debian-11 \n \
> @@ -48,6 +49,9 @@ SANITY_TESTED_DISTROS ?=3D " \
>              opensuseleap-16.0 \n \
>              almalinux-8.8 \n \
>              almalinux-9.2 \n \
> +            almalinux-8.10 \n \
> +            almalinux-9.8 \n \
> +            almalinux-10.2 \n \
>              rocky-8 \n \
>              rocky-9 \n \
>              "


--=20
Yoann Congal
Smile ECS


