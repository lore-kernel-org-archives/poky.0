Received: from mail-ua1-f66.google.com (mail-ua1-f66.google.com [209.85.222.66])
 by mx.groups.io with SMTP id smtpd.web11.12196.1598447865737472542
 for <poky@lists.yoctoproject.org>;
 Wed, 26 Aug 2020 06:17:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=iP9FJeRO;
 spf=pass (domain: gmail.com, ip: 209.85.222.66, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f66.google.com with SMTP id v20so539867ual.4
        for <poky@lists.yoctoproject.org>; Wed, 26 Aug 2020 06:17:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=X3DLNNnAZYxND1IWsvWWEb8gGrZEKnioB9JHWaWf6Fg=;
        b=iP9FJeROO0HJYkyd0J+SyXYSWwyqSGi4Y3fv5Qqw4Iwqqz2ev14Fz6UP+WUk26q6Ac
         afB5YNSk/I7M9XNwiYvq3sikQUXCi53IPRH+2eirgGzpyycQqCEGC7y7VPBJGswv55+T
         eGGJcTh5Q/lBWPmU1s6nucjx2nz7OsehZgmxjYJlsMeCukMoj0khhtyyA0yFnBTd89NK
         0BfGlp/KjIDIPz1yYFc/IiLHE/ZF7usl58kTGUlDJFyE723G4Tma/edw/Gwl0r4IJRD4
         wPwSGAkZo/6amKaIjBRlem2ArfV18RJXpaHzWf1iGlLPUuoNLC1EOLG60f3u1w4Thht7
         ekIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=X3DLNNnAZYxND1IWsvWWEb8gGrZEKnioB9JHWaWf6Fg=;
        b=QAzezc5tWOk3a9HTLPzJ8dP6G3DSW5Kwi4nTjoba9bsze2mNAIKXujFQ5+y0bAY6y7
         g2lO+s9eif8FadENg1wNg4mwUhogOs7Mt4bH3mCmnP0ubzwYeKnwHY0ACJY5i5GpkK5I
         1gNuRc69puIDOoOrz6jXR5EtCCURDC2CaebVt6SgZUfHq/AfVkOWttM5QSjtTVB3mHtQ
         dhplCQGXr8aQzFRHm2ASH1hKvDBWQRSd1/RNReqGjGf36eg39bPa5++NBQPbcaOGKkK7
         PHrvlwz2Ir5gdQAcWnFvUkQ7iXcEz+z18K3YvpWpiHEKQjhT88ZcD2NjVsuv9XVvg3sr
         aq9g==
X-Gm-Message-State: AOAM533hXizG6VFIhUysQVMgahuzGeNzLGhs/cxz0adfUz/YdOKY6spa
	GfshmNBYKlPzc5riXlvmY11pvsTX5SdbxqzSSo0=
X-Google-Smtp-Source: ABdhPJwgXhWSHmn3Fd4LwCCCoh9WnBkLRbYpsYIhL/wzunxx6QEeSdx/8De5gM0CO6tw0JyDXTcL7gLGU+nRp9MRJYA=
X-Received: by 2002:ab0:1305:: with SMTP id g5mr8085216uae.93.1598447864874;
 Wed, 26 Aug 2020 06:17:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200826113318.14604-1-alex.kanavin@gmail.com> <76f212f4f397343b36c7cf955a6b7b889859b89b.camel@linuxfoundation.org>
In-Reply-To: <76f212f4f397343b36c7cf955a6b7b889859b89b.camel@linuxfoundation.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Wed, 26 Aug 2020 15:17:33 +0200
Message-ID: <CANNYZj_a0A3vokFBfh-ibdCs+zUeboUa3G3deRd0Ft8wr=uwuA@mail.gmail.com>
Subject: Re: [poky] [PATCH] poky.conf: do not force packagegroup-core-device-devel into all qemu images
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000002d8b3f05adc7a5cb"

--0000000000002d8b3f05adc7a5cb
Content-Type: text/plain; charset="UTF-8"

On Wed, 26 Aug 2020 at 13:55, Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> I do agree its likely time to retire this, I disagree with the wording
> of the commit though and if we do this, we need to get rid of that
> packagegroup from OE-Core as its horrible.
>

Yes, that was hastily written, I'll rephrase.


> I'm not sure what the implications are for our testing which is my
> bigger worry.
>

I built and checked testimage with minimal/sato, which was ok. I didn't
want to fire a-full for a single patch :)

Alex

--0000000000002d8b3f05adc7a5cb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, 26 Aug 2020 at 13:55, Richard Pur=
die &lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdi=
e@linuxfoundation.org</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">I do agree its likely time =
to retire this, I disagree with the wording<br>
of the commit though and if we do this, we need to get rid of that<br>
packagegroup from OE-Core as its horrible.<br></blockquote><div><br></div><=
div>Yes, that was hastily written, I&#39;ll rephrase.<br></div><div>=C2=A0<=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">
I&#39;m not sure what the implications are for our testing which is my<br>
bigger worry.<br></blockquote><div><br></div><div>I built and checked testi=
mage with minimal/sato, which was ok. I didn&#39;t want to fire a-full for =
a single patch :)</div><div><br></div><div>Alex</div></div></div>

--0000000000002d8b3f05adc7a5cb--
