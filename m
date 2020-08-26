Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com [209.85.217.44])
 by mx.groups.io with SMTP id smtpd.web11.15343.1598456777887756706
 for <poky@lists.yoctoproject.org>;
 Wed, 26 Aug 2020 08:46:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZiYMsUAG;
 spf=pass (domain: gmail.com, ip: 209.85.217.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f44.google.com with SMTP id e14so1184388vsa.9
        for <poky@lists.yoctoproject.org>; Wed, 26 Aug 2020 08:46:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2+M0CVs5rd/L1GWPC+rg4cWM74raoRYsO/huZ0YcguU=;
        b=ZiYMsUAGCGVcYYQYJViC/dTL4bqPaxvxQEfook1qL/aytXvD9gSvyp58KuwZW/uGzQ
         liBkbDZKp0VWpwSJZVPq6k4G3R1AswvIKvv6rBsvYkafUXBjCAMlzSa2j5gpLRVbPp4V
         G+ZQ2JGRaAvc/AvC8eQYptczanEA/xXgZSL4MjU3k1tuMWLnwQDkcrMHYxivmXBzSjcp
         MMzVKUal6DK97e4nrR+9AjeJtLs3IdFCuacqWFlg791G94U03Ujkvzx+ukDl8DHlwIPv
         1E/4vcSLKabpfyc87NIOnqP/3ltn5VlQxwmzt6TDQa4+DFnH92VK9i03fMsalBchfbIQ
         VkTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2+M0CVs5rd/L1GWPC+rg4cWM74raoRYsO/huZ0YcguU=;
        b=Jsmtpzejufr6hqEWLsGN8fwskJQm/p0bc2aesf3YuDdGvGx51QE2zJuTm6TFxAKrC7
         QW3CKL4S62V72jODdFp373SgDuIFjE8ofz8UZFfnpnjxOFmNSn7nvX/g2xoDMfhNfbLi
         Lg7iEAXyZ1nGpI92loadREx6GfXw6lLy9FQYcWfPjLPHRvBX2TSAHxcEkRn/Suo+pOGj
         aO6xf8FUuVwULpbvE7DcJbNvxE3gI5u3Ulv1+3oZLI51SNdhVqnpid0Rw3iGWH5MlqfL
         pX5RmvPbhXFP3/XWCJiW52HXpx92yMByaX3ZdWqWCOX6Atb6Sr9W6X/p5kbe5xcfWRGc
         dbtw==
X-Gm-Message-State: AOAM533nvN4x8KniwwdqYp0VXe4XEvFpr2JyJxRHnYLN1iPoeXWbGD8G
	xFuQDLPq1u3TCeWihjqvARdjl6fgweDtpwi41A0=
X-Google-Smtp-Source: ABdhPJxq7KmxnlxB4fJWbJJOVl97rcgWRaxLMpNVmAksw5LEXNipbAAEamrhU7nxmzh97UmLnFq8/hvzMGmKQdAKpas=
X-Received: by 2002:a67:b342:: with SMTP id b2mr9533842vsm.224.1598456777068;
 Wed, 26 Aug 2020 08:46:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200826145206.6871-1-alex.kanavin@gmail.com> <3adabcedbdb85a19e12d0bb3f50a99d6030affa2.camel@linuxfoundation.org>
In-Reply-To: <3adabcedbdb85a19e12d0bb3f50a99d6030affa2.camel@linuxfoundation.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Wed, 26 Aug 2020 17:46:05 +0200
Message-ID: <CANNYZj94DOMzkj8ND65SDZNAF7ytaSJXE6L_fKkVtU9Dt6mwFQ@mail.gmail.com>
Subject: Re: [poky] [PATCH] poky.conf: do not install packagegroup-core-device-devel into qemu images
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000062d6e605adc9b89b"

--00000000000062d6e605adc9b89b
Content-Type: text/plain; charset="UTF-8"

On Wed, 26 Aug 2020 at 17:24, Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

>
> A test build is showing this isn't going to be without issues:
>
> https://autobuilder.yoctoproject.org/typhoon/#/builders/57/builds/2343
>
> (the rest is still building)
>

The x32 test, and the multilib test both need binutils in core-image-sato -
probably should be tweaked in config.json, as neither test is added to
TEST_SUITES by default?

Alex

--00000000000062d6e605adc9b89b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Wed, 26 Aug 2020 at 17:24, Richard Purdie &lt;<a href=3D"mailto:r=
ichard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
A test build is showing this isn&#39;t going to be without issues:<br>
<br>
<a href=3D"https://autobuilder.yoctoproject.org/typhoon/#/builders/57/build=
s/2343" rel=3D"noreferrer" target=3D"_blank">https://autobuilder.yoctoproje=
ct.org/typhoon/#/builders/57/builds/2343</a><br>
<br>
(the rest is still building)<br></blockquote><div><br></div><div>The x32 te=
st, and the multilib test both need binutils in core-image-sato - probably =
should be tweaked in config.json, as neither test is added to TEST_SUITES b=
y default?</div><div><br></div><div>Alex<br></div></div></div>

--00000000000062d6e605adc9b89b--
