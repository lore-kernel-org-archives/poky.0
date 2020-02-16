Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
 by mx.groups.io with SMTP id smtpd.web11.10773.1581851069671337748
 for <poky@lists.yoctoproject.org>;
 Sun, 16 Feb 2020 03:04:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=pnboK6Ns;
 spf=pass (domain: konsulko.com, ip: 209.85.167.180, mailfrom: paul.barker@konsulko.com)
Received: by mail-oi1-f180.google.com with SMTP id b18so14043513oie.2
        for <poky@lists.yoctoproject.org>; Sun, 16 Feb 2020 03:04:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nygsNIte7dVngVQs75e12M69lZ4J940lo33qkJ8sPmY=;
        b=pnboK6NsdjLfMXzpXOuctHnNqNdrEaV8awXTGw905+WX2sW9th3rjBYqHno0kvflhb
         Ze82FOR1NKDFCG2N21x+Rmju68fuBjg6f/XZxuxDMv22OInT10DbjizMd/l/ZwDHgKYc
         FC7DlUpFHleRA2wBTEeysH1iOu2lUfFOeG8ug=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nygsNIte7dVngVQs75e12M69lZ4J940lo33qkJ8sPmY=;
        b=a912Rry9SHCR3vjCeHD3QBq1yk+PiUcdwoDWR57xhT43TleL9gZ8y/VKG1INS8hlAQ
         65IsKh76Jsa5IEmz3gh6JIS/Gj8pxer9/oyYHnwcv9FSHUKv1/fqhAe4ppF2DrrfOUdj
         f3oEO0trfQD0AC8c11m7xlb3LoGJRABxW7/LUXxqbEuI57c5jj36cq+7OevC/RsFU7RV
         IytxbEY2eo4ZmaU6gTp3Y5BdDwIYIUvHzpyUPCF9e1izi4tBwrwv25oaB11uq62U8YGo
         wvjvMGrsMmgodoGbU7KiIdlNSCXuiqTQ8WZ4ZXVG5E3+nLhJqYwyelIR2KTd6bkEn3Ke
         QP/g==
X-Gm-Message-State: APjAAAUm/zIOE+18VfRINp8u17atNlpUXv0wefdmrl2huEglVRaUer12
	WB5hXKHGTixoE966ZZ595x11VpXJZmRquVuaT8GXR9jVz2jhsJaD
X-Google-Smtp-Source: APXvYqyIXaeN1Iq5t0O0tc9dG+b4+gmDMhml1LyhnZRjyblb8ZSgBp+xRYJqBPKCIkM7zccUroQhxL5+1Yh5IiWnz6k=
X-Received: by 2002:aca:4e10:: with SMTP id c16mr6730932oib.6.1581851068958;
 Sun, 16 Feb 2020 03:04:28 -0800 (PST)
MIME-Version: 1.0
References: <20200216103649.GA30014@localhost>
In-Reply-To: <20200216103649.GA30014@localhost>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Sun, 16 Feb 2020 11:04:19 +0000
Message-ID: <CAM9ZRVubDwFT44ukmupT1usMh+1WYQq8ODAWxNCsoEf7ejmqbw@mail.gmail.com>
Subject: Re: [poky] poky master and master-next branches disappearing
To: Adrian Bunk <bunk@stusta.de>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Sun, 16 Feb 2020 at 10:37, Adrian Bunk <bunk@stusta.de> wrote:
>
> For the last ~ 2 days the poky master and master-next branches
> are disappearing sometimes:
> https://git.yoctoproject.org/cgit/cgit.cgi/poky/refs/heads

This was discussed yesterday:
https://lists.yoctoproject.org/g/yocto/topic/master_master_next_missing/71297752?p=,,,20,0,0,0::recentpostdate%2Fsticky,,,20,2,0,71297752

Thanks,
Paul
