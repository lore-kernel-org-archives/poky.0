Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
 by mx.groups.io with SMTP id smtpd.web12.7080.1576835963881354108
 for <poky@lists.yoctoproject.org>;
 Fri, 20 Dec 2019 01:59:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=LiZY2Kpf;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.67, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f67.google.com with SMTP id p17so8582950wmb.0
        for <poky@lists.yoctoproject.org>; Fri, 20 Dec 2019 01:59:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=2hByq0tTrVh6mChGD01KbdbScMvbLZllGE9I7hVaeFk=;
        b=LiZY2KpfgvWdQhPP0NfSnqE8H3NIVw7eMOtfiQAMy88v58FF/eZXMgbZqUG7cleq3v
         RwujaWidygs6wrwu5R3xsPVtAtNg7k3ZL9G67UMtV3csFFIqLvARTnLEDhfBQMsHDTBw
         ZEoOWiD0eCG7SZWMtQi0dlju9Crr+dibKgAKo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=2hByq0tTrVh6mChGD01KbdbScMvbLZllGE9I7hVaeFk=;
        b=IfvJvhnnvpcdqtrYcPN39p5sC/K0eCYsptpdbcQ0sb6HvRLGTE1UhfJacEeawXYY8g
         Lx/kh5pChUATlVyMyaDx8kbJ8/TtNGDayRy8HaSOQKD/OmxDsIoqGKf7NRzgVWccyGrb
         hA/4Ypyp9UJnYcjR5hZhmHiEO8otbeVnkc24mjVMh0ATBZbhd+lx8FgVxqBw+3d7bjm7
         f0aPigqfHAFle6jhV5acswJYOADC2i2DPa02IzDu9XkX0IwCfcgyJuheuSUn8Lxg2D16
         JXFcyemTaT58V9h7n3B6dXPheFK63tKbcwh6lxH4eZ9dDqb/Mi7xm7IINInoDA1eJ1tk
         eubw==
X-Gm-Message-State: APjAAAV7m0wTpu5eUOdbGaoPt0kVWIEXFb74p6E8sWdFX37iGE0aREka
	9Xih0NnHH8IpDRUaux+mKIxCZg==
X-Google-Smtp-Source: APXvYqz2uy4QcKMhOfNK7jHQZI1/B+F14IVw4vjf6h/2Idf70PG9u/xRpUMGKDrydixCrD/nN7HXXA==
X-Received: by 2002:a05:600c:2050:: with SMTP id p16mr14473711wmg.176.1576835962290;
        Fri, 20 Dec 2019 01:59:22 -0800 (PST)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id n16sm9463998wro.88.2019.12.20.01.59.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2019 01:59:21 -0800 (PST)
Message-ID: <5c6b33e3493ba3dc16df456b30659a436e7093c5.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] bitbake: fetch2/clearcase: Fix tar command
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: CHerzig@Gauselmann.de
Cc: poky@lists.yoctoproject.org
Date: Fri, 20 Dec 2019 09:59:19 +0000
In-Reply-To: <OFEAEACFD3.E9A6C7FA-ONC12584D6.00328273-C12584D6.00341DF6@gauselmann.com>
References: 
	<OF0F51A1C8.E86D40CA-ONC12584D5.004CC303-C12584D5.004CEB63@gauselmann.com>
	 <be0c8a76ab8ef3a42a3d83e44f0fb73bb256a143.camel@linuxfoundation.org>
	 <OFEAEACFD3.E9A6C7FA-ONC12584D6.00328273-C12584D6.00341DF6@gauselmann.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2019-12-20 at 10:29 +0100, CHerzig@Gauselmann.de wrote:
> Hi Richard, hi poky-list 
> 
> first tests are showing that the chdir is not required (yeah :-)). 
> Before I I call it a day, I'll start a complete build from scratch,
> When the resulting image comes to dance, I'll provide a patch-
> candidate next monday before christmas. 

Thanks, the patch also needs to go to the bitbake-devel list.

Cheers,

Richard

