Return-Path: <trent.piepho@igorinstitute.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2ABA6C87FCF
	for <webhook@archiver.kernel.org>; Mon,  4 Aug 2025 17:19:29 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
 by mx.groups.io with SMTP id smtpd.web11.1267.1754327964968695989
 for <poky@lists.yoctoproject.org>;
 Mon, 04 Aug 2025 10:19:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@igorinstitute.com header.s=google header.b=GWilnpw6;
 spf=none, err=SPF record not found (domain: igorinstitute.com, ip: 209.85.208.53, mailfrom: trent.piepho@igorinstitute.com)
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-615460d9897so5356581a12.0
        for <poky@lists.yoctoproject.org>; Mon, 04 Aug 2025 10:19:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=igorinstitute.com; s=google; t=1754327963; x=1754932763; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xRm8O2V0bw49VLcnwbVl8bI3YUd0C2fRLUDRCk9TKhg=;
        b=GWilnpw6kIizlqj1B6k/5txP6wz8badeGaaT2/bJp6fuTFlzTPVfqg+VvTlirHjS9L
         NEssgZulxFl6mMMDVWZlGiBmWyVQsAMhuBWyUFE3UoKQlbgmEdu7ZttTDWGymzn5KApf
         Hcq3oQjeZph5Cqe78JUWJ/D23zOGi3jdYRD6rZZ4x4AfdVEiSkVDlFbPuiYfq4tQ1/Yc
         MeeZRPZRa7P6yPNPQqaq3tVGgA0O5EsRcVlHuNvYSOrjSSksOrnsb3dQK1FBuFVYAfhr
         b8dTnVvSBDoZDlN+XCgdjmF3kOiZ2xSJQ20gbczQylAl1y8WEVceOQUG9FpoWHvNEZ2f
         tSOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754327963; x=1754932763;
        h=content-transfer-encoding:cc:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xRm8O2V0bw49VLcnwbVl8bI3YUd0C2fRLUDRCk9TKhg=;
        b=DwnelauEnMFFK1YQnW+wxm0eCGem0UJUWdK5UWGGqJ8D5fj94xMWqR5cmWU/8srZBx
         5G96CFOjBX+ctEISCqYilfWLsKlf1kGvMP4HC7EcmaH2b5zQdKxMVY/POMkMH4INUbxy
         PozbPvrx1TOAv2o1+i1eCRUyNI2hVxRmpHY/4N3zEu+PWzkfwaSdLcIGsfcV8BWWcnPy
         2ROhzMKNn4LJzp/y+xIzZtPSBBpVbR/aZAs6OffU7fhNRCQrFzFj+hkTa4Nb7dPxbFs5
         GSy72ZwSZzoGVl8mrigyJ0a48UDXXHwVe+vN765n3RzM5ZHPohnegPQkskbZdAng6xQd
         ndjg==
X-Gm-Message-State: AOJu0Yzz9csHfSwevl/vqXzWWUkTXO0ehysHkhOYilUUa0F0xuc72Cq4
	RsWfmlyv3LUbuJHIPKEDBYjR21XCWFESu7ybBdrMZWQXvYHIeSWt/vfXzkopCcmZHcIk8VBxHSN
	EGY6TYnwJMczoMWgVqqNEPr/myNA9Uq2HQ/iglrP+ZTdEdp5FW4Yu7ef8bA==
X-Gm-Gg: ASbGncvlAkay6WL0QXklH2DfeOfhKPC3/lcgLh+TB6Pu8OpT01sHr2z3lTPA6Wzwjvi
	j3gRwYuT/wlp532irwJ8UwEURIEKR/2h0gT9BR0FY8XCmCXmkYpyr4O7kdeJlT809XGeDfywZ18
	h2mR0pgCad39oEQKagnWWzmHIntamwtM/ZBhyAtesJxW690KMMWTaX+W/y07SWSAwJ+YiMPccLY
	dsDv6pLWjeuo3SK4Q==
