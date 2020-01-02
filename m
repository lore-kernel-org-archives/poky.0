Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web12.10053.1577959502301937387
 for <poky@lists.yoctoproject.org>;
 Thu, 02 Jan 2020 02:05:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Gyej1oT7;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f43.google.com with SMTP id d16so38686290wre.10
        for <poky@lists.yoctoproject.org>; Thu, 02 Jan 2020 02:05:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=NFwLduPlS7mZkZ0n2u4NLBNL7xG80h+CPvhKAu+CfII=;
        b=Gyej1oT7dWZ/bM6qS2VvJDCKrsufg8YA0l/KfxBNRi0i+4855FytBNTcwlPvIekM7l
         2/vYJ6fAkR7qQbSHiekvkz4yFuSR+Ma3psK6BT8XlFazqwX36in7JVzOtDuoHCe8FI1A
         B5ZiwBdsS5yGkzCyTBZjJjxwkOODd41tvb5V0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=NFwLduPlS7mZkZ0n2u4NLBNL7xG80h+CPvhKAu+CfII=;
        b=MNopL6l1FIqJ0TbnpX7xv7ia8rhVvRiDsu/d9w8S2GABdJDLfSyVASFbyFR0VFUdUw
         YJEZL6VFaKaCVmop0ueI+9zqST1VQU6wJ+cHE4tVX/38559gI5VwKR2phZsxghxnIBpe
         r/kpINKHKV7Nwf4E6HwN0Grgbzux1c1v2IqJLyi0DAO71VEb8iwLdGkXQMDfp6PBOrEd
         666Wo3R8UjYcAkhsXl1uhFE2a51zf/9G1q2RoZcfu5lIKltrE5tGuxKWPvd1kOffi2yL
         tbyjEVtuyZdY5xPYMqEndW05gCNbP7WWyx4njYd5CmT+pK24phwsljwJjrmUiiObOrhI
         kMAg==
X-Gm-Message-State: APjAAAXaVMrLJE1ERVZtNBzl/wtXbkw9DEUb2rb+w83QYygl7dUXYemX
	M2ph3LNO92jsoscFVt4IRt+f3g==
X-Google-Smtp-Source: APXvYqyOuvk3ZQ8t2+VdBpYtS9wM+YOlznVZ+0c20e+B0EC+GMzdHrHTq+zsIMm6t9VF5YfxhAuH4Q==
X-Received: by 2002:adf:e5cf:: with SMTP id a15mr64058658wrn.140.1577959500647;
        Thu, 02 Jan 2020 02:05:00 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id v188sm8301425wma.10.2020.01.02.02.04.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jan 2020 02:05:00 -0800 (PST)
Message-ID: <e21c584995ec518916b0d46f15ca3b8073c17bcc.camel@linuxfoundation.org>
Subject: Re: [poky] Use case of MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS and MACHINE_EXTRA_RRECOMMENDS
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: AshishKumar Mishra <ashish.emailaddress@gmail.com>, 
	poky@lists.yoctoproject.org
Date: Thu, 02 Jan 2020 10:04:58 +0000
In-Reply-To: <HqdY.1577950763153024113.loFR@lists.yoctoproject.org>
References: <HqdY.1577950763153024113.loFR@lists.yoctoproject.org>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2020-01-01 at 23:39 -0800, AshishKumar Mishra wrote:
> -  I am trying to understand the use of MACHINE_(ESSENTIAL /
> EXTRA)_(RDEPENDS / RRECOMMENDS) use case . 
>    Was able to relate use case of "_RDEPENDS" variants but the
> "_RRECOMMENDS" is not much clear . 
> 
> Except for aspect of "required at boot time " , which other parameter
> can be evaluated to decide 
> MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS  or  MACHINE_EXTRA_RRECOMMENDS
> variant should be used ?
> 
> ( since both will any how build an image is the said package is not
> found )

RRECOMMENDS is used for kernel modules which may be built into the
kernel. Installation failure of recommends is not fatal.

Cheers,

Richard

