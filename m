Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1BAC5C4452A
	for <webhook@archiver.kernel.org>; Mon, 20 Jul 2026 13:40:30 +0000 (UTC)
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.9301.1784554825532582721
 for <poky@lists.yoctoproject.org>;
 Mon, 20 Jul 2026 06:40:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=Q2CI7thZ;
 spf=pass (domain: gmail.com, ip: 209.85.128.171, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-80dc4a68e4aso78401097b3.0
        for <poky@lists.yoctoproject.org>; Mon, 20 Jul 2026 06:40:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784554824; cv=none;
        d=google.com; s=arc-20260327;
        b=OCLF4tqpLozYVRXAovR8U5OfObLcOiM9+Zwdc2Cc2WJXJK/FrUu6xWjlMRf2qWGlCr
         fI9htUs68nWIEh5voDuta+YePe5cLB9CrVwjitQI21vwq6+4I1jOl7s2VnID0nuBgSi5
         XweNIEmh3MFLOkEO1tSUuifpuQEMVaErEJHPfhDC3v29GwijuKVXdLvFVklzI7n6m0ls
         XPOpzAFIkn8gsEBCLQ4AHTM4gbhg42WHq2jQ737zh3bOtoDYTYgMPAFSOaXPA1eOH4zD
         T+p3yLVupoWKVC1+LfdV0d83DQ/jwL7Bfp8kbsAZ9x1j+CTsWxVX5E4A1tQMJvaYtF3c
         5dgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=T3gVmCWGbtXd18LHoEhSzVXqJcO5p0y/iIqpnawNRS8=;
        fh=8kXFfYFI2faZXEWSRgVah9CVi4DNGYVCt49zLjMjhHM=;
        b=cMZw24N8LMn+YzluqBtTD5nJ7REL8bSAQp4GIkIZNy5n3uL2nZOk4CL/3NV7slitTB
         aXu5H4IwlhtZdFYP5tqIR6YpwhntBwvY8SH3tLNTGHlvhsxO+G2mhPwawMsf9QtkP9ib
         nsG2d/DW+NZtAf6mSZLP3I5AegFwnGbK+oxpexCVVGg6JxQ3z0pKvSr1IloLiHVmPsme
         nlGAY6f/iLcEmchrdWo6acYJT6Ktv8RUpXr1nkcHsrsJpRvK3POMrSAp2klW0YcoSh1u
         FIYVQkTa3iYa8LIXNY+qdVRVijuN7dL6eWAYJQbc8pmJO1YtWCwB0/+90saILbqJyHp1
         blJg==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784554824; x=1785159624; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=T3gVmCWGbtXd18LHoEhSzVXqJcO5p0y/iIqpnawNRS8=;
        b=Q2CI7thZVlBvzhOBRz5giIs9njg0AohZ+0Rs1M6eQf2BRNe84yTNu9R5CnxOyOC89R
         2+coiyk7qsNiGsN7KFdRQHrWkAg2vFNk2oEvK97aJaizirfHxhCdOVrWHwfhud9gCoE+
         ++3MCMKxBqCuifXW2fynz/Ljxqj0lvPR0hfS9iJ4oK05PNSlzGoA9vMjysprX7UDFrni
         JedsxBAOSLxdPL9pwaIexmXLjI0wtlh7iaKAvBrfwFU5yWnHjo4TAWeRn/xEdidWrAwJ
         NU/olAsf7WdKOTpnH6mrYk+j5luYb1og5mg4MKmb6gioqNevRDLvIXQE06oPILWZe2A9
         MWRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784554824; x=1785159624;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=T3gVmCWGbtXd18LHoEhSzVXqJcO5p0y/iIqpnawNRS8=;
        b=bG7pZFy3Xr/dRNKioW1BGxaN2COPHrjGYF7PrHZD3AqJ5l7Esrft9CCuH+vfHcZJl7
         nNM1Yu5gNhGpuebeS/G3ra/w00yNpa4ft/4dZKvN8r45fsNvpZnma31fAOWTrWGpvrEf
         7m8Cl+wrb3oUCMBwgzTac1lrC58CEPAs+r8NIT+JqaECg7olNaS9N2mQdsbRCcVZnHih
         QMge7GZdNTQZWbpxuqyo+mUpC1pyEfc84fAzFfV6Zhzq+s+bP/WStjN763fvhFRICVZ5
         yKUDHH6Mr4ZeBCj5Se4twce1VGA9QNJrjCbUvKVigmP6N7LvfkjHR8S66amQx08K5wPi
         iz2g==
X-Gm-Message-State: AOJu0YwIrkFjwIkpmgSX7ae2eW2LW9rW4fo7NOk5+gO7uDDJQysz4sQL
	sSOpFG1l0Viogw2WxSBd0MJzJXuzNCbtVBFqORYYmJ/by/Js9L0oIImLY4Dl07pi1ZzTIXydUml
	kkjY+QnrnOg4wpHYlkYa9ICGwjNpckPc=
X-Gm-Gg: AR+sD13ojYBILq+hwcR40V9MEXXqmOzFjiEc/CKXeKfPqvvEzjmx6BH0pJktu45wwYH
	KrtiDn3gj2XdZizWE5zoZszM1WXyocIx2vYkOa2TeYeXXCdBI/576kaQZVPHumupZzoRedZk5Bp
	hzlrMwtNwrvC8pXWfyBRdn9FgYQ/kXQ2ykSJ+HS4tqjARdsSoZetod8beMr4JUjr8TEDLZyek2t
	szrPRoIhHYGy/n8MPjc27kLDEN+MWM0iI7vE7skPb/qi2/yLbyDlevLLR/JL7jG/d9gYTrHtMIV
	W5u4AjcG5qlih2JbDi+cHFxdFfJ0HLWX8XrWjPM31cA/SteQo/9FFj5uPtt5eRCqjBr/X4g7HbX
	zqbgN
X-Received: by 2002:a05:690c:60c5:b0:80e:38c5:bc17 with SMTP id
 00721157ae682-81ef22ef0a5mr41271507b3.7.1784554824359; Mon, 20 Jul 2026
 06:40:24 -0700 (PDT)
MIME-Version: 1.0
References: <20260717155726.3527567-1-twoerner@gmail.com>
In-Reply-To: <20260717155726.3527567-1-twoerner@gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Mon, 20 Jul 2026 09:40:11 -0400
X-Gm-Features: AUfX_mz4liEY-whBxPMBZB-n7T4g_jXHFPDdMgHbO-71fwhWa5LKSDRJg2ZR2og
Message-ID: <CADkTA4Or7ou3nL+FhGXiQFh7SacG7d07K01E_AMc0uWfHPaHuA@mail.gmail.com>
Subject: Re: [poky] [PATCH][wrynose] poky.conf: Add newly sanity tested distros
To: twoerner@gmail.com
Cc: poky@lists.yoctoproject.org, yoann.congal@smile.fr
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 20 Jul 2026 13:40:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13945

On Fri, Jul 17, 2026 at 11:57=E2=80=AFAM Trevor Woerner via
lists.yoctoproject.org <twoerner=3Dgmail.com@lists.yoctoproject.org>
wrote:
>
> Fedora 44 and Alma 10 workers were added to the autobuilder, and the
> Alma 8 and 9 workers were updated. Add fedora-44, almalinux-8.10,
> almalinux-9.8 and almalinux-10.2 to SANITY_TESTED_DISTROS.
>
> AI-Generated: codex/claude-opus 4.8 (xhigh)

I couldn't resist commenting.

You really used claude to add 4 strings to a conf file ?

Bruce

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
> --
> 2.50.0.173.g8b6f19ccfc3a
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13942): https://lists.yoctoproject.org/g/poky/message=
/13942
> Mute This Topic: https://lists.yoctoproject.org/mt/120317716/1050810
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [bruce.ashfield@=
gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

