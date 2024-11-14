Return-Path: <festevam@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89C94D65C79
	for <webhook@archiver.kernel.org>; Thu, 14 Nov 2024 11:20:48 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web11.34979.1731583245995325025
 for <poky@lists.yoctoproject.org>;
 Thu, 14 Nov 2024 03:20:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=atluj/0j;
 spf=pass (domain: gmail.com, ip: 209.85.167.46, mailfrom: festevam@gmail.com)
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-539e59dadebso503811e87.0
        for <poky@lists.yoctoproject.org>; Thu, 14 Nov 2024 03:20:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731583244; x=1732188044; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S+PELKFvVRPL/uJGelZPfO8ilmkhcpuhy/Gl8+y+krY=;
        b=atluj/0jn2IyS+zAFAfrTOmPJJ1WyEvmTU6ZXh3PHU+ml+7bNWjZRwAuCzohfv2l3v
         M/2str9QBPm0JOykEVp7wNm1emVnoNCLS4jji349kaPzkKMKNWkpPfDXmRDNmXWIueG8
         fdxGS1gIh4SnCYY9ij/OnECLCqBvl1YQuyOzD8YEEz5QZTyFAaG5JwBXQSNjYX3pMiOy
         dTQl4aqa6cUvm5iIsfnvjasUwUmAVml7GDzGUm1VB5/clFG+hChqonmUoNCBD2kJqzs8
         T0oplx/PjW1eCEHDsIS7dJQ2tptGC0CS+87HyXOUQIja/+wodzcnlVwIwFPp9FEoehyJ
         xRdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731583244; x=1732188044;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S+PELKFvVRPL/uJGelZPfO8ilmkhcpuhy/Gl8+y+krY=;
        b=HJr0lhC9zHnuVT66+HQqW21PAX+RYntk9AfONWN1LsVI2C18yd0pdq7KoOi0SEUlPN
         1SpCsz25y57ukLHZaHxsbDHEvmyO5/YEtdqLx+sWM+2XYWIcJloc+KmCT565KnrnXdDr
         0HVeaJd8rBCoTm8ap6FS7ce57puZc44o/kFf9D/giTYtuEZbhjSGtI9NTq6/b0JK+7PP
         MA9uYFSDldYCa19/rUthaFFkGR7A0bTvSRurpwdTE5xtojyODwpMsMZ9BGGaDRTLOCAL
         XlAtPbUn9gwNpi0dqDdv7ulepdFEYuyHirp6h4m6Nr4nlltbczj0lS871IXQlkbCwWln
         ECTw==
X-Gm-Message-State: AOJu0YyHcYE6vcl3NMpDKDe69+UB5ycgUuvY1AxO0p+DmnTwBe35+6ND
	3WV2l42cCnOmPieFg7eDVXQgBvox95sRFZKMNCjhUFhrY0P6d+cEUGcizIt2NtDSemk5zc3HvZ6
	wzleNFjR5kWKqPiGWpc8rwlckc24=
X-Google-Smtp-Source: AGHT+IHFUx+2egjvmktiYlZWGwfhONPCTBOQNCBs3A96j13PpFsqGw7eS4T9T1S+GqqGbe5sTtOV7sXmkTFVHmb/ZmU=
X-Received: by 2002:a05:6512:3d09:b0:539:f65b:3d1 with SMTP id
 2adb3069b0e04-53d862c5a56mr12870736e87.21.1731583243610; Thu, 14 Nov 2024
 03:20:43 -0800 (PST)
MIME-Version: 1.0
References: <20241114073723.1786833-1-m.otto@phytec.de>
In-Reply-To: <20241114073723.1786833-1-m.otto@phytec.de>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 14 Nov 2024 08:20:32 -0300
Message-ID: <CAOMZO5CeYakKhnvurYkrBqZcenYEv_Yog6=Cj=ss_Qq2iT=cjA@mail.gmail.com>
Subject: Re: [poky] [PATCH] u-boot: Set CVE_PRODUCT
To: m.otto@phytec.de
Cc: poky@lists.yoctoproject.org, upstream@lists.phytec.de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 14 Nov 2024 11:20:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13490

On Thu, Nov 14, 2024 at 4:38=E2=80=AFAM Maik Otto via lists.yoctoproject.or=
g
<m.otto=3Dphytec.de@lists.yoctoproject.org> wrote:
>
> The CPE vendor is "denx" and the CPE product is "u-boot".
> Set CVE_PRODUCT for properly matching in the NVD database.
>
> Signed-off-by: Maik Otto <m.otto@phytec.de>

Thanks for the patch, but the correct mailing list is
openembedded-core@lists.openembedded.org.

