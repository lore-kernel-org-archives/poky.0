Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.web11.58658.1595865110675378731
 for <poky@lists.yoctoproject.org>;
 Mon, 27 Jul 2020 08:51:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=StD/Vl31;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f46.google.com with SMTP id p14so14258846wmg.1
        for <poky@lists.yoctoproject.org>; Mon, 27 Jul 2020 08:51:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=I5yVjK8QnIFjPq/cC0DJV007FiOAuG6w2RGNJw94w7Q=;
        b=StD/Vl31F+hMXx019GQdncb4F8VV0RBXWazW6aJpTuEpCPtKBTQhmJCrIBnwH41Cds
         AyItgKfL4Imb+Pp7uhI/o/n0HQL71n8ERtrGPHdlC7DGZ12qPJAC7XzibIoNplsXA6X5
         EPushABz3XcejAkGhd7mTlyRFX1k9uJesjqM8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=I5yVjK8QnIFjPq/cC0DJV007FiOAuG6w2RGNJw94w7Q=;
        b=JrcJDLQIVApDWanGHw2+oS0C7i6230eyR3y1vOsG8q4KIJI3FGiRcsWo2vT7EWc2i1
         s/581S17nEE1kNh41pFn91KaeKqipXgOb4n4nh4Z4GiC/3RH33MXSlEgcVMuhU0MqAST
         Fm6WLXRX1vyTyyj774t1SWyyjcC5IxcpNaTSE0zXqq77S0K6lOcBM+nGJXwQT2BEXwfG
         +rqfMccDC58BI6BnF2hvv2+NMcNAZDMXDf4P05qqpcYOhnYyBfRhjriuVc8qEY47ulh7
         2HSNlsuM1/68xy3CARJqCGlYz214PXQu5cZIC318syjQ7d4x/ylSZhXciHD9Y+itVAB4
         713A==
X-Gm-Message-State: AOAM531OlTaKi6xX5gprEDGBgPStghIRX+xJCH4v/8BqAENc7kUpi6Wd
	WQmyZUaUyE4vSCGjffNov/UmLA==
X-Google-Smtp-Source: ABdhPJz9e5BvIbuKWfc/8ORLcD/ZdKr6EENxFjByksDfcjVwFBaDqx+IOOLKNY6/hkkIeH4inX+UuA==
X-Received: by 2002:a1c:2805:: with SMTP id o5mr21487629wmo.25.1595865109166;
        Mon, 27 Jul 2020 08:51:49 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from 4.0.f.e.b.e.7.9.7.7.5.0.0.c.1.c.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (4.0.f.e.b.e.7.9.7.7.5.0.0.c.1.c.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:c1c0:577:97eb:ef04])
        by smtp.gmail.com with ESMTPSA id k1sm4395970wrw.91.2020.07.27.08.51.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jul 2020 08:51:46 -0700 (PDT)
Message-ID: <40f003823d3cd445b7d29ebec993aeb061d182d7.camel@linuxfoundation.org>
Subject: Re: [poky][recipes-multimedia] gstreamer-1.0-omx LICENSE_FLAGS
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Mostafa Saleh <moustafa.i.saleh@gmail.com>, poky@lists.yoctoproject.org
Date: Mon, 27 Jul 2020 16:51:44 +0100
In-Reply-To: <CAOGZMk5hLZ5aHTUrwbKmDuH6TTkRJfr6=94G51E8e7c5iZxeZQ@mail.gmail.com>
References: 
	<CAOGZMk5hLZ5aHTUrwbKmDuH6TTkRJfr6=94G51E8e7c5iZxeZQ@mail.gmail.com>
User-Agent: Evolution 3.36.3-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2020-07-26 at 17:04 +0200, Mostafa Saleh wrote:
> I was wondering why the "gstreamer-1.0-omx" recipe has
> LICENSE_FLAGS="commercial", although gst-omx has LGPLv2.1 license as
> mentioned in the source code ? 

This puzzled me too. Its been in the recipe since it was imported from
a layer which is no longer available on github.

My guess is that its a copy and paste error from the ugly plugins
recipe. As far as I know, OpenMax is royalty and patent free so this
probably shouldn't be there.

I'd suggest sending a patch to removing it, containing this information
and if nobody objects we can remove it. It would need to go to the
openembedded-core mailing list.

Cheers,

Richard

