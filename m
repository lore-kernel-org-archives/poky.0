Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B776AC41513
	for <webhook@archiver.kernel.org>; Fri, 13 Oct 2023 14:24:00 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
 by mx.groups.io with SMTP id smtpd.web11.39749.1697207036735467383
 for <poky@lists.yoctoproject.org>;
 Fri, 13 Oct 2023 07:23:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20230601.gappssmtp.com header.s=20230601 header.b=s9iQXlp8;
 spf=softfail (domain: sakoman.com, ip: 209.85.218.51, mailfrom: steve@sakoman.com)
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-9a58dbd5daeso358894666b.2
        for <poky@lists.yoctoproject.org>; Fri, 13 Oct 2023 07:23:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20230601.gappssmtp.com; s=20230601; t=1697207035; x=1697811835; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ctMUmeYgVaJtQJaZYubBBK+FcQkSRV5bMRmNzYnY6wI=;
        b=s9iQXlp8yam3Jf6osknjYMDB+Y+voFFKaElsp9dREFcUQhs+tGWa55yjMGrSs2Benx
         0qOAnYn3WChiPfLoO+s0fRVvVPicTXbVC2+Hi5n71PpQ++9axzPxmBqiHJo7aVr97dXk
         rE5NlCp62QTjz+7w3szd66T596QkwkKLqhPpjd4FjkP5tc+oMvKzkYwORbdKoiRY2efc
         N3OfuiYw1vsYXcFaHLNmRAkHQWEfCmgG+SlwKEHx4kbd0T0eXEKLmcsqVRDoHlMAWRyz
         HiiQks7iTS02CdknAkBFWp8IV76PbShvoB/BurG0ddW8WI6jUHfiaD3gwWGYe1jDfgh/
         tUPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697207035; x=1697811835;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ctMUmeYgVaJtQJaZYubBBK+FcQkSRV5bMRmNzYnY6wI=;
        b=ruu1p23WsReW2RfiEwa3KjdlWVcMGcYuRVK7F2SZ3dfVI5kfQUlCpRf3/Du+tG3MVe
         IILGCFpAnroiESOq/CLYRncnU210ZQgiw7Vv6soeSSM6iyGn57ZUJO5eHrh9S/jiX7gK
         B8RO2k/Ikc+trFyDXLWH//tGNiPOSYSLksWOf754TlOYLOAVvuznyQWcfrOL/HUBlZ6l
         /QrX1eUqTUcnDEFaD+QyNWwlHMEmwNE+gIEV4Xlfik0ZTCVHpswVlFjh7n+L8oZHyWBR
         X/RvUz9yUPv5C2Q7lQQO8QqUdfL795NR7qrUGecl5rs6Ty/6n4w3HqDbIENH5DMVZlcs
         qy0A==
X-Gm-Message-State: AOJu0YzgRyd11hUYP/nclB1AUtlek2G2g/jDdZP6AE+dV8rzouEkllVU
	PY7RH5e8S1/DFuwf8GkCVzBZr1IM/zdQDuy5RY2oAA==
X-Google-Smtp-Source: AGHT+IFJxwjUfUiWEFcuzrATGED7LvATBcXX4iiB6RmK8UX7TXwtnwBVdPOqKk17q5Wu1e42IqH+YVZNAKsVre8UYas=
X-Received: by 2002:a17:906:74db:b0:9ad:e0e0:d6ab with SMTP id
 z27-20020a17090674db00b009ade0e0d6abmr26019675ejl.12.1697207034816; Fri, 13
 Oct 2023 07:23:54 -0700 (PDT)
MIME-Version: 1.0
References: <DxsL.1697069952825184652.wun3@lists.yoctoproject.org>
In-Reply-To: <DxsL.1697069952825184652.wun3@lists.yoctoproject.org>
From: Steve Sakoman <steve@sakoman.com>
Date: Fri, 13 Oct 2023 04:23:43 -1000
Message-ID: <CAOSpxda3XdD2-=r-Zaqs=TQO3VBkBton8BELYq7rQYaQ-W9E6w@mail.gmail.com>
Subject: Re: [poky] CVE CHECK scorev3
To: Grant.Smith3@ngc.com
Cc: poky@lists.yoctoproject.org, Ross Burton <ross.burton@arm.com>, 
	Marta Rybczynska <rybczynska@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 13 Oct 2023 14:24:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13176

On Wed, Oct 11, 2023 at 2:19=E2=80=AFPM <Grant.Smith3@ngc.com> wrote:
>
> All,
>
>
>
> In the poky layer (yocto-4.2.3 branch) I am using the built in cve-checke=
r and running into an issue where it is unable to produce the scorev3 metri=
c. All CVEs have a scorev3 equivalent to 0.0. When looking at poky (yocto-4=
.0.9 branch) I noticed that the cve-checker uses the 1.1 version of the NVD=
 database and can successfully produce scorev3 when running a test build.

You are using an old version of kirkstone (4.0.9), the current version
is 4.0.13.  The current version now uses the new version of the
cve-checker.  I just checked and the code is identical in kirkstone
and mickledore, with the exception of this commit which is required
for some older distros which are supported by kirkstone but not
mickledore:

https://git.yoctoproject.org/poky/commit/?h=3Dkirkstone&id=3Dcd1d34d5106c44=
84372552bb3cf93198f7b25d76

So kirkstone and mickledore should be producing identical results
(assuming the same recipe versions of course)

Looking at a random sampling of json files though, I also see
"scorev3": "0.0" in all of them.

So I suspect that there is a bug, and it is present in all branches
(master, mickledore, kirkstone, dunfell)

Steve

