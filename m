Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web11.10711.1620728433753994098
 for <poky@lists.yoctoproject.org>;
 Tue, 11 May 2021 03:20:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=cQas3VvZ;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f53.google.com with SMTP id l14so19567281wrx.5
        for <poky@lists.yoctoproject.org>; Tue, 11 May 2021 03:20:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=/q7sBzbBbeTuWPsoUT7pQjtPZecgNta8i8a9Kcl6IOo=;
        b=cQas3VvZR8in2FDglTI0TgiIodMd68+BpVT+ufa4GL+NokGQsDxs9ig/Sn5XbJDB3W
         4H5pOTWrT3/sNcJbjcptmngL7YUg5hT9xS/kWq76vZjWCelO3kGaIceiSQASXSAy+DHA
         c/d6+PsJdFmelyeE5zZGFCiwe+4tL+Ps6W/sU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=/q7sBzbBbeTuWPsoUT7pQjtPZecgNta8i8a9Kcl6IOo=;
        b=E3uwzg7fG+ka8Mwg1fLUjAWx2OvUg3tgTQimiJ15SqZQhzdV/bTRp+6IDkBrv1T2ZI
         BgK0DlXAnelUwU0+vUBf4ZlrG/1KxDD5XFaDottwZDKb3Cw5OUBDxxl1tWwLvhGaX84N
         DtLKky8WC7bi8rwn/ESWXT5YpIOCvmObvcH3K4o3LwA2ZtuBRPT7WHpYwmXI16Vniyvn
         nq5CoinyMiiGHJQ1ckRSmJHQ7+f2raeA5qy56klH4ClNAMcvaT2XLtmz4s6mvMFssF5k
         acDfJRpbE7ZanaMhl917ryqFC2BKXuQ/pEp7m2Wdt1PdAXAIGjHZ2xLxLyYqnjkSJIUI
         cmRA==
X-Gm-Message-State: AOAM5316FfOQZRq8n0HODTLW+Jmt4Uoa/b6zxBjYdmqg+roY2euRlK3V
	jvok6sVuArXbad/T+SQNpGV2WQ==
X-Google-Smtp-Source: ABdhPJyAvuJOuItWhtkjSP8iQz+4hhy8hBMdHjtois6AdDEsWzhZ7T8dOH38u9sHMQzgI8e7N12nHw==
X-Received: by 2002:adf:f192:: with SMTP id h18mr35657723wro.270.1620728432165;
        Tue, 11 May 2021 03:20:32 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:29c0:3873:464b:b647? ([2001:8b0:aba:5f3c:29c0:3873:464b:b647])
        by smtp.gmail.com with ESMTPSA id y14sm28282486wrr.82.2021.05.11.03.20.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 May 2021 03:20:31 -0700 (PDT)
Message-ID: <62b03298c9cf2b0534b42e6a9cd35c642f20fbb0.camel@linuxfoundation.org>
Subject: Re: [poky] win create failing at mcopy #poky #raspberrypi
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Mike Jones <proclivis@gmail.com>
Cc: poky@lists.yoctoproject.org
Date: Tue, 11 May 2021 11:20:31 +0100
In-Reply-To: <B91BF6BE-6B17-4435-A258-8737508AC69F@gmail.com>
References: <Swdb.1620063420405659881.gFTl@lists.yoctoproject.org>
	 <B91BF6BE-6B17-4435-A258-8737508AC69F@gmail.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2021-05-10 at 18:54 -0600, Mike Jones wrote:
> I have a little more info on this and a more specific question.
> 
> I copied the mtools code and hooked it into the layer so I could put in debug statements.
> 
> The problem occurs in charsetConv.c in the function cp_open, when it tries to do an iconv_open using
> “CP850”, which fails.
> 
> I ran “iconv —list” to see what it can convert, and CP850 is not listed.
> 
> To prove this is the problem, I hardcoded the iconv_open with “ASCII” and bit bake can go all the way
> through and “wic create” works properly.
> 
> So I ran iconv —version and saw it was “GNU libc 2.31” so I poked around those layers.
> 
> Best I can guess is this line from the mtools layer should tell the libc to provide CP850 via this line:
> 
> RDEPENDS_${PN}_libc-glibc = "glibc-gconv-ibm850”
> 
> Except that that is for runtime, and this is build time.
> 
> So I am not sure how glibc decides what converters are used. Is it just a set of defaults? Is there a layer
> somewhere defining them I could not find?
> 
> It seems that somewhere along the way, mtools changed its default to use 850, and it is not compatible
> anymore.
> 
> The solution is probably to tell glibc to provide CP850.
> 
> Does anyone know how to do that?

Which version of Yocto Project are you using? Are you using buildtools-tarball 
or uninative in your build?

I suspect you need a newer buildtools-tarball version which includes CP850.

Cheers,

Richard

