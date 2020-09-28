Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com [209.85.210.67])
 by mx.groups.io with SMTP id smtpd.web11.913.1601315401270208327
 for <poky@lists.yoctoproject.org>;
 Mon, 28 Sep 2020 10:50:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=MAObW+vM;
 spf=pass (domain: gmail.com, ip: 209.85.210.67, mailfrom: toertel@gmail.com)
Received: by mail-ot1-f67.google.com with SMTP id m12so1820045otr.0
        for <poky@lists.yoctoproject.org>; Mon, 28 Sep 2020 10:50:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=W9weZy+jwLgBNLzPvk72o144Al/l5WxySpfMpik7dcI=;
        b=MAObW+vMkb82NTdQkf3HMgYpxxXaNEczVW/HDsRWDEoVdeHEy6lAQrij/UIBQxEyqr
         73LB97Icw/PT76tDGEI+y2YZi9PtKTo8AUyI51Dm9tlAY3UQb2pH4MngB/wo+/gYla9s
         Tc2w1GjPhMm2FHYRtdp+LERxZXDvOpXRHi9pJyjvUVamVDnYsnGrg2bwGtIF3fyNJHkl
         WRYoBQyKr50a6GI9c3DyikEDiCzeJp9bHevsI2k0iru+vYQDnDsh1umTsZ4v1UD5Tebd
         JbOhonEwT0icalKaEvg8gMKuBHuyfYcx5hIuZxn+k3Z/pXiUIuRQnv20PolD42fV/fkE
         1PAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=W9weZy+jwLgBNLzPvk72o144Al/l5WxySpfMpik7dcI=;
        b=SESSp51eiU5gROHtZlXOLgRveUsv//bdrvkktYaKZc+U2KMVN8JzrkPciZRNnbRrZn
         3+V5p8Mo7PtYwTIRoK3nVWiTC9HcyBfuCZJuEeo1ZoAxHIK1exdb6/yBORG7aVzKipxn
         9ZjaLW74b4MTkDQUKOnIw2DXH8Jze0pBX93RSAyQkph5te0YcHpXdnn66Ul/0BG7MMuK
         O9sSu41xbAi67wqHIbRjlC0IEPm6oYTp9xe2+bxlzvwA/yFdf1e3wJ4kbbzp9ChyLIUw
         TWiTeYcRGPMvOiUhvIslcJq0KLNKCxAHl+p4b33RjtvSHLTVQS/dXoBir8pKAsagO7yd
         i1+w==
X-Gm-Message-State: AOAM532VN1dFO4wtb5P5PPRVp2rDUyy1U2UGGac8slKoUxdL2gMDEcLj
	Ti7hUMwu4E1VTDQYmorUOfpviMkEPpUYmWXJGNB4bqqS
X-Google-Smtp-Source: ABdhPJxFXNI1QXwWUcB+3FIKz1DCidFFLLy9mfAGJqYYU+Tn3gLq2K/HvOpO/O4QoBCcTktKNeFBbIu3n0tiX89qKN4=
X-Received: by 2002:a05:6830:6:: with SMTP id c6mr136713otp.50.1601315400303;
 Mon, 28 Sep 2020 10:50:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200919131951.11129-1-toertel@gmail.com>
In-Reply-To: <20200919131951.11129-1-toertel@gmail.com>
From: "Mark Jonas" <toertel@gmail.com>
Date: Mon, 28 Sep 2020 19:49:49 +0200
Message-ID: <CAEE5dN385Lez85OSOKxSkdtWmyBRC_33RorW105=CDyC527+pw@mail.gmail.com>
Subject: Re: [PATCH 0/2] Map license names PSF and PSFv2 to PSF-2.0
To: poky@lists.yoctoproject.org
Cc: pidge@toganlabs.com, richard.purdie@linuxfoundation.org
Content-Type: text/plain; charset="UTF-8"

Hi,

Gentle ping about my patch. I am rather confident that I posted on the
right mailing list.

Thanks,
Mark

On Sat, Sep 19, 2020 at 3:20 PM Mark Jonas <toertel@gmail.com> wrote:
>
> According to SDPX.org "Python License 2.0" is the overall Python
> license, which is comprised of several licenses. "Python Software
> Foundation License 2.0" is part of the complete Python license, but is
> also used independently by some projects.
>
> So far the license names PSF and PSFv2 found in LICENSE are mapped to
> to Python-2.0. This patch maps PSF and PSFv2 to PSF-2.0 und thus
> corrects the impression that Python-2.0 and PSF-2.0 are synonymous.
>
> Mark Jonas (2):
>   Add license text for PSF-2.0
>   Map license names PSF and PSFv2 to PSF-2.0
>
>  meta/conf/licenses.conf            |  6 ++--
>  meta/files/common-licenses/PSF-2.0 | 49 ++++++++++++++++++++++++++++++
>  2 files changed, 53 insertions(+), 2 deletions(-)
>  create mode 100644 meta/files/common-licenses/PSF-2.0
>
> --
> 2.25.1
