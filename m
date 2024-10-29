Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7A84D2AB35
	for <webhook@archiver.kernel.org>; Tue, 29 Oct 2024 12:14:51 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web10.17983.1730204090956685846
 for <poky@lists.yoctoproject.org>;
 Tue, 29 Oct 2024 05:14:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=baia3oF5;
 spf=pass (domain: linaro.org, ip: 209.85.167.44, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-539fe76e802so6396367e87.1
        for <poky@lists.yoctoproject.org>; Tue, 29 Oct 2024 05:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730204089; x=1730808889; darn=lists.yoctoproject.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GjXP4vUwIDjyZctXjMeSUlZt1qjsN03DnorLfBygqXs=;
        b=baia3oF50nEx/1knNrwqMRI8T8uiST4MRGDh49nxAnAObZekPBUg8mVlZ8+hehd/Y4
         P6Ds+wIS0cz0vZxcYMb4KzjN95VkY8smDpdofsTe5BHgaM/kiFdFPoIMkktKGEuAUqfm
         H51AdUdxRErNq7IX2IVnbLf/EQ1XPb9jAYflkp1LFaA6W36FTfr4iE+jnQ7stNEm+2an
         ve9uOSfwPeX5xdrPmr0ihnWQbXDYB4csB227R26oeqJrZwpn7JoM1o11wymoJJQue7zr
         jo6y01F2TW7VRpiPoSkKooBxAdIII18pNdO8J2VB3B41xU7/b9AYP9ihnRsQoEsnvZ0L
         7sjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730204089; x=1730808889;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GjXP4vUwIDjyZctXjMeSUlZt1qjsN03DnorLfBygqXs=;
        b=a4U7/fXUZc0dDG/Cx4CH+R7IlatelGBIpWWpRrvJo8LqgXrIZSHS5SmGQS2F83kQUc
         nBEl6pjVEdNNOkjr97jzyMa0bsCiuSLb+ZIRyg85PsOJiLeR/kIh8A+uIdC2LcnfRE1X
         ccNQNMAifhU+ykvlxr2QbqsqsHohF4CHfZcL89hH1tZOfsG4xlkNL+sWVqqt4gBZqGhS
         2FbZAaBfiwNko3ZUHmEbJ633xBeBfStqnWCW+7B6eMrluVS/zzSG8YbStPL40jAtr2GX
         Jt0kpoCDkidE5ArMGs4dVxctrKIIjEMUSVDZiYXdF0w6ymr/vqOKMapvPrGsMJ1yzyj0
         TwBA==
X-Gm-Message-State: AOJu0YwD/RBkcmHxdeuANPocWDQbRcGeLG4JY4U7r7rjiwnzStsRzcxe
	fkVj0EHv4KxbKFw2wHn+apuMyJtLJ9lBy6WWxHhYxssYuL5LNHwcISufKt9uykSUH5VCO1W71Lb
	fWG4=
X-Google-Smtp-Source: AGHT+IEs6M7TVIU/+62rAnfQXoQpB/hV89j5tXzLxNwhyEyk7KaUezIVx4s9Tl6j1+4kC7FwOC05vg==
X-Received: by 2002:a05:6512:3b2b:b0:535:6aa9:9855 with SMTP id 2adb3069b0e04-53b3472951amr5594456e87.0.1730204089063;
        Tue, 29 Oct 2024 05:14:49 -0700 (PDT)
Received: from nuoska (78-27-76-97.bb.dnainternet.fi. [78.27.76.97])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53b2e1eba66sm1342273e87.280.2024.10.29.05.14.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2024 05:14:48 -0700 (PDT)
Date: Tue, 29 Oct 2024 14:14:46 +0200
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Ross Burton <Ross.Burton@arm.com>
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH 3/4] genericarm64.conf: add "testimage" and
 "testexport" to default IMAGE_CLASSES
Message-ID: <ZyDRtrpfrEASaBk2@nuoska>
References: <20241029080544.5486-1-mikko.rapeli@linaro.org>
 <20241029080544.5486-3-mikko.rapeli@linaro.org>
 <C8F03665-3B73-4BB8-9164-367F0F42C40C@arm.com>
 <ZyDPfSNniORKkPIW@nuoska>
 <CAB9A599-AAC3-4BC8-A4B7-EBF1915FABCE@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAB9A599-AAC3-4BC8-A4B7-EBF1915FABCE@arm.com>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 29 Oct 2024 12:14:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13470

Hi,

On Tue, Oct 29, 2024 at 12:10:29PM +0000, Ross Burton wrote:
> On 29 Oct 2024, at 12:05, Mikko Rapeli via lists.yoctoproject.org <mikko.rapeli=linaro.org@lists.yoctoproject.org> wrote:
> > On Tue, Oct 29, 2024 at 11:57:28AM +0000, Ross Burton wrote:
> >> On 29 Oct 2024, at 08:05, Mikko Rapeli via lists.yoctoproject.org <mikko.rapeli=linaro.org@lists.yoctoproject.org> wrote:
> >>> +# Run oeqa runtime tests outside of the build environment
> >>> +IMAGE_CLASSES += "testimage testexport"
> >> 
> >> Sorry, but this isn’t appropriate for the machine configuration.  The build configuration or distro can add these classes as needed.
> > 
> > Ok but where do we do this for genericarm64 images? Somewhere in yocto-autobuilder2
> > or yocto-autobuilder-helper repos? I presume poky distro will not set these.
> 
> Is your intention to run testing over images generated by the autobuilder itself?  Arguably, we should add these to poky.conf as poky is explicitly for testing purposes.

If these are enabled, then we could take the images and exported tests and run
them directly in Lava lab devices. Another alternative is a different build with them
enabled but then maybe limiting the amount of images would make sense.

If you are ok with this, then I can propose this to poky defaults.

Cheers,

-Mikko

