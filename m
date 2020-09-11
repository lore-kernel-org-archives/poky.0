Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web12.6737.1599826941331635056
 for <poky@lists.yoctoproject.org>;
 Fri, 11 Sep 2020 05:22:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=MkyK68iE;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f49.google.com with SMTP id t10so11301891wrv.1
        for <poky@lists.yoctoproject.org>; Fri, 11 Sep 2020 05:22:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=F/Q15iPD4wktQyPDUWA0+wD1H2v0hOhaIBfYEXUT1Ds=;
        b=MkyK68iE1AllZw2ifOBApOER/0Hbi/bzuF/SDIwn7oz7TwIZAI42Wqbt0CbBxzP/n6
         jvAHFHBctNJqCS+u/AR0tW4dlt3LkTI0Nq2oGowP/vE6gMKicRtJsP35csyvwjPbmD5f
         vnuRUAek9tje7/IPt8a0irC7Uz6Pxt2WgSRxg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=F/Q15iPD4wktQyPDUWA0+wD1H2v0hOhaIBfYEXUT1Ds=;
        b=Jjgpj6wRwyspc58BLyvAkytxM0HcSfpvSvUkkcJAVWj3pQcx+b91FZjXbtwe5rHOTM
         MvkqvklJxqqH2AYpA+4rtfrL6M+qpXkCwP05mZ2xAtlw870y9H3cRxD226nTLMKyurFi
         z2kj5yzNHr1Z4ZrG8cC3PVV/W3rDMPBp8WmPd0uML/EvPwr1Ry2bUBZOqG+MvNcbMNPu
         Br+z5PIuEoHC8BuqWrfJudfMAmQSJmN1+RT4oCdURlSnv4AdLml1HQPh3KxV2s9JbTL4
         CRcKHHNad/laJsZMUWUkBafpUqOq2bnjyu+ENUgPy1w9wK3UNMfK871YOOkvhunbt/gO
         gFTg==
X-Gm-Message-State: AOAM533A7nGMgSU7bg1W7n0W9T5WQOZgFVoVzJfKYIBS602LKLtqRhWO
	bj32+iEiRxSqk/Y4wZOwsUGA0w==
X-Google-Smtp-Source: ABdhPJzq25T9U+Wfujl31/hTYtjJk/XTriIRsLJMo+2vxmRWDty02IIMF9osfC18XZ4kIWZWvfSqLQ==
X-Received: by 2002:adf:81e6:: with SMTP id 93mr1827285wra.412.1599826939711;
        Fri, 11 Sep 2020 05:22:19 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from 8.4.6.b.e.8.e.4.6.7.0.3.a.2.d.2.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa (8.4.6.b.e.8.e.4.6.7.0.3.a.2.d.2.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:2d2a:3076:4e8e:b648])
        by smtp.gmail.com with ESMTPSA id 59sm4414675wro.82.2020.09.11.05.22.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2020 05:22:19 -0700 (PDT)
Message-ID: <ef6241acac0e9124077509c79af3bffc63088d3e.camel@linuxfoundation.org>
Subject: Re: [poky] add a -dev package to SDK (in sysroot)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Steve <star@gmx.li>, poky@lists.yoctoproject.org
Date: Fri, 11 Sep 2020 13:22:17 +0100
In-Reply-To: <21bed7fc-b057-c97c-ae5d-3d84f45c69b4@gmx.li>
References: <21bed7fc-b057-c97c-ae5d-3d84f45c69b4@gmx.li>
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2020-09-11 at 12:01 +0200, Steve wrote:
> I try to add websocketpp-dev to my SDK, but fail.
> 
> I did a
> 
> IMAGE_INSTALL = "... websocketpp ..."
> 
> and to get the dev-package into SDK:
> 
> TOOLCHAIN_TARGET_TASK_append = websocketpp-dev"
> 
> The result is an error in
> 
> bitbake .... -c populate_sdk
> 
> Unable to install packages. ...
> 
> Problem 1: Nothing provides websocketpp = 0.8.1-r0 needed by
> websocketpp-dev-0.8.1-r0...
> 
> Solution: so not ask to install a package providing websocketpp-dev
> 
> 
> If I see this right this approach works for other dev-Packages like curl
> and curlpp, but doesn't seem to work for websocketpp. What am I doing
> wrong? Where is the bug? What is the trick?
> 
> Somewhere I have read that just creating the SDK by -c populate_sdk is
> adding *-dev packages to sysroot in SDK, but this is definitely not true
> for all packages.
> 
> Thanks for any help!
> 
> 
> PS: I can see in deploy that package websocketpp-dev with all the
> /usr/include/websocket/...) has been created.

I suspect that websocketpp is an empty package and not being
generated? 

If so, you either need to remove the dependency from websocketpp-dev on
websocketpp or generate an empty package.

Cheers,

Richard

