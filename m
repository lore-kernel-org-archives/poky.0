Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web10.117002.1669640492170563515
 for <poky@lists.yoctoproject.org>;
 Mon, 28 Nov 2022 05:01:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=GdQmLAUe;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f43.google.com with SMTP id 83-20020a1c0256000000b003d03017c6efso10879190wmc.4
        for <poky@lists.yoctoproject.org>; Mon, 28 Nov 2022 05:01:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2JqVNCvzasAgOm5w53wU9f8o7KHumuNzYtp3LfhMYek=;
        b=GdQmLAUeUvXuHiDaNGCswqMwYVtTFkvsDUhoi+joyfI/L/J/JBbdbEuqClNle0vRyM
         B63qy+bGfs7M4LYHYq63DfoiZzT4t/5E5XcTPzsJoeHFtT01/jR+2Dwsg+7DB42Q+8Tx
         80x0rzZcAM37MUyyj3FtjdSKWjh98gfgvBzS8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=2JqVNCvzasAgOm5w53wU9f8o7KHumuNzYtp3LfhMYek=;
        b=6jQHWF0zaYP2Y+36bErt5hOXG4cKIdAPifunfBDi7Qt9SyDY9ciajWEtP1h5gnY5/L
         +V2qQD9XLG25iWqUmwmIzgqhYEX6+WKpqUsPJbBwxQbfkdalVkktLmi4AwgxR7To88fy
         DGe+82/g1Dkjddelwc2DTWkZHHQDXPW0tC69DN2meA7VGO2nf2/2xf1Q+aOV5yRBB/KK
         +UdEyaPZlgxdF97KBzBx76JZlUAzZpCLrWWSSH64G2nzVIwL1UpRRod5LMlKnw0RUHXk
         K8CLt5b/v2Sa+2fxci9epelrnojHnUdBiB7Qhf7utNKdUoEj5F6B2QwWe/ReiPl5E4os
         iv/Q==
X-Gm-Message-State: ANoB5pltb5N0VIWwxqh+R8zXVraq9+1MehBtMr3xiWoQ+h6msBOfxb+5
	BTiPSlu2gD3YTuMx1gc3GOxXbQ==
X-Google-Smtp-Source: AA0mqf7o8zwYIL+662jYGzCzbpQ7HaHHGw8zobmFJNCa8cY7/614GcqGWGqp3c8KHZhGU7oD0GBfnQ==
X-Received: by 2002:a05:600c:3495:b0:3cf:ae53:918f with SMTP id a21-20020a05600c349500b003cfae53918fmr26133171wmq.131.1669640490303;
        Mon, 28 Nov 2022 05:01:30 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:1da4:7286:b644:a924? ([2001:8b0:aba:5f3c:1da4:7286:b644:a924])
        by smtp.gmail.com with ESMTPSA id a12-20020adfe5cc000000b0022cc3e67fc5sm10562229wrn.65.2022.11.28.05.01.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Nov 2022 05:01:29 -0800 (PST)
Message-ID: <d13ad92a8d9d4e5d697820fcdbb03dddf8622920.camel@linuxfoundation.org>
Subject: Re: [poky] Azure Devops repo URL support ? #poky
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: BELHADJ SALEM Talel <talel.hajsalem@sofia-technologies.com>, 
	poky@lists.yoctoproject.org
Date: Mon, 28 Nov 2022 13:01:27 +0000
In-Reply-To: <NaNK.1669633869916245748.A2O8@lists.yoctoproject.org>
References: <NaNK.1669633869916245748.A2O8@lists.yoctoproject.org>
User-Agent: Evolution 3.44.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2022-11-28 at 03:11 -0800, BELHADJ SALEM Talel wrote:
> Hello All,
>=20
> I have a git repo on Azure devops project, the `git remote -v`
> command shows the URL in the following format:
>=20
> git@ssh.dev.azure.com:v3/<USERNAME>/<PROJECT_NAME>
>=20
> When setting it to SRC_URI as:
>=20
> SRC_URI =3D
> "git://git@ssh.dev.azure.com:v3/<USERNAME>/<PROJECT_NAME>;protocol=3Dss
> h;nobranch=3D1"
>=20
> it shows the error:
>=20
> Bitbake Fetcher Error: FetchError('Unable to fetch URL from any
> source.
>=20
> I tried too many combinations:
> SRC_URI =3D
> "git://<USERNAME>@ssh.dev.azure.com:v3/<USERNAME>/<PROJECT_NAME>;prot
> ocol=3Dssh;nobranch=3D1"
> SRC_URI =3D
> "git://git@ssh.dev.azure.com/v3/<USERNAME>/<PROJECT_NAME>;protocol=3Dss
> h;nobranch=3D1"
> SRC_URI =3D
> "git://<USERNAME>@ssh.dev.azure.com/v3/<USERNAME>/<PROJECT_NAME>;prot
> ocol=3Dssh;nobranch=3D1"
>=20
> I don't know how to make it work.
>=20
> Anyone has an idea ?=C2=A0

I'd have expected one of those to work. What is the actual fetch error?
The error you pasted is the bit where it says "can't make this work,
giving up" but there should have been something before that. What do
the do_fetch logs say?

Cheers,

Richard
