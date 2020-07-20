Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.web12.34211.1595238030979676849
 for <poky@lists.yoctoproject.org>;
 Mon, 20 Jul 2020 02:40:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=JYX61GPy;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.47, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f47.google.com with SMTP id z15so17112334wrl.8
        for <poky@lists.yoctoproject.org>; Mon, 20 Jul 2020 02:40:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=JyOpOp+GL4Uf0HR7tMlC0ARDNuP1fCPqzLKbSdf4/a4=;
        b=JYX61GPyxygKCTkqYYApF7oLW5t+F2+/e7QuYMo1nXaV57ZNv0emWSIjZOz0FlOwvb
         h8ADdchbuiiR6hzgOI8qLx+nG6RlIhEEVNsrcweEhtQuX7V15L4DJ6dPrq15q3K13JLt
         uF99cj51FBKdL+q7NeJbbcrY//9hUEdaK1FAI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=JyOpOp+GL4Uf0HR7tMlC0ARDNuP1fCPqzLKbSdf4/a4=;
        b=lhXNvSCp7PaNokf//tcK+F1z9czXHN57W8S6M5tB0wOZ/oqEYe3obbcpt/7q1SJkMX
         izgRk1jO9Mfctifveuucy0+FUy1xVhE85gL03sfBiiCaU3OpBRPejryonxGcYXm0c5NL
         Dh0ssxIEodKjuv6Mw2Rf/NRewkykcRyvsG29F4NGYbYAjr3XEwawQ95ENvnHEw076ETj
         7eKoeztIWxqJfFvYBJoLqg1UrwatlpEhWdgZBwCmnVdCSbtVyNpTUL60/SI5Jpd/N/fw
         QwznjEBhTD/GWHuJlb6fx4aqfU9Sf9HqzZOGykRkMkTGotI8xXwNrAaNQUIdxUIxsx92
         jRJw==
X-Gm-Message-State: AOAM531eQ5xYT6lykUlt5j/akB8/NyvIfUOdYx7CYcYsAaVqmKghGYON
	I7T0XatU1qlG8XDguTXo8GHKMA==
X-Google-Smtp-Source: ABdhPJzukKBhSLLg4eU9DYk6TehUD9zqgRrtusGC741XMdibekdZG9P27f48oMaOC3qlL3qbh519FA==
X-Received: by 2002:adf:82b2:: with SMTP id 47mr5068988wrc.17.1595238029432;
        Mon, 20 Jul 2020 02:40:29 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from 5.f.a.a.6.6.c.6.8.7.0.3.0.b.c.1.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (5.f.a.a.6.6.c.6.8.7.0.3.0.b.c.1.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:1cb0:3078:6c66:aaf5])
        by smtp.gmail.com with ESMTPSA id w7sm30001834wmc.32.2020.07.20.02.40.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2020 02:40:28 -0700 (PDT)
Message-ID: <c668d9ca3932e86a9b0d33bf762e9295a4690932.camel@linuxfoundation.org>
Subject: Re: [poky] How to add python debugger "epdb" module in recipe
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Ashish Mishra <ashishm@mvista.com>
Cc: poky@lists.yoctoproject.org
Date: Mon, 20 Jul 2020 10:40:26 +0100
In-Reply-To: <CAP2OjcjzERYy_yaJN_DX8nECZGfv=8nxV76JH7-vsU5JOHLWGQ@mail.gmail.com>
References: <LMzk.1595145312278580104.QGYU@lists.yoctoproject.org>
	 <2d1228d9f3c582a0aa958df7130b1c14a3bc11ec.camel@linuxfoundation.org>
	 <CAP2OjcjzERYy_yaJN_DX8nECZGfv=8nxV76JH7-vsU5JOHLWGQ@mail.gmail.com>
User-Agent: Evolution 3.36.3-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2020-07-20 at 13:37 +0530, Ashish Mishra wrote:
> Hi Richard ,
> 
> -  Any standard way of getting epdb installed .
>     I tried on the Host system  ( Ubuntu ) with similar steps
>      on dummy python code and epdb was working fine.
> 
> - On this same approach i tried using epdb with few other 
>    recipe but getting same error .

Looking at the traceback again, its in bitbake code so that is using
python from your host system. I was a little confused as you were in
the python-native recipe for the traceback.

Is epdb installed for your host's python3? Is that the same python3
you're using for bitbake (no buildtools tarball or anything)?

It should work if its available on the system's python3.

Cheers,

Richard



