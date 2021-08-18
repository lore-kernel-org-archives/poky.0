Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web10.51179.1629270918654490559
 for <poky@lists.yoctoproject.org>;
 Wed, 18 Aug 2021 00:15:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Qhk17Ivu;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id o15so937467wmr.3
        for <poky@lists.yoctoproject.org>; Wed, 18 Aug 2021 00:15:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=t2tvVKHjtWVHfVSNv864WJ8pHiiWhcoBbGOXJQR+eMI=;
        b=Qhk17IvuC/HMJ45NcGSJYXUlJ7w9GHE6jLXlCa92yCad1J9JVDLThG+CnnWBWKslJ4
         BX5cWg1sQJB/AktGlCYNpeg1H7vHmt10yAp03uWMYiPZsw8ReNzeBL/qeM7h3FL68lId
         miKy78+2VeqMuBSwfY0sYAolBdFu4LYq939Ks=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=t2tvVKHjtWVHfVSNv864WJ8pHiiWhcoBbGOXJQR+eMI=;
        b=aHoO2FCTarh+Cmi0dmdW6ukPNUdnjH2OW8eDc8jrjoJUwjAR5VLS3NUCssdrXklkbF
         QoZQDA/9kMwFFW80Kdmwo1hTIZ5FeDuGj7XF6Xh9joGoFqqPojanQNVxXKPH1mpobe/6
         VmoFjsJOSHpGcH8EuhuJX9ACNg5WJd3/mhVtKNkWV8Tc2v58yD7B4hXZhp+QwJ2c5xsv
         /xtF6af6kdOJlz1Un0zJFtwvU1qM7TEI8NZNMu0W35j9gcgZO/JNk42oK/azlqt6wEEa
         fA/+gPZU4MKw53gZM9B4mJbIbgdyE8MuTGwvxf3b2bY+fDZTLmXHhHiQEyhkfaAjEyPH
         sBAg==
X-Gm-Message-State: AOAM5328qQ4WZ4LvCgg4Fb4fyRs1yZhBtdj7D2E/JgLn09FT3KFOLfhi
	kcau4cwUXUD3qz57Sv9FQxdAaw==
X-Google-Smtp-Source: ABdhPJxlYhlV+pTkrJXBwa5+O6Z33K/mTPrIeNu93AvRFvFIGBEuAynPGGuT7fhGcWk80vVyKQiiMg==
X-Received: by 2002:a7b:c185:: with SMTP id y5mr7139471wmi.2.1629270916948;
        Wed, 18 Aug 2021 00:15:16 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:2c5b:67f4:375e:5ae2? ([2001:8b0:aba:5f3c:2c5b:67f4:375e:5ae2])
        by smtp.gmail.com with ESMTPSA id r8sm5004101wrj.11.2021.08.18.00.15.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 00:15:16 -0700 (PDT)
Message-ID: <3c57bb766749d9db7f179edb313574209ada5681.camel@linuxfoundation.org>
Subject: Re: [poky] multilib32: libtool-cross_2.4.6.bb configure failure
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "Geller, Nir" <nir.geller@servotronix.com>,
 "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Date: Wed, 18 Aug 2021 08:15:15 +0100
In-Reply-To: <VI1PR0702MB3695095B3B3F5644E1CED65C90FF9@VI1PR0702MB3695.eurprd07.prod.outlook.com>
References: <169BCA55EF9029C7.23238@lists.yoctoproject.org>
	 <VI1PR0702MB3695095B3B3F5644E1CED65C90FF9@VI1PR0702MB3695.eurprd07.prod.outlook.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2021-08-18 at 06:14 +0000, Geller, Nir wrote:
> Investigating run.do_configure suggests that in the configure stage oe_runconf() is set with what seems to
> be wrong –host and –target values:
>  --host=armmllib32-linux-gnueabi   --target=armmllib32-linux-gnueabi
>  
>  
> Executing
> bitbake lib32-libtool-cross -e
> Yields, among many others,
>  
> 18513 # $TARGET_VENDOR [3 operations]
> 18514 #   set /home/build/tisdk/sources/oe-core/meta/conf/bitbake.conf:132
> 18515 #     "-oe"
> 18516 #   set /home/build/tisdk/sources/meta-arago/meta-arago-distro/conf/distro/include/toolchain-
> arm.inc:15
> 18517 #     ""
> 18518 #   override[virtclass-multilib-lib32]:set multilib_global.bbclass:159
> [multilib_virtclass_handler_vendor]
> 18519 #     "mllib32"
> 18520 # pre-expansion value:
> 18521 #   "mllib32"
> 18522 TARGET_VENDOR="mllib32"
>  
> Later, HOST_VENDOR  = "${TARGET_VENDOR}",
> And HOST_SYS = "${HOST_ARCH}${HOST_VENDOR}-${HOST_OS}"
>  
> So the variable SYS_HOST is expanded to armmllib32-linux-gnueabi which seems to be wrong for lib32-libtool-
> cross.
>  
> Manually running the configure command with –host=arm-none-linux-gnueabihf is working properly.
>  
> Can you please suggest how to fix this issue?
> I suspect it will come up in other packages as well.

I think there is a dash missing in the TARGET_VENDOR setting, it should be 
"-mllib32". I think the TARGET_VENDOR_virtclass-multilib-lib32 is therefore set incorrectly
in your configuration.

Cheers.

Richard

