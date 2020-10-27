Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com [209.85.221.66])
 by mx.groups.io with SMTP id smtpd.web11.13849.1603804720624785703
 for <poky@lists.yoctoproject.org>;
 Tue, 27 Oct 2020 06:18:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=ha6A2DUg;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.66, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f66.google.com with SMTP id h5so1867220wrv.7
        for <poky@lists.yoctoproject.org>; Tue, 27 Oct 2020 06:18:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=F+rwnAiNURaYSLQdvoQUfchqQDcr8jeaaKaDSfH7Ptk=;
        b=ha6A2DUgYDL7oH9bYpS7G48MbCJD54VKVW7C8LNIoc84/gQIOTGsqrUkJpplZmEVBA
         vBBf0Fc/Px3sGbpPehesq0e+sXeLEbh0tJstTfDSGX2WSP9I0lj1jJj2d2Qdorxt/tG7
         2nIgAWAATTU86K6r99aPf4pY6eW3nnTXW1QZ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=F+rwnAiNURaYSLQdvoQUfchqQDcr8jeaaKaDSfH7Ptk=;
        b=PrqNRoXP2/LlbXy/Eb2WpUhMyi8i8hgSxwU3Cn5PxxmQjeF9mltxZ2MhgONEQWWQwq
         8FREdHNDJBMtuIbZ1Y937yfW+5/ZzHvBcknR8/puPLc+B68Y1jAkcTnb13yZZ59UrhEC
         TxXUItkqAwr7Us25btJjpvRh1xYNWGoGGKvFCTy5VDcV4OUVUX3zFASMTIl3vk+a3A1c
         JQvmlzKXTw57GBfEK2XKdlezBBCqv4KhF4uBuDphm8p2+gN4lLe2+VLfiisIJPr52rBS
         wW3sdfmw9jdjOb5kJ8dLQEVEVVEk+znq5TYtulwZYHqkI8as10U8w9du3+4iOjrYc0+0
         fE/A==
X-Gm-Message-State: AOAM532FOB2trnA15hK1vQdtnqnKhkUtNvdMess4diR4akN7h7ZgiWcQ
	2UJWcQjsrzzAIGqxD91wmqrvDQ==
X-Google-Smtp-Source: ABdhPJw4Eihhd1lsKJcjqG5350YaX6UPQZqbpk3vOyhUusxBQ3nuWri+qnBYwQB24MW7HbkxsVmFpg==
X-Received: by 2002:a05:6000:12c9:: with SMTP id l9mr2788750wrx.309.1603804718976;
        Tue, 27 Oct 2020 06:18:38 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from d.0.2.3.2.a.1.a.7.6.b.c.7.6.8.1.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (d.0.2.3.2.a.1.a.7.6.b.c.7.6.8.1.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:1867:cb67:a1a2:320d])
        by smtp.gmail.com with ESMTPSA id c129sm1886583wmd.7.2020.10.27.06.18.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2020 06:18:38 -0700 (PDT)
Message-ID: <ae92c90a0cd9c86b257094460b1779ad9f3cc094.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] cmake.bbclass: don't remove build directory for out-of-tree builds
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: ALSI@bang-olufsen.dk, "poky@lists.yoctoproject.org"
	 <poky@lists.yoctoproject.org>
Date: Tue, 27 Oct 2020 13:18:36 +0000
In-Reply-To: <20201027131227.576470-1-alsi@bang-olufsen.dk>
References: <20201027131227.576470-1-alsi@bang-olufsen.dk>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2020-10-27 at 13:13 +0000, Alvin Sipraga via lists.yoctoproject.org wrote:
> Rather than removing the whole of ${WORKDIR}/build on every do_configure
> step, just clean up CMake files to trigger a fresh reconfiguration of
> CMake.
> 
> Signed-off-by: Alvin Šipraga <alsi@bang-olufsen.dk>
> ---
>  meta/classes/cmake.bbclass | 8 +-------
>  1 file changed, 1 insertion(+), 7 deletions(-)
> 
> diff --git a/meta/classes/cmake.bbclass b/meta/classes/cmake.bbclass
> index 7c055e8a3d..39f356099e 100644
> --- a/meta/classes/cmake.bbclass
> +++ b/meta/classes/cmake.bbclass
> @@ -151,13 +151,7 @@ cmake_do_configure() {
>  		bbnote "cmake.bbclass no longer uses OECMAKE_BUILDPATH.  The default behaviour is now out-of-tree builds with B=WORKDIR/build."
>  	fi
>  
> -	if [ "${S}" != "${B}" ]; then
> -		rm -rf ${B}
> -		mkdir -p ${B}
> -		cd ${B}
> -	else
> -		find ${B} -name CMakeFiles -or -name Makefile -or -name cmake_install.cmake -or -name CMakeCache.txt -delete
> -	fi
> +	find ${B} -name CMakeFiles -or -name Makefile -or -name cmake_install.cmake -or -name CMakeCache.txt -delete
>  
>  	# Just like autotools cmake can use a site file to cache result that need generated binaries to run
>  	if [ -e ${WORKDIR}/site-file.cmake ] ; then

I'm afraid we have a significant lack of trust when it comes to the
underlying build systems. I appreciate this patch can make it "faster"
under some circumstances, it can also introduce bugs if dependencies
aren't correct and things don't rebuild. We have a preference to try an
ensure things are correct. As such I'm not sure we want to make this
change.

Cheers,

Richard



