Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54FE5CED62B
	for <webhook@archiver.kernel.org>; Tue, 18 Nov 2025 11:54:30 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.10585.1763466863577482162
 for <poky@lists.yoctoproject.org>;
 Tue, 18 Nov 2025 03:54:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YYJQhIBP;
 spf=pass (domain: gmail.com, ip: 209.85.219.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-88249766055so67647426d6.1
        for <poky@lists.yoctoproject.org>; Tue, 18 Nov 2025 03:54:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763466862; x=1764071662; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=04cgPGNhDa9PUj9XrFyRwJ6UI1aAJmQJ2nAiXusb9bc=;
        b=YYJQhIBP7oPWLFoJlTn3QfS2L0oC09xYoVnMt0NWPeU/zgNojC/ZVWCyMXFwqDuSfx
         e1nEESTlcTlgHpUBYrwrln21e9So8UcpASMSweGcYAVp8a7r0pQhuSFnJsNqFu1aNQG5
         refeFZzIlXPqPFviNwTMXxTEEZxt8tSV6jxgAyUYl/YdF+hMzSlwcE5KLH4sZ2O2uXyx
         Lu8qDolcAxvmwaNlv4EumLjO3hmT9hCDGTgDmpVVAIDezzMOdRlVTVHFrPSlYpJQ9rcf
         LSTObjYh3etL4fhQeieGUhXyR7KJR0BdaX4a45kNJfFXhq2YF9JRklqq0eLmGnBBhaG0
         U+OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763466862; x=1764071662;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=04cgPGNhDa9PUj9XrFyRwJ6UI1aAJmQJ2nAiXusb9bc=;
        b=QqJV2qnEGERqIocCan3hbYrLY1flsD5RV3FpCEmIJeK6Y1jVVe+/Jw/X3q1yO1dF6G
         FbEhDFaoHSYH4UrWTfdduzFEnTGqBiGmBbxGyAUGn8EUdAQ7eHSGZC5jGKpEusx6+BzM
         XSZjNAT3lbea7tESjOaR1UwkIZN43P2tt04J92n3gkhIpeCKlLvZtoA5z8o06IQmOR6K
         rLI6p4G/O2xGPdy52j2ZQTnvQUzEe5KgfGOJqWo/mNIYwukGJGexKePO0HxbyVTUWXug
         A39uT3DKUHXIoiSz5nc1Zxu6tytP+lWkzOW4fYA0/uqjhpNxuVzwCHwLzmkm3BBTISuY
         a4aw==
X-Forwarded-Encrypted: i=1; AJvYcCXqKCZeUQxycuHxjhK4u6Ztg2WSTsexbmYQ2X76gKRLy01RjKOD0IRf8/mfwfs6yuytx7mT@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwXSbSImB3Pt06OgTKIN3sGs/XHkT3ASXL9rtjel+fBJiYbbF/N
	UYt+1R4GRRxre+LmQVUXfzaKjuIXdlZbV8dUdD8RHIISt5BsBDxvGY2JJdCyR6aMR9mmuf/YLhG
	hmFI7ANSxY32zVU3b6N3BV/lXQuaDX1w=
X-Gm-Gg: ASbGnctBOWCzU0NSVXOeaZbVPc1MRGM8DqUODZySqbrAhpDxKmWoZVBxYj3y9IJcA/n
	agCF5acwBSXh8Q5rdAdMlxbdryWtc5fRjEfVKthDU/zKSLsB4BslcPi85uggQGsqsKI+tG2U5Gm
	laM7kAs7lXSgk/wFT4+RtEui1eAb8ZlQ1Oc76ji81WKVuaBch9rSxHTza2MXkpCQwstTwp2ojeY
	c/yOr8+340S11xw8aBUK8XU9e1urQ28B0NM3Mpd0asy85b9/sks6G2tAE+zLGQmb8En1gB/UVVG
	uRLB17asRaSG8Q053dHPdjmapLomstYQvK9IXw2m
X-Google-Smtp-Source: AGHT+IFkodjGYKS4IuENq61R9p7AkhxuWHIr4rcBiGJ/Wec35TYTeHxGvOXNa/eCDatTXmZP+oHewGRnO76MHEYLtTQ=
X-Received: by 2002:ad4:5aee:0:b0:882:5291:23d0 with SMTP id
 6a1803df08f44-882925f5a40mr176880376d6.20.1763466862475; Tue, 18 Nov 2025
 03:54:22 -0800 (PST)
MIME-Version: 1.0
References: <20251028-update-bblayers-sample-v1-1-97ec54cda94e@bootlin.com>
 <CANNYZj_2V2qu0BWBY_mCkZoC6+brOkfLu1FvYX=EOpbJk0sj_w@mail.gmail.com> <0cb2ae0748ee16aaa8aa31edc36c09cac4e24842.camel@linuxfoundation.org>
In-Reply-To: <0cb2ae0748ee16aaa8aa31edc36c09cac4e24842.camel@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 18 Nov 2025 12:54:11 +0100
X-Gm-Features: AWmQ_bkR6ZNLAdv_W5nRz1nrnE6tSWk0Teqi4HH232Oc-DrTPoALObWOLb-vCfo
Message-ID: <CANNYZj_FuQSGPzNE_PW8TxZH32fT_N8=-kLb00Wb7qismgYWEw@mail.gmail.com>
Subject: Re: [poky] [PATCH] meta-poky/conf: bblayers.conf.sample: move
 meta-yocto repos out of oe-core
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: antonin.godard@bootlin.com, 
	Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>, poky@lists.yoctoproject.org, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 18 Nov 2025 11:54:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13797

On Tue, 18 Nov 2025 at 12:48, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> I can merge this but it feels a little wrong.
>
> Perhaps we just delete the template data out of meta-yocto and update
> the docs to tell users to use add-layer and then change the DISTRO?

Yes! oe-core and poky templates are basically duplicating each other
(needs to be confirmed nothing would be lost though), so that would be
nicely addressed.

Alex