X-Google-Smtp-Source: AGHT+IEitydYQZQcPiSqLJEKGd94Hr7PJFM107ArPhqZuRubQPwqUC8SBV8PZbK+WHgOIRxQCtiBQhDe/XeDM5AlXi8=
X-Received: by 2002:a05:6402:5208:b0:615:a75a:3eff with SMTP id
 4fb4d7f45d1cf-615e715bedfmr8674984a12.23.1754327962787; Mon, 04 Aug 2025
 10:19:22 -0700 (PDT)
MIME-Version: 1.0
References: <2n8W.1754202497905279149.soMo@lists.yoctoproject.org> <CANNYZj9gh1ucaFOtcCPScawXGT25O4MHfcAiJ=EYf-cUhXcX-Q@mail.gmail.com>
In-Reply-To: <CANNYZj9gh1ucaFOtcCPScawXGT25O4MHfcAiJ=EYf-cUhXcX-Q@mail.gmail.com>
From: Trent Piepho <trent.piepho@igorinstitute.com>
Date: Mon, 4 Aug 2025 10:19:11 -0700
X-Gm-Features: Ac12FXxrwti_B_S-izpxhX8k7Z58jWM6kNTpOi3TD0GAw36oOnyUpVMSS-t0lNQ
Message-ID: <CAMHeXxN_eGUQpPTjKw1pZbzPX6s-BV-hWvGy97z-MRn42bFMFw@mail.gmail.com>
Subject: Re: [poky] How to override mesa VULKAN_DRIVERS and GALLIUMDRIVERS variables?
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 04 Aug 2025 17:19:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13707

On Mon, Aug 4, 2025 at 3:15=E2=80=AFAM Alexander Kanavin via
lists.yoctoproject.org <alex.kanavin=3Dgmail.com@lists.yoctoproject.org>
wrote:
>
> On Sun, 3 Aug 2025 at 08:28, trent.piepho via lists.yoctoproject.org
> <trent.piepho=3Digorinstitute.com@lists.yoctoproject.org> wrote:
> > Setting VULKAN_DRIVERS in an bbappend or machine conf file to something=
 like "intel" doesn't work, because the append actions still append to that=
 value all additional drivers.
> > Trying to remove other drivers with something like VULKAN_DRIVERS:remov=
e =3D ",amd" doesn't work either, as remove only matches on word boundaries=
 and the list is command delimited, not space delimited.
>
> VULKAN_DRIVERS is basically internal to the recipe. You need to set
> PACKAGECONFIG for mesa to include the needed set:
>
> VULKAN_DRIVERS:append =3D "${@bb.utils.contains('PACKAGECONFIG',
> 'freedreno', ',freedreno', '', d)}"

Not sure I follow what you're saying.  If I add the above code inside
a machine conf file or via bbappend, I'm stuck only adding new drivers
and not able to remove those the recipe has already determined.  While
it is possible to turn off, e.g., freedreno by PACKAGECONFIG, it can
be done for neither intel nor amd.

Or are you saying that the mesa recipe should be modified to work
entirely this way: allowing *all* drivers to be configured via
PACKAGECONFIG?  Ditto for the GALLIUMDRIVERS configuration, which has
the same issue.

If the latter, is there a reason to not use `VULKAN_DRIVERS .=3D "${@=E2=80=
=A6,
',driver', '', d)}"`.  It seems like as soon as recipes start to use
:append internally, they get harder to layer via bbappend and conf
files.

I did find a workaround to configure the mesa drivers.  In a mesa
bbappend, set the configure command line arguments directly:

PACKAGECONFIG[gallium] =3D "-Dgallium-drivers=3Diris, -Dgallium-drivers=3D'=
', libdrm"
PACKAGECONFIG[vulkan] =3D
"-Dvulkan-drivers=3Dintel,-Dvulkan-drivers=3D'',glslang-native
vulkan-loader vulkan-headers"

But this unnecessarily duplicates internal code from the recipe that
will need to be kept in sync.  IMHO, being able to select drivers via
package config would be a better design.

