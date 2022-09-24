Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web08.4723.1664008211519520547
 for <poky@lists.yoctoproject.org>;
 Sat, 24 Sep 2022 01:30:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=gZPen5x6;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f52.google.com with SMTP id bq9so3171992wrb.4
        for <poky@lists.yoctoproject.org>; Sat, 24 Sep 2022 01:30:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date;
        bh=qpWuYbRHZRmPrChX7KvusUiWvmRhoOy78XIc2pYGuT8=;
        b=gZPen5x6WxB5/N8V7YO2VwJVJJw5xZ/dL1+n3IUmfJTx66/mrvi9VltbR0KdoXyqM9
         DAeQHZMteFT84IydM4G0xwLYrKPTJrT/0+50sTCJmR/qI3LtmIVGgvpwWYaXzQu815KX
         r5kGEbN9W6raBntZMBMV6mRZMLNHmPteW2MOI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date;
        bh=qpWuYbRHZRmPrChX7KvusUiWvmRhoOy78XIc2pYGuT8=;
        b=QuwW1KvIlMwN9mQYlI2tGp9fyyNjr7VqEIBWZ9OvN+yFb+QWtBwE2PwBNG+69wEX6a
         IXQuyYDlDxBBx0hpqtueEdDsQsveCqCqnUUihupyyRL4qcMcPCkDkpIQ/U/a0Xt+6em5
         5esOz8zmwI5R8pfbR9VJC2U7EokMSBODBMb9neCp2F9k4aNj+BiuU2/Tykgqxs1lY50K
         j0Kj1J6+o4nOEIwIJ1bS2Oktfmc4HcGWi1TXBoBKKdXxan/uZS1RN5W1jbVDHaSgZLJU
         yVzg1vxlVVaHYwPOrb4DKsbAKzA0eRw1XB192t/BGQVJ7ZVcpIRz1rH6CqwgGc5/V7bn
         xB8g==
X-Gm-Message-State: ACrzQf3IwCwizEhq8Eu0rqaeQqz9G2K/B6SkV0BwmahwksD5BxPV0hJH
	MitMXs60vO91XzdCVRaaZdI+Kw==
X-Google-Smtp-Source: AMsMyM4Pw+HcAMlfOYj4csw+/cukpBNCkvSCkHcaVlgMq3x1OFU1hhqjDst5lmgAZgbNmILQEwxqRw==
X-Received: by 2002:a05:6000:14c:b0:22a:c14a:29f8 with SMTP id r12-20020a056000014c00b0022ac14a29f8mr7477135wrx.588.1664008209807;
        Sat, 24 Sep 2022 01:30:09 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:8e95:ae13:a352:4381? ([2001:8b0:aba:5f3c:8e95:ae13:a352:4381])
        by smtp.gmail.com with ESMTPSA id j16-20020adfea50000000b00228dbf15072sm9283392wrn.62.2022.09.24.01.30.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Sep 2022 01:30:08 -0700 (PDT)
Message-ID: <184efa8d4238e84dd00e5d8ebfc417d21ee56887.camel@linuxfoundation.org>
Subject: Re: [poky] image-live.bbclass: LABELS_LIVE not used?
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Jan Vermaete <jan.vermaete@gmail.com>, poky@lists.yoctoproject.org
Date: Sat, 24 Sep 2022 09:30:06 +0100
In-Reply-To: <CABF_=yg3sT5aYojUcpqFJ2ZR4LHdx0xbnWfW=t50RyF=ePj0vg@mail.gmail.com>
References: 
	<CABF_=yg3sT5aYojUcpqFJ2ZR4LHdx0xbnWfW=t50RyF=ePj0vg@mail.gmail.com>
User-Agent: Evolution 3.44.1-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2022-09-23 at 20:15 +0200, Jan Vermaete wrote:
> Hi,
>=20
> Could it be that the variable 'LABELS_LIVE' in the image-live.bbclass
> is not used at all?
>=20
> I can't find it in any (used) layer. But they are there in grub when
> booting from USB.
>=20
> I'm kind of lost, for now...

See set_live_vm_vars(d, suffix) in live-vm-common.bbclass which is
called with suffix set to "LIVE".

Cheers,

Richard

