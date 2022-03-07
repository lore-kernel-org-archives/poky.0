Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
 by mx.groups.io with SMTP id smtpd.web12.2318.1646680908005095211
 for <poky@lists.yoctoproject.org>;
 Mon, 07 Mar 2022 11:21:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=nr+0PlQn;
 spf=pass (domain: gmail.com, ip: 209.85.222.179, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f179.google.com with SMTP id b13so12822767qkj.12
        for <poky@lists.yoctoproject.org>; Mon, 07 Mar 2022 11:21:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Xv1jW4OSntvx1vy+5iKgWEEQG3stRP0oVEGt5jB+kHE=;
        b=nr+0PlQnuxH27zw1PjcLm+hcv8Zr6HwdD0gZEQWHgpekB6AlCwEUuOkguoYRUkI8Gj
         DiHDnrcWkmbjoT5g3Q+P5NHpdynLqHqT96yEHNt6wO6+QXqxdSSIShLmX7zPEhOhQ5GU
         AnDLPAHJL2YQdt9Lveox7KeSvMnN/x1GmJStcIsrLabJYw0UsKY/JrRzcjv8wRDPadMM
         KYXhq+JUx1EH10PVy8DRklb9YXHZW8iLOetukwyg/Y0mEz4J0FuwBCVPNmQD4zKrCA3x
         Ldm8hBqHLAMWYQfhViv4GGG+/vUcw3C8btAgDHjN4uI86yYT1uwKxy/MlIrqWBv1L/TF
         PrIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Xv1jW4OSntvx1vy+5iKgWEEQG3stRP0oVEGt5jB+kHE=;
        b=w1O1xETbrhx/fKpEueeWW4Eh28fzGgXph3l3fZ3vjeCbwnJHzmXkuLII+ybCz/9VjF
         w5wqllmuUvPDaPUx2G3ZedrLg0T4EfIKlH0iOhkYi0/DAZA0+egHKhQ+xUOgky9d6F89
         Ydnn6S7mGLqBKIjgNkhwFrcHQbZo6MAVkrpX1V/udkajk20z/irnsMQsQE+r5jNwqjxk
         ek0OTHPKK6i7AsUm+oa+qjk36Pg9XyAyj6VijGqOPYu/HA1j8LiU83PXTXCuXoaDz2LG
         83P9IblpYIXN11i6ey1H3OVZnFS2VDswmwhkI539fYZjxjljFAQVqmfHGIerxyHJMdIO
         s9Vw==
X-Gm-Message-State: AOAM533DpWlF5OlhgvDhUHzPyzc4j547RD64Knlgy/49cmFoausePlun
	H6iFyD8lws+Sls9zd7QB75vEsbSpsY7rkzS0AU8QKKabeSs=
X-Google-Smtp-Source: ABdhPJwfxGq9FBkvxWvLPRecyp1Gu8IbYocAnR1nhnhqbM5+J+i+yH1xTf0l1cWSy66c5cRKeBdUESiCOqmCp1PRFJc=
X-Received: by 2002:a05:620a:45a7:b0:67a:ec24:d3fc with SMTP id
 bp39-20020a05620a45a700b0067aec24d3fcmr7708145qkb.180.1646680907023; Mon, 07
 Mar 2022 11:21:47 -0800 (PST)
MIME-Version: 1.0
References: <2590960b-9ecb-19c0-8ac2-932f05688486@arvicom.eu>
In-Reply-To: <2590960b-9ecb-19c0-8ac2-932f05688486@arvicom.eu>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Mon, 7 Mar 2022 11:21:20 -0800
Message-ID: <CAMKF1sp2eLfDasn7-CfNrZLEFfS+CkhBA+ys2e0Kv8+zAgy+=w@mail.gmail.com>
Subject: Re: [poky] Compiling additional sources as recipe
To: Wladimir De la Cadena <w.delacadena@arvicom.eu>
Cc: poky <poky@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

bitbake is a meta builder, you can do it via a component Makefile and
let bitbake invoke the needed make targets.
but I think you need to clarify the picture a bit more of your
situation with some examples so others can help you better.

On Mon, Mar 7, 2022 at 2:38 AM Wladimir De la Cadena
<w.delacadena@arvicom.eu> wrote:
>
> Hello,
>
> I am trying to include external source code inside the vendor/xxx/xxx
> directory, and I dont know how can I use bitbake to compile it.  Bitbake
> receipe fetches only the prebuilts even after we changed the source
> directory which points to the correct directory, how to remove
> prebuilts? I tried to check if the particular task from particular
> receipe is called or not with bb.info logs but those are failing with
> another error how to add logs in bb receipe?
>
> Thanks for your help.
>
> Wladimir
>
>
> 
>
