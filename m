Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7EA1D2AB2E
	for <webhook@archiver.kernel.org>; Tue, 29 Oct 2024 12:10:31 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web11.17844.1730203822281405523
 for <poky@lists.yoctoproject.org>;
 Tue, 29 Oct 2024 05:10:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=k6etIMEH;
 spf=pass (domain: linaro.org, ip: 209.85.167.46, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-53a0c160b94so5989839e87.2
        for <poky@lists.yoctoproject.org>; Tue, 29 Oct 2024 05:10:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730203820; x=1730808620; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wIvVKo8xWYq/KKt5bp9bthpwHu3zsD8KuF0YNJkDphA=;
        b=k6etIMEHvLEoeUWD/9bXUPe4HHizdl3pcM78PKn14cW/GFmgdd6eh9shLEM8/LBlrj
         TahbHxf7bvcFHf2//5fCgNUqumDJIYAMRQDuRo5SERMqZZqx+QE/+OuiUjh0ATBy58f9
         4xRBKLpmpH1SJMFa5zAZKMqo4kQn30F5qxgGl0EbBIRHTqOvQV7isb8ph17iHeubyok4
         o3dc50yz9LEvHjuWWMh5rEpC8xNi6U07qa65Wj4YkJy7c2mlcngFRca/4WlzVyR/NG9w
         Hwxp/epPuxROelUuR0cSAsyRGv+ZBIiqSL737muOimBTIxknZzXzgcnEKBXmQcCAOAp2
         R1ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730203820; x=1730808620;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wIvVKo8xWYq/KKt5bp9bthpwHu3zsD8KuF0YNJkDphA=;
        b=EgCwGd/zGUQV519rOvI/yxYs8NWg/msoVHz+5dkMx2VHBlQbHui3niakEvIHYaV2D+
         5X03Jxg5jzQqGEDFJ5WYNoJAWKDCDB+mkRCCovmS/ir2m+ERYWdqzSDa57CmxBy6Jyd+
         4lWyMdk7V1sIPDAfILG6I/b3P6RRcRU3ZVQ6GTLkpsvCue6fDqMdPY/AKT4cYcI4CDjo
         LD16Z5rcsckR3UiKhjcuCi7eKb+yMM2Oy2+3przNx0YEOKY2UXIMLadqqfXWDopFqjUn
         gR06lx2IgKdfN2Ve35FEhL5keQv2s9hByp2c0xSXC+nigAxD96l0YXY74egcyU1DALSd
         ktUQ==
X-Gm-Message-State: AOJu0YwMoTBRMoxh2Lx/UJyw7dWuI9XrqTml/wHxMm3hmPm9CvPGj9Dl
	jKWQj8T/1UWZqRMOSqSku2V13YcFsskXEX7deCM4SRkXOeAwwmS+3LZiSBWgMzFaENrjjCugxUG
	vaOk=
X-Google-Smtp-Source: AGHT+IGPH4zpBVeYMgMXZABhOUSYg0qDUg/8+htkFhujvVCy/KBT84vhctKMOResezNPOiKCLAdJ3Q==
X-Received: by 2002:a05:6512:10d1:b0:538:9e24:a3c9 with SMTP id 2adb3069b0e04-53b348cef6dmr4648353e87.20.1730203820226;
        Tue, 29 Oct 2024 05:10:20 -0700 (PDT)
Received: from nuoska (78-27-76-97.bb.dnainternet.fi. [78.27.76.97])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53b2e126db9sm1342024e87.91.2024.10.29.05.10.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2024 05:10:18 -0700 (PDT)
Date: Tue, 29 Oct 2024 14:10:16 +0200
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Ross Burton <Ross.Burton@arm.com>
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH 2/4] genericarm64.conf: add AMD Kria KV260 serial
 consoles
Message-ID: <ZyDQqCYY787vrEkY@nuoska>
References: <20241029080544.5486-1-mikko.rapeli@linaro.org>
 <20241029080544.5486-2-mikko.rapeli@linaro.org>
 <9CEA0C25-4CDA-4241-AC1E-3585FE087712@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9CEA0C25-4CDA-4241-AC1E-3585FE087712@arm.com>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 29 Oct 2024 12:10:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13468

On Tue, Oct 29, 2024 at 11:58:09AM +0000, Ross Burton wrote:
> On 29 Oct 2024, at 08:05, Mikko Rapeli via lists.yoctoproject.org <mikko.rapeli=linaro.org@lists.yoctoproject.org> wrote:
> > 
> > Current practice is to add new device serial devices to
> > SERIAL_CONSOLES. Enables testing and test automation with
> > the board. Note that SERIAL_CONSOLES get added to /etc/inittab
> > and missing physical serial consoles causes respawn warnings
> > at runtime:
> > 
> > INIT: Id "S0" respawning too fast: disabled for 5 minutes
> > INIT: Id "S1" respawning too fast: disabled for 5 minutes
> 
> The use of ttyrun should avoid the respawning issue, have you confirmed this still happens? If so, any idea why?

This is happening with very recent poky master builds with sysvinit, the default.

https://ledge.validation.linaro.org/scheduler/job/95628

    Starting syslogd/klogd: done
    
    INIT: Id "S1" respawning too fast: disabled for 5 minutes
    
    INIT: Id "S0" respawning too fast: disabled for 5 minutes
    Poky (Yocto Project Reference Distro) 5.1 genericarm64 /dev/ttyPS1

Alternatively testing could focus on systemd init, or the issue is just ignored.
Or udev based agetty starter is developed. For generic images, it should not be
necessary to define all serial consoles via SERIAL_CONSOLES at build time.
Kernel has a lot more drivers enabled.

Cheers,

-Mikko

