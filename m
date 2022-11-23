Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
 by mx.groups.io with SMTP id smtpd.web10.6301.1669233155725377440
 for <poky@lists.yoctoproject.org>;
 Wed, 23 Nov 2022 11:52:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=VaVbNlQ3;
 spf=pass (domain: gmail.com, ip: 209.85.210.41, mailfrom: raj.khem@gmail.com)
Received: by mail-ot1-f41.google.com with SMTP id w26-20020a056830061a00b0066c320f5b49so11886196oti.5
        for <poky@lists.yoctoproject.org>; Wed, 23 Nov 2022 11:52:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cGXcnRVi0GDpvFSfmXWNuR32qwY4mltJ0fLhdCyk584=;
        b=VaVbNlQ3tjSGrd6Z+b8X+/GU3sry6DY64hKAH2+L/nRyiCD2Tt7Xnrx4AEBlPgA7XZ
         lw2rjgOcbhfCDFJ/FIr66kTdHQshFZ/XrS5ua1lGiN1INTrhOjNcsuP8HksvRVD8zL5S
         PreLndbP2+vviqCb8uv6+GRyejUD9pU/wP4r4ZrTaf9ooc1ldczocE+efd+DuNogF2++
         EELhyPtRy+G2QuuLdW884gouSr7vIh8CKJNh3lmY/24G34mhSzS2NebqSoMYOnfVce7x
         PoutMSsgpRwyvyu+goy/QoAzJXj/2SB8LshVPfv+gwCgZOOMIbDpZlz0/l9Rr6OsZcXm
         sP7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cGXcnRVi0GDpvFSfmXWNuR32qwY4mltJ0fLhdCyk584=;
        b=cCwBVIQumAwW4GFWFCCy8yG2vsoYDVwQdYSGMk4zvq7VHMKB7xBLkHVOrgezKUp1E7
         8OhP+dm+trMDpsCB6QDVHk5E7fISLBNrSQVEmCYazd2jfe1xWvl7pPIlH/nlI3XNKrx0
         rMwYXB4nAhxkyepk/LpkYw7l1oRzYZVh+UfjUC3XmEN0tAOwm43GbjlvTzMSuwi1Mkiu
         TWNumaGUSRCmOercjx9KyHcvaBlWVZAbIRX7UeHzuxsKDwlR2EiPJuX/bZeDoCiq5d/D
         7yjnScmAQ4n7vKEt3nJmdtMzTtJrpiXCP7F0DwEEl18rwiJQ9taorFuEcSTtBDG/KOGQ
         EsYQ==
X-Gm-Message-State: ANoB5pk4NVSFC7x+mZstLU7p0hKSp5JypOk0/EFPADhNkcvLxAHfLF8Y
	oDplaqY4/BA+ToZeb9yeCHT05B2WxJg8e5DWMDA=
X-Google-Smtp-Source: AA0mqf6xItlsY8uPHcdvOJdkjR2juhQ5pNpm5OK+eIu23ra3Db75insowld9U62J2QkgmtlLfl5/Q7H8M1Opkc/NXME=
X-Received: by 2002:a9d:6486:0:b0:66d:ca7a:8b1a with SMTP id
 g6-20020a9d6486000000b0066dca7a8b1amr6878637otl.55.1669233154908; Wed, 23 Nov
 2022 11:52:34 -0800 (PST)
MIME-Version: 1.0
References: <c615aa2d-b8f3-913d-0a0c-a85037788752@gmx.li>
In-Reply-To: <c615aa2d-b8f3-913d-0a0c-a85037788752@gmx.li>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 23 Nov 2022 11:52:08 -0800
Message-ID: <CAMKF1spZh5_JVq=xcRXErUJeqaAJncnLLp=REtCj9ghG51qXxQ@mail.gmail.com>
Subject: Re: [poky] gcc11.3 (?) optimization performance problems
To: Steve <star@gmx.li>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Wed, Nov 23, 2022 at 9:28 AM Steve <star@gmx.li> wrote:
>
> Hello, I switched my poky distro (and SDK to compile) to 4.0.5 - running
> an CortexA53 with 4 cores (before it was 4.0.0 I think).
> My test application simple average over an array of 5 million bytes
> takes now around 8 times as long as before.
>
> What is changed is gcc from 11.2 to 11.3. Can this be the reason?

It can be. However we need to narrow it down. So perhaps just revert
the 11.3 upgrade
and leave everything else at yocto 4.0.5 and see if the behavior is regressed.

> Compiler options, eg -O3 keeps same. Is there indeed a regression?
>
> The speed neither depends on rootfs nor kernel. Just the compiler/SDK
> decides wether the compiled app is fast or slow.

Right, there could be other factors as well. We do change other packages too in
minor releases and it could be one of these which might have caused the issue
as well but its better to go one by one.

>
> Best regards, Steve
>
> 
>
