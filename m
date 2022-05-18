Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
 by mx.groups.io with SMTP id smtpd.web12.7258.1652891646057129421
 for <poky@lists.yoctoproject.org>;
 Wed, 18 May 2022 09:34:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=S0wrCmoe;
 spf=pass (domain: gmail.com, ip: 209.85.160.173, mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f173.google.com with SMTP id h3so2026427qtn.4
        for <poky@lists.yoctoproject.org>; Wed, 18 May 2022 09:34:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Mt/CpS5MM5PEJYUZgxXEaKJP76EGV63/qpT4Di+pbmE=;
        b=S0wrCmoe4fZyEhTENIwHoMrg7ls6Z5ZbbdN46mQ+REfvoUEJ9s4iemR1ovWa8Zk7/Z
         Q2EvjAQbn6K9utgFjNaEWezOOhQITuvistl32M+uZu8YCZERJrA0N3A4Ob5SAchCt9UZ
         fdY2DXa7JLWjpbTXzuDFoqsgCw3MmHNF1WMt3Mu138zkwkLdQOyb5XA58Zxp8HJ0OpVX
         mEoNgyUrKnGva908qZWt0KCZRH0TFUHjf4h+kR1jUxp/rtVknR2NfDfh+s+l2S4Vd0eC
         eys9Ezb2FoINEdh99oHu9Ld56cxKoregZIgqIXYuad/r7vpZk0MeOzEngvuhPydKqX8z
         GxZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Mt/CpS5MM5PEJYUZgxXEaKJP76EGV63/qpT4Di+pbmE=;
        b=cUB9DguhDsO8DqmoMbCsJKEGTQOwuvQ5ngjfWzNHL+2L9WkQfGpNTpQjK3g5JrTg89
         8PoM2k7bIN3LnTsmVvSGp31RfbKipCfkw+/cl8Np3Xh5okd2Jnd8HpiFQyRs17/Jufyr
         5AxuwrQVIxiNguIR0qF2EiSjDQT2mzleIhyGsBStswooysUvIboMyGiPwIpsiL054O8W
         I9GXyU70b4af5jov1lC2WTJy6wYSbNGOjLkPwwzf2apNN4YsFPJ7WNbEw6CDzxgL14MQ
         zHBOZq4weAYOeWrX8csHjaO8kitF/gRBJqkcMw8mvjhdZ4vxTzp57JrVKgopXPwaOKt1
         rCGw==
X-Gm-Message-State: AOAM530mOfhL8S3lyq0nlIvMgRv1JxmPLlgoClETw9KnSRCKN0+JnIkq
	Q/8yXjbl+8YnCRpYMTIDYBkfw8BEyphBzm60KainYXj25Oo=
X-Google-Smtp-Source: ABdhPJy9ZtMSwkywZhLezJBc+TF3FJuhNs60khV+4oHNEphlb3T6EMEr1kZOW4r+smlWMF0uK/+kF1ouBRialq7I2kg=
X-Received: by 2002:a05:622a:18aa:b0:2f3:badf:beae with SMTP id
 v42-20020a05622a18aa00b002f3badfbeaemr535935qtc.229.1652891645111; Wed, 18
 May 2022 09:34:05 -0700 (PDT)
MIME-Version: 1.0
References: <e84bba5e-3d55-61e7-4809-70ff3960df51@gmail.com> <24270.1652891437431345669@lists.yoctoproject.org>
In-Reply-To: <24270.1652891437431345669@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 18 May 2022 09:33:39 -0700
Message-ID: <CAMKF1spQTZVKKW8=ntd1--7A7g_uGE=k4fVEih5nYmBN85XrMw@mail.gmail.com>
Subject: Re: [poky] Need suggestion to handle COMBINED_FEATURES variable.
To: Rahul Chauhan <rahulchauhankitps@gmail.com>
Cc: poky <poky@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

you need to remove it from MACHINE_FEATURES as well. Other option is
that you define your own image and select packagegroups you really
want.

On Wed, May 18, 2022 at 9:30 AM Rahul Chauhan
<rahulchauhankitps@gmail.com> wrote:
>
> Hi Khem Raj,
>
> Thank you for quick response.
>
> Actually i am using my own distro derivided from poky.conf and own xyz-machine.conf file.
> In my xyz-machine.conf , wifi is MACHINE_FEATURE.
>
> Since i dont want packagegroup-base-wifi in my build so i am using below line in my own distro.
> DISTRO_FEATURES_remove = "wifi" in my distro.
>
> So now my question is how to handle COMBINED_FEATURE to control the package/package-group installation.
>
> DISTRO_FEATURES_remove is enough in distro file.
> or
> MACHINE_FEATURE_remove also required in machine.conf file.
> Or
> Any one of the above is sufficient.
>
> Is COMBINED_FEATURES_remove = "wifi" is recommended by community..
>
> Or suggest me what is the ideal way to remove the combined feature from the build. (I dont't want to keep it in local.conf file)
>
> Thanks in advance.
> Rahul Chauhan
>
>
>
>
>
>
>
>
>
>
>
>
>
> 
>
