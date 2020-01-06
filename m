Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
 by mx.groups.io with SMTP id smtpd.web12.6303.1578329720491645615
 for <poky@lists.yoctoproject.org>;
 Mon, 06 Jan 2020 08:55:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=nVHv5u10;
 spf=pass (domain: gmail.com, ip: 209.85.222.169, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f169.google.com with SMTP id t129so39996731qke.10
        for <poky@lists.yoctoproject.org>; Mon, 06 Jan 2020 08:55:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VGJL2A5abkRyw57oFfonaph3U+fiEsJ36RHbpWMj9GQ=;
        b=nVHv5u10jOkdjp3NvNmPcScKPx/TEXdtKcEfpA+vSVlT2RjHuw1vArjqxpqwMPHLox
         2PwZ0Q1J10yULzBlsDAiEQbGNPDejgBS8WVhmnbG6CNX2bYnAzdujYM3KrStWcHkDOe+
         t5yHY/2xcntRWUbWLeMHvhCr/gwY9LgDz2T0SxldEwZmFFF/6cWYPCffkPa44swrlrbk
         5gKcNcv+yqRLJqKZEPN43Sloz0Ls4WvhqtV3SgNYlcAxJbwMr9GJyjgplKvNiGjxkhow
         IEHTEEYYvdkgA3l7+udKDuzb9xZ09AvDqE/CRsQZ2l3JUcesboGBY3tP+FadmJB++fNs
         5+XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VGJL2A5abkRyw57oFfonaph3U+fiEsJ36RHbpWMj9GQ=;
        b=odZeBs9aygo+whCieLdkJ0t+RDHE1iJlNspG7Q/7AA3gi+ODG4oxW6NGdc31OCJVn2
         jmL65nmOzxxFCeLlVFdgXZeWmNSEm3PI9cJBeiBD7amxpA3zOpDWPtt5x7k4Y7M8PhaB
         SZ5vcG7muQx7ZfSKJogHHk2sG7NYjzbp2SwScrmcPl109azrAey5PirooN7yUouXFHEA
         VwdfhfGf8+SayFTjKZz3V5UcTqhAqu8CS4CAEdWRnN/H8mfob/3QGL8xve4bYhLeGB1t
         ux99XOt3VT51+kFD1R0wIC1uiJX0ZtRKBwwD5TXlYwFK90ryiyPALlkW+XhjZfnxcgPo
         k7AA==
X-Gm-Message-State: APjAAAVD9mF3wUDrwc81adGSP1Xu/xbBadw/tMmnOYpuFT7uTfxEJhdB
	0YOMcG6a3ztNXJRRpoQx3SOvrkc3igeIuAZeG+s=
X-Google-Smtp-Source: APXvYqwKUyv1H3qiLRF+Kqc9C5gSH1Nb88zPxqFajWINeX2JM44Uj8s2C4i0psmRoNMesSZbf2fjkYmmlp5WX9JB2ac=
X-Received: by 2002:a37:a3c7:: with SMTP id m190mr84067801qke.212.1578329719379;
 Mon, 06 Jan 2020 08:55:19 -0800 (PST)
MIME-Version: 1.0
References: <WQx6.1577962852433588681.umzP@lists.yoctoproject.org> <28695.1578305489262395810@lists.yoctoproject.org>
In-Reply-To: <28695.1578305489262395810@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Mon, 6 Jan 2020 08:54:53 -0800
Message-ID: <CAMKF1sr+rUiVggoiGjti9zmKbynY5QL_Rti16aWL5-aRRjqN+w@mail.gmail.com>
Subject: Re: [poky] Bitbake fails to create SDK meanwhile can create image
To: Ashish <ashish.emailaddress@gmail.com>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

are you building out of master ? if so did this config work in past ?
I wonder if this started after this commit

https://git.openembedded.org/openembedded-core/commit/?id=66e4c638b942c9832da9e1d578aa03eeafae28db

can you test if this is the case.

On Mon, Jan 6, 2020 at 2:11 AM Ashish <ashish.emailaddress@gmail.com> wrote:
>
> Hi All ,
>
> ( Updating the thread just in case if any one else face similar issue )
>
> 1) Changing the distro file from "build-config-policy-basic" to "buildpolicy" this was based on below pointer from error log
>           checking build system type... x86_64-pc-linux-gnu
>           checking host system type... x86_64-pc-linux-gnu
>           checking target system type... Invalid configuration `x86_64-build-config-policy-basicsdk-linux': more than four components
>
> 2) Clean and build binutils package . Build the image .
>
> 3) Generate the SDK again , there is no error mentioned above .
>
> Ashish .  -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#11885): https://lists.yoctoproject.org/g/poky/message/11885
> Mute This Topic: https://lists.yoctoproject.org/mt/69378078/1997914
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub  [raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
