Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web12.3862.1578392512778877660
 for <poky@lists.yoctoproject.org>;
 Tue, 07 Jan 2020 02:21:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=gz1v7zLR;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f52.google.com with SMTP id z3so53287129wru.3
        for <poky@lists.yoctoproject.org>; Tue, 07 Jan 2020 02:21:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=HHz3CwQOpLK0nvbr/m7dynLcNbV8KtVEeBzcQraCy70=;
        b=gz1v7zLR4P9vNzugbFNhDOkGpAg6yAFKghlRVotTC70lzQ0Cd0vfQXKKTETeW/d35F
         u2HubwI8TwMwrO9ygh3SWcEEJpGDoLYV/+azlqE/nIpFlJjUzaBaLTVtKSyi0IPcznpj
         4DC0VfXyc+QgjxCVaQqkkjsyzXJwiGGTGEuDk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=HHz3CwQOpLK0nvbr/m7dynLcNbV8KtVEeBzcQraCy70=;
        b=DsUWvJus/W59rt922zh7GakCClh7d+HfTAGb5hU9kojPTN7EVWSAVuvq9qf45UUaVg
         +TDscXCKZA82VCZOogzlrdhTeauavQ3rdSFlx5H7c/14bQG+WvW7tw+82HDYbudm5+Wv
         RUq7968QjLzXWF4Xq/k5E8boxALXQ42OjKeMxQ8MxdSbw1Sfo1tg1XYJgtynulHQJ8Pu
         LtsMyoV/zpQk+7tsAEksCNpNAsVmNX5L9/0l51P0imQM1Cg78n+AOI7ewTd+skUYZe6P
         bgupo6yHbK/nr9Hu3cFXfW6Ip94+pmfPVjsvCzbKoll9ihlbjIdl7c4dbzxvnRk3Wa8o
         qI5A==
X-Gm-Message-State: APjAAAVCmB+ssZq2oadz9XUrLI+s+W3hgmQ2HO5q3TskeU4dFYypil61
	7OISxLIYA83SrJJ6ZXjtPROhwA==
X-Google-Smtp-Source: APXvYqw7RZ8hXOAWziHm9bFQ5edmwd0e+U1dpulRKlG8wTkHfv6PdcHsnKNgOXMerPYg4FawkLMB5Q==
X-Received: by 2002:a5d:6748:: with SMTP id l8mr110949936wrw.188.1578392511183;
        Tue, 07 Jan 2020 02:21:51 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id z6sm78122426wrw.36.2020.01.07.02.21.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2020 02:21:50 -0800 (PST)
Message-ID: <b6945ce213eb80bf2d9cc3fd752d6ab53969fd8c.camel@linuxfoundation.org>
Subject: Re: [poky] Bitbake fails to create SDK meanwhile can create image
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Ashish <ashish.emailaddress@gmail.com>, poky@lists.yoctoproject.org
Date: Tue, 07 Jan 2020 10:21:49 +0000
In-Reply-To: <WQx6.1577962852433588681.umzP@lists.yoctoproject.org>
References: <WQx6.1577962852433588681.umzP@lists.yoctoproject.org>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2020-01-02 at 03:00 -0800, Ashish wrote:
> Hi All , 
> 
> bitbake -c populate_sdk  <IMAGE> fails with below error :
> | checking target system type... Invalid configuration `x86_64-build-
> config-policy-basicsdk-linux': more than four components
> | configure: error: /bin/sh ../config.sub x86_64-build-config-policy-
> basicsdk-linux failed
> 
> But for same setup i am able to generate an working image using
> bitbake -k <IMAGE>
> Here IMAGE = images/armour-whiplash-image.bb  & DISTRO
> = conf/distro/build-config-policy-basic.conf
> ( both derived from qemux86-64 )
> 
> 1) Can member please provide any pointer / debug step as why the
> binutils-crosssdk fails to compile 
>     when SDK is created but compiles fine when image is created. 
> 2) I even tried with cleanall option with binutils , but same
> behaviour .

I think the issue is you're using a DISTRO name with dashes in (build-
config-policy-basic) which is confusing autotools.

Try using something without dashes.

Cheers,

Richard



