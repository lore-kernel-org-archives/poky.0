Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com [209.85.210.66])
 by mx.groups.io with SMTP id smtpd.web10.7684.1602666428669972446
 for <poky@lists.yoctoproject.org>;
 Wed, 14 Oct 2020 02:07:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=pzsILOTr;
 spf=pass (domain: konsulko.com, ip: 209.85.210.66, mailfrom: paul.barker@konsulko.com)
Received: by mail-ot1-f66.google.com with SMTP id n61so2720785ota.10
        for <poky@lists.yoctoproject.org>; Wed, 14 Oct 2020 02:07:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xd7QSzIPGFJlOjahNj35s7UX8oM6fO04UsWv9KZ7/rk=;
        b=pzsILOTr2N3ZQu0jzqW/i0jYBEwdXNTZyqTjkskItl/qtFhA2PrWhRBtwEV/TAMKov
         JHVTmk0iDldF376yMQ1Ue7qQTMJ4jjxnrmWi/X9x75hDE7pnZnoQb+juxdgbVhkfQo/7
         V+8RVgSmTwb3a5tRjufifeo0FJ7fFqnEO4gi0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xd7QSzIPGFJlOjahNj35s7UX8oM6fO04UsWv9KZ7/rk=;
        b=TdQ4AAP/uoSGOgaVvsLFkOlTHqg6GwJxUGAr7NmboI4Krnh1e19SkCzi07xmw+Cp6R
         G/UGNHcmmmxJsjUcLLWbDXf8lt6tuCZZCl/oYTG18r9A+fzgyjBXXox09tfWOLDtMb7P
         WsoZQW3JH7wdjWCpP+GTv5VSZMSKQ/6isZoSLuP4tZaPez+0KfX/qxnBWY6RwRG0Cifc
         YJuD3YwhwOWRAp2GpxSex8ky5RjukmIbM3tmaSn41wf69+qY4yfs3/QI2pxpJVxnKZFJ
         vmCVF4tiVnPbfZozClknKpne+sr9SMXNx5I/nSt04/DVAd/asAiiljiBAtl/BO3kGRM1
         nSZQ==
X-Gm-Message-State: AOAM530Xr2kX5Yomxntk3yJxqbR/zwOLZhdEfuOaDmrvH6wZ986cpviB
	6i/YoJGSXMrc9LxShWZdachT9MTFs4hoHga60t7GKA==
X-Google-Smtp-Source: ABdhPJwtmYrZEiJAF65Ah8HggnCQPOjGfM2FoXD8fMclDU5nmIHWr768zD2bXBp6TAVn1BMW0qCOEbHEs9qvRj6pN2w=
X-Received: by 2002:a9d:6d12:: with SMTP id o18mr87025otp.305.1602666427934;
 Wed, 14 Oct 2020 02:07:07 -0700 (PDT)
MIME-Version: 1.0
References: <6b4981f24196489ca92981d5201ec7fd@de.bosch.com>
 <16313426C15D0D14.16839@lists.yoctoproject.org> <35afcb9623794e7e94293343b7814646@de.bosch.com>
In-Reply-To: <35afcb9623794e7e94293343b7814646@de.bosch.com>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Wed, 14 Oct 2020 10:06:58 +0100
Message-ID: <CAM9ZRVv=Rm0AUFUoX5=9QmBq3riS1D9a+Qj8THuh9Qg+uLdGDA@mail.gmail.com>
Subject: Re: [poky] [PATCH] uninative: handle url in `PREMIRRORS` with parameter correctly
To: nico.mueller@de.bosch.com
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, 14 Oct 2020 at 08:16, Mueller Nico (TT-RHC/EIS) via
lists.yoctoproject.org
<nico.mueller=de.bosch.com@lists.yoctoproject.org> wrote:
>
> Dear poky-Maintainers,
>
>
> what further information is required in order to to get this patch merged?

Hi Nico,

Please re-send the patch to openembedded-core@lists.openembedded.org.
The email you've sent seems to combine a pull request header with the
diff - you'll need to send this as a patch with the commit message in
the body of the email. I recommend using git format-patch and/or git
send-email.

You can see more patch submission guidelines at
https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded.

Thanks,

-- 
Paul Barker
Konsulko Group
