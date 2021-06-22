Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com [209.85.222.47])
 by mx.groups.io with SMTP id smtpd.web11.8548.1624366550643300758
 for <poky@lists.yoctoproject.org>;
 Tue, 22 Jun 2021 05:55:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=DL9MkJqp;
 spf=pass (domain: gmail.com, ip: 209.85.222.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f47.google.com with SMTP id f1so7588335uaj.10
        for <poky@lists.yoctoproject.org>; Tue, 22 Jun 2021 05:55:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lDHKYuopDLlpm/yoFe7WBui6hFSKl9wvAuGVX+/M2jA=;
        b=DL9MkJqp55PFU4Xt9kx5iwVDLdtSmKPOb7/pUBNlSAEpvtDyl9jPqisDrva4uxD3NA
         LxnO/RP+NIVm94zi2XN8iHCHWOxQqJ8Ne7aUznSaK6Ocix4P/zGkae7GdTUQE1n4JEVs
         CE7L0TpItbZEddRFOTLREdElwZmDsz7IBr6agSTutBRpD5xJDbNxg17cd47WCoj+HOWk
         A3tGOUKccwcYUqew52fJD1HTa68NELZY3oZGv7vH09bRxcQAu8/tPFKNNHx3b37MWEy3
         5Y9XDEgi5BE5uktKMvKbrx2uHxpiVEd/aMQ0rOspYyrQn6b8vBkqa4KQh9ZuOq78i2gD
         Rumg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lDHKYuopDLlpm/yoFe7WBui6hFSKl9wvAuGVX+/M2jA=;
        b=NDvGZDJWQka6mIq8VAPuolpJcNqwGL3/KLoWFgVG93rFhwAzgO2BWiXKbOX1ZRmTB/
         VxwzHKKD8CcIXAe6O7T+WZWm/FccjQZj+4uRNCd8fiZsvWntsr8g295cd9h0qS10HVLW
         2alD+/DNwZwyL1zXIvo+1Fin+z4IMUp1CCVvvuep/LP8AuNow3voFVthGjmmTO6tBjYT
         goQuilsq2hNOzLJMeMgWGapTHScQZpvQ9M5XxsZl5qXJYpja9HLltCIBRnk+knah9GhM
         YB+KKt6WBU8tgQyZvFY3wzCwW492ScDqqrz6XpbZuUg4X/hoaxhtOKXsYHRB/kBcGfVT
         ot7g==
X-Gm-Message-State: AOAM533GhERX6w2bzz9FtsIVtPAMe+cfTKl8wipZVh+f8Bk8pMJe4tcw
	OWPo0k67j9GX43xqRwgxRN4TImSGAqFXs24SumNsxpW0PsA=
X-Google-Smtp-Source: ABdhPJzW9TOVyoegT8Jb7LZY7k5jsOqSwnFPhFnc2o5S01n4A3u2hTrRoixaaaC8grCvPlBtNJ2Re6L326ks1Y2JFq0=
X-Received: by 2002:ab0:6797:: with SMTP id v23mr3401779uar.71.1624366549768;
 Tue, 22 Jun 2021 05:55:49 -0700 (PDT)
MIME-Version: 1.0
References: <646e26c8-aa05-7ae6-568d-321d7a266281@engineeredarts.co.uk>
In-Reply-To: <646e26c8-aa05-7ae6-568d-321d7a266281@engineeredarts.co.uk>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Tue, 22 Jun 2021 14:55:38 +0200
Message-ID: <CANNYZj8-zZHVpKBZ+2C5GxamBAA6xYBbJa0-5U_VMWnQrWF2MQ@mail.gmail.com>
Subject: Re: [poky] howto run unit tests
To: Daniel Squires <dan@engineeredarts.co.uk>
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000002f1b8d05c55a4f36"

--0000000000002f1b8d05c55a4f36
Content-Type: text/plain; charset="UTF-8"

On Tue, 22 Jun 2021 at 14:49, Daniel Squires <dan@engineeredarts.co.uk>
wrote:

> We are trying to run some built binaries as a task in a recipe as a part
> of unit testing. This can potentially get complicated (though I feel it
> could/should be abstracted away) as it may need to take care of
> architecture differences between the host and the build target but for
> now we are happy to just run for the cases where these match, and
> possibly later look at using qemu.
> We are struggling to find any examples of this being done in existing
> recipes. We managed to manually run what we want by copying built files
> into the recipe-sysroot directory and using fakechroot but feel there
> must be an existing way to achieve what we want, and that we just
> haven't looked for the right thing.
> We have also found some docs re ptest however these seem to all relate
> to running tests on the final resulting image, we wish to be able to run
> some tests before this, on individual package builds as part of CI.
> Can anyone give any pointer re this?
>

My suggestion is that you do it right from the start, and use qemu even
when the architectures match.
There is a helper class for this: meta/classes/qemu.bbclass. Look at
existing uses of it for inspiration.

Alex

--0000000000002f1b8d05c55a4f36
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Tue, 22 Jun 2021 at 14:49, Daniel Squires &lt;<a href=3D"mailto:d=
an@engineeredarts.co.uk">dan@engineeredarts.co.uk</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">We are trying to run some =
built binaries as a task in a recipe as a part <br>
of unit testing. This can potentially get complicated (though I feel it <br=
>
could/should be abstracted away) as it may need to take care of <br>
architecture differences between the host and the build target but for <br>
now we are happy to just run for the cases where these match, and <br>
possibly later look at using qemu.<br>
We are struggling to find any examples of this being done in existing <br>
recipes. We managed to manually run what we want by copying built files <br=
>
into the recipe-sysroot directory and using fakechroot but feel there <br>
must be an existing way to achieve what we want, and that we just <br>
haven&#39;t looked for the right thing.<br>
We have also found some docs re ptest however these seem to all relate <br>
to running tests on the final resulting image, we wish to be able to run <b=
r>
some tests before this, on individual package builds as part of CI.<br>
Can anyone give any pointer re this?<br></blockquote><div><br></div><div>My=
 suggestion is that you do it right from the start, and use qemu even when =
the architectures match.</div><div>There is a helper class for this: meta/c=
lasses/qemu.bbclass. Look at existing uses of it for inspiration.<br></div>=
<div><br></div><div>Alex<br></div></div></div>

--0000000000002f1b8d05c55a4f36--
