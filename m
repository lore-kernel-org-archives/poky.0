Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
 by mx.groups.io with SMTP id smtpd.web11.43343.1643683231116790946
 for <poky@lists.yoctoproject.org>;
 Mon, 31 Jan 2022 18:40:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=7aOA5wQB;
 spf=softfail (domain: sakoman.com, ip: 209.85.218.44, mailfrom: steve@sakoman.com)
Received: by mail-ej1-f44.google.com with SMTP id a8so49126457ejc.8
        for <poky@lists.yoctoproject.org>; Mon, 31 Jan 2022 18:40:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mwvkps27Da1jiuHQvGjDxy1b13CHfcjbEalgq8vF+UY=;
        b=7aOA5wQBO6ccac+Rbc65y7VY4zIE5Ih2GX6Atka2Qys+qiV3/4lqKHIjMPG/3aOJbb
         ZrL7wBwhjq8H19T8APjGvl6zpmhabSB3PjQQQ2h+EM0xoN2FhOCYmEN1nec9sDb7qcsX
         9zfIIMoVzl7OwGxA/dYD8P2SHC8TDYdbteXBSI+jakLpbUbKNuZDAt8Du3nVWIc59gu1
         gdiKMQt9odzfdkxr7Hbt7SlIxgGjh3RIFXJzmSTGjgqemDU+t9z71egIK872DP66NZXC
         VFTUqdGOWeRgV409TeEsc6/T05ChVXPrKCXZpj8qDPkeeNlvf6116PXIvY4IPJmbNWL4
         9Cfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mwvkps27Da1jiuHQvGjDxy1b13CHfcjbEalgq8vF+UY=;
        b=Uu/+V5pOOhiG4DOE/+AkLPTQ2fCUdMe1F6k2nf2kK/wmIrOOoxYsSyZTzzn+lb0u+V
         e/bokpDOaSGQYXVYS27/xkIizVgtFSdSZEHlDRsLgJnmocsig7ola8vtsDDQa7AjV0a8
         Eqd06UMhs9MTKA6H+a75DPKQ6TXad/jMN1xZtBEaYiCu51M8mndHKGDgzBQr7p6bf+5W
         OThZGhjngDFOK+X+vqztpuDmi34LPI51n8yONYPC9g+XI68fX/vQy5NxGvg2EMQ/pKsb
         EzsQPDPbVdP1dOxc6VzjIian1X7PK1rb+UFdHcTvDgGEmJVRF2MnnXVugN4Xlm1wMko9
         1x6Q==
X-Gm-Message-State: AOAM531C8GYrOrQnI+cIh0CIhQ34r1Lvf21/0KYRCjnA3E5jE8EOBm6t
	79T/Ydfen3V+voQhGnT1u6YriCcW4McWA3jSzjD7Cg==
X-Google-Smtp-Source: ABdhPJyk+sC1JrOrcq118uWk4bt67oQcN0ELYbCEtZDEjVC/VpBJSWZE0y+VeU3wCSzzylXsdrJDTvs3mKig6DXuK80=
X-Received: by 2002:a17:907:3d8f:: with SMTP id he15mr18952706ejc.246.1643683229196;
 Mon, 31 Jan 2022 18:40:29 -0800 (PST)
MIME-Version: 1.0
References: <20220127130610.3236399-1-jeanbouch418@gmail.com> <10591.1643673838206570800@lists.yoctoproject.org>
In-Reply-To: <10591.1643673838206570800@lists.yoctoproject.org>
From: "Steve Sakoman" <steve@sakoman.com>
Date: Mon, 31 Jan 2022 16:40:18 -1000
Message-ID: <CAOSpxdbcU_6CuqDR+-w_jbXk+nJgowsJwWFh60ctmOtPMSV+=g@mail.gmail.com>
Subject: Re: [poky] [meta-yocto][dunfell V2] Update the linux kernel to 5.4.172 for genericx86
To: jbouchard <jeanbouch418@gmail.com>
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

On Mon, Jan 31, 2022 at 2:03 PM jbouchard <jeanbouch418@gmail.com> wrote:
>
> This a version of a previous patch did I mess the reply ?

You typically won't get a reply unless there is an issue with the patch.

The patch is currently in the test queue, which you can view at:

https://git.yoctoproject.org/poky-contrib/log/?h=stable/dunfell-nut

Steve

> 
>
