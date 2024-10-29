Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6219D2AB2D
	for <webhook@archiver.kernel.org>; Tue, 29 Oct 2024 12:05:31 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web10.17656.1730203523960905872
 for <poky@lists.yoctoproject.org>;
 Tue, 29 Oct 2024 05:05:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=Ltn3dZiX;
 spf=pass (domain: linaro.org, ip: 209.85.167.54, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-53b13ea6b78so8326429e87.2
        for <poky@lists.yoctoproject.org>; Tue, 29 Oct 2024 05:05:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730203522; x=1730808322; darn=lists.yoctoproject.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aZrKja7g13sN+cU9rrYlMi2DoaTD+IpBRnOrvdAcnK8=;
        b=Ltn3dZiXoWWXUYTyvzUnPR/6jTTNv+4bMGELrrIPElRRl6n5KOXCdO+nNdlYQnSn+N
         UIbatFOw66FJGBVxUhtkTw1yDuHpVCiy+2d/UAO2PqI1e4QPl6/RH4M1e3ua7PGT/wBO
         tWLT/kJR9B2vzHPA7b+d5CnV2g0p5p/Gjz2K0QJDJrjICXc0UhW8eflZydeFFYD6j5RS
         smN6p3lwE9Wfa74eBMbtNXQ0TjNv6f7JePMwzpC9FdIpZ3kHs08qsk36zWvFLZ4UZXEd
         fl6mkAYK/KSd6gFsrPNzt9itWQ8Jb2RlxImr+7Fh4EluM+6nPYoBMtLfNZ5hUsUf1rTB
         WqeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730203522; x=1730808322;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aZrKja7g13sN+cU9rrYlMi2DoaTD+IpBRnOrvdAcnK8=;
        b=pW4y7m5++HiCxISvxsqhgrLV0mGdQg1MqCqy3zmDb5kACtsbGsqkhPK6BFeuMxgq16
         b+6cY9/Q2MRTwUVz5Z9G64uySogAx6C8zs9gKSlTe75rQwI5oIRCrZhYAdDdLT/JIovh
         7QbgxnhxrdoFpF8ccU+rospYAku8AqnOTe88tMG757+2GKlw4rC554tZ7MP6kPVMHftz
         WUlx1tCzTHOevhZDMhKLILPQ3HwE7PfACT1OQYbnVEkY0TePUBEILLQYYqnasfPhdteH
         ULEhHnPfBFw7tSpDy5G1sXzOkbwE/v79CmeN8ude4G7GYlnohkHyOuCGE65zDbC9BGJY
         +pbg==
X-Gm-Message-State: AOJu0YwzUwjwC0/WWr7vCpazlLE0WksaZA3RuISpcwOgvrkh7X3XDFQ2
	vs28+5W3sajERApG0wzQb3zhd5vHg92scOcd+1JIaJCgidUsCiWEipXgKhKS54c=
X-Google-Smtp-Source: AGHT+IHd95A6PI5v+J/TNyPBqXdjXZ4ROV7+YJyagFKD4YQdisvALA90znN8yVDNXURzM69bwrM9yw==
X-Received: by 2002:a05:6512:2311:b0:538:9e1e:b06f with SMTP id 2adb3069b0e04-53b348dacd3mr8546811e87.27.1730203521678;
        Tue, 29 Oct 2024 05:05:21 -0700 (PDT)
Received: from nuoska (78-27-76-97.bb.dnainternet.fi. [78.27.76.97])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53b2e12ccc4sm1364935e87.106.2024.10.29.05.05.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2024 05:05:21 -0700 (PDT)
Date: Tue, 29 Oct 2024 14:05:17 +0200
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Ross Burton <Ross.Burton@arm.com>
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH 3/4] genericarm64.conf: add "testimage" and
 "testexport" to default IMAGE_CLASSES
Message-ID: <ZyDPfSNniORKkPIW@nuoska>
References: <20241029080544.5486-1-mikko.rapeli@linaro.org>
 <20241029080544.5486-3-mikko.rapeli@linaro.org>
 <C8F03665-3B73-4BB8-9164-367F0F42C40C@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <C8F03665-3B73-4BB8-9164-367F0F42C40C@arm.com>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 29 Oct 2024 12:05:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13467

Hi,

On Tue, Oct 29, 2024 at 11:57:28AM +0000, Ross Burton wrote:
> On 29 Oct 2024, at 08:05, Mikko Rapeli via lists.yoctoproject.org <mikko.rapeli=linaro.org@lists.yoctoproject.org> wrote:
> > +# Run oeqa runtime tests outside of the build environment
> > +IMAGE_CLASSES += "testimage testexport"
> 
> Sorry, but this isn’t appropriate for the machine configuration.  The build configuration or distro can add these classes as needed.

Ok but where do we do this for genericarm64 images? Somewhere in yocto-autobuilder2
or yocto-autobuilder-helper repos? I presume poky distro will not set these.

Cheers,

-Mikko

