Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web12.260.1583259792678526622
 for <poky@lists.yoctoproject.org>;
 Tue, 03 Mar 2020 10:23:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=YA0Snxbt;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f47.google.com with SMTP id y17so5658206wrn.6
        for <poky@lists.yoctoproject.org>; Tue, 03 Mar 2020 10:23:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=QjKZGm4LCNB29HxNpo8PGTEtCWU1cve9IlO/poTuc3g=;
        b=YA0SnxbtV5hDzUpE32Wj4aDm+/uUJd4s+o3kWAVBLTWd2ul7YVm9+XKXKG1t8w7Tcv
         fJgPyIfQJJba6LYa9DUvAA3LZ8lBjG+4ONaChCJfcVAoeWZaJv21sOuUfrx/UWTUymwv
         /tKJbD+Sa8JsPXXJO6FH8x5XB4gDgxJA13A3k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=QjKZGm4LCNB29HxNpo8PGTEtCWU1cve9IlO/poTuc3g=;
        b=HbkCeG1HSIfxScvvmrepm6MybN+/+f171Wu69+n1FDZqsTFODRKDgKwzVfh/1QQint
         ZQqkvz6q7Nuj/94HtSZBAc2SDHbK2fEwtJ/2M7oVDTgF2C2y+qLpEHodW1htSWCzr1k8
         3cJ1h70lMH2NZUWbz0JMDnleMVK/MXMqJJni8bfwFZfh1ZNIolXIWouuO+8AFYULHleb
         ff2ZnNh596pwp+rmzRCbT5scqolIobPte+Ed020kz1w3R6BQWnocluLIW302AbJ1vOXr
         jrq6wbZMkdkUKMGDWtn7EulKDIlQFIJ1ToIGzd/EK5dYQodLtzd+0K9l8Cq/bP0s6Ntt
         vgoQ==
X-Gm-Message-State: ANhLgQ3G/TCphuIP+CXZgmuK1k01Dc8MPElT7AqVO6p++dQQEaPS+V5n
	onF1woE4oP4BiKO4w0i6mUTe3w==
X-Google-Smtp-Source: ADFU+vtzvK5Yp4hCpGiKP2rECAc2vmf937G5yBV1Xl468k2aBc3/xCukEQN/zptw47mS8MtBk0X06g==
X-Received: by 2002:a5d:4c92:: with SMTP id z18mr6608954wrs.294.1583259791159;
        Tue, 03 Mar 2020 10:23:11 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id a6sm5310525wmh.32.2020.03.03.10.23.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2020 10:23:10 -0800 (PST)
Message-ID: <5e32c7e4ec004c6e14b778f7a1f52d967bd4f0b6.camel@linuxfoundation.org>
Subject: Re: [poky] Enabling additional languages
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Khem Raj <raj.khem@gmail.com>, poky@lists.yoctoproject.org
Date: Tue, 03 Mar 2020 18:23:09 +0000
In-Reply-To: <45f139f0-4312-0ca5-c273-03ac012ee388@gmail.com>
References: 
	<CAGNn0hYGyrVuse7oK8vwJhkLHudYCpnfESt9uuuMChQhhKhGyQ@mail.gmail.com>
	 <45f139f0-4312-0ca5-c273-03ac012ee388@gmail.com>
User-Agent: Evolution 3.35.91-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2020-03-03 at 10:08 -0800, Khem Raj wrote:
> 
> On 3/3/20 9:33 AM, R Srinivasan wrote:
> > I am looking to enable ada while building the gcc cross. Can
> > someone 
> > point me to any other recipe that does something similar? Like gcc
> > with 
> > fortran.
> > 
> 
> we dont have pre-existing knob for ada but it should be easy enough
> to 
> add, please follow on the footsteps of how fortran is
> enabled/disabled
> perhaps a starting point would be to define
> 
> ADA ?= ",ada"
> then add it to
> LANGUAGES ?= "c,c++${FORTRAN}${ADA}"
> 
> in meta/recipes-devtools/gcc/gcc-configure-common.inc
> 
> you might have to also take care of packaging ada runtime later in 
> gcc-runtime recipe.

Enabling fortran is documented in meta/conf/local.conf.sample.extended

Cheers,

Richard

