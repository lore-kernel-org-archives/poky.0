Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
 by mx.groups.io with SMTP id smtpd.web09.23586.1629118388890907014
 for <poky@lists.yoctoproject.org>;
 Mon, 16 Aug 2021 05:53:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=ELUIIDIB;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.49, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f49.google.com with SMTP id k5-20020a05600c1c85b02902e699a4d20cso11540439wms.2
        for <poky@lists.yoctoproject.org>; Mon, 16 Aug 2021 05:53:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=TPotElrGD6iPGMZyV6IaO2HIjnx2QkBi8MXbit3Snqc=;
        b=ELUIIDIBMaA8zW/AEe1RdqgO0Foem8pcuc1a2/iSpnP55RrZk7pVKm9OrpWaxIRGAB
         JMvUYS68/eiLfXIObjGfGDg0M7lmvCsd2LYeUU1NMakpLMc1GNLh7HsV/TDoFFjEX0du
         OlZmjGR3VKwHpIUPnc2NI8oCY28zeLtA5KAKY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=TPotElrGD6iPGMZyV6IaO2HIjnx2QkBi8MXbit3Snqc=;
        b=pgTT+mFRvXoZZ5SeBARvM7sDD8TBp807ucspO1+O/XrmJgMKGW0u0YpUhcNF8TeZNO
         LjYCF67eWj+PvtrOtmKl8ERohq++lpMHR7XdDa5O1ch25TYVNdAJU4svxrYUVNwEpS9P
         vD91n5Vk1EAv4ESEDVXUIQUTfOXkREQHr2T3jic4k2OhrILCSl9ZFoYi/jUx8DXD8dZG
         PcIiq7oLasMtCqTAekGQij+D/ttqOp1OewIVHqGnPtGr4socaSc9UkIRtwebdgn99S3V
         x4WQTadZzOGuETU8Oe69RN8F3Y0LX474Jznv5CVlV18+kZ7gch79c0cBykJ8Q3w4kJ0H
         pqkA==
X-Gm-Message-State: AOAM532bYa2knp6Xy/ZJ+9ssxXD9aoRioegPDo8t/trw9cXqQ3nEvnTH
	DKItzseeyD8HAHqkYkhKmuCiuA==
X-Google-Smtp-Source: ABdhPJzkP9uiFdNTU4JOeAZITC9c9BYD11HnRLUF9sal+1tyUdVssWie/LBNKXvO1fkSk/QNIWRbCA==
X-Received: by 2002:a05:600c:4f13:: with SMTP id l19mr8206752wmq.171.1629118387233;
        Mon, 16 Aug 2021 05:53:07 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:f791:56b8:5572:9d45? ([2001:8b0:aba:5f3c:f791:56b8:5572:9d45])
        by smtp.gmail.com with ESMTPSA id e6sm11692806wrx.87.2021.08.16.05.53.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Aug 2021 05:53:07 -0700 (PDT)
Message-ID: <d8f4b470127457a224d87bc873c4bd5cfc2b14ff.camel@linuxfoundation.org>
Subject: Re: [poky] $(( causes parsing error NotImplementedError
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Paulo Neve <ptsneves@gmail.com>, poky@lists.yoctoproject.org
Date: Mon, 16 Aug 2021 13:53:06 +0100
In-Reply-To: <49811e42-9313-0f3a-2d0f-486bd5d64baa@gmail.com>
References: <49811e42-9313-0f3a-2d0f-486bd5d64baa@gmail.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi,

On Mon, 2021-08-16 at 12:44 +0200, Paulo Neve wrote:
> Hello all, hopefully the following issue is related to this mailing list.
> 
> I recently noticed that the expression $(( causes a parsing error on 
> shell-like functions. The $(( or arithmetic expansion, is a POSIX 
> standard expression but it causes issues on the parser even before it is 
> runs in sh. Is this expected, or documented anywhere?
> 
> Thank you for your time. The abbreviated error is below (sorry for the 
> formatting)
> 
>   Error during parse shell code, the last 5 lines are:
>      echo $((1 +2 ))

The best list for this would be the bitbake mailing list. This is a known 
issue, basically our shell parsing code doesn't understand that expression.
It is sad we don't support it, particularly as it is POSIX.

We've generally just been able to avoid code continaing that expression to 
avoid the issue so fixing it hasn't been a high priority.

Cheers,

Richard

