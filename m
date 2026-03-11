Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B29841062884
	for <webhook@archiver.kernel.org>; Wed, 11 Mar 2026 12:18:53 +0000 (UTC)
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.20077.1773231531362039331
 for <poky@lists.yoctoproject.org>;
 Wed, 11 Mar 2026 05:18:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=lBfFUhtY;
 spf=pass (domain: linaro.org, ip: 209.85.215.173, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-c73bd024a0dso1195954a12.1
        for <poky@lists.yoctoproject.org>; Wed, 11 Mar 2026 05:18:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773231531; x=1773836331; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xc/4bO2iLp/KKXN2PB/ZksARy7Xe2A0NoRwJtqC0DUg=;
        b=lBfFUhtYncswlkdTyAwrbAaRzXO8irEvHw66k9n9J9T/J9HBm3lblR7y0U88JC8CLs
         UpNxGeZ7DTIyRzQmbmk3HdYUkefBPnQICGlm8HEEB+0V0RTIoSWDUUZymjo/BPkQfBSm
         Nx7sEfUdYOBbnkwtxsfBOiN62ZLBxax4EyLdvV158CjijWYtCgztZFiLCcrqd422JdiV
         WWp8j85oU1T6U9QBwrBqwseY6xGC0PBRxu+o53Cm413ZdwVJwdDW1bXUxknwpQ9QVoxi
         Rm8anVaY0ZmhtfLoN80cXqF/P9h4ZO0p4kbPdp7PaVeTsqcIXmQjZV05HKMyPSnve0Ev
         guKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773231531; x=1773836331;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xc/4bO2iLp/KKXN2PB/ZksARy7Xe2A0NoRwJtqC0DUg=;
        b=l9vvLqeQMJnWspJ71194EPJ4GEgLRKE8vwiykYBFYdZTgR/FWy98nubROO+0lCDoTG
         C1xXxFqFKzf1pChsbyJMUUaF9gNF1J/b28QsB/hPszEtFz/VGNlxLsl8NCUxDaKqxgzF
         J7vUk/QeiDbYkJQple/fAT0WpeGCvf6P9dfaGw8dRrsXq18HQq2tuvLSrGHJcPxvi20z
         1MMmqXw8g45Yop9Xop4HkmxuCvPU1yzAs4n/2z9BgcrwwpzxcEXaftQ40NidrBLS2FNR
         ewp//dwseIgO4UgQW4EYNKTpAV/5XZ5AD0YyYIq8sZix5/KQh3uLA/CW9lWs+mvbgUHr
         E4BA==
X-Gm-Message-State: AOJu0Yx1VOo6DAJGBZZewRjG3dRgNP6SCuhD3Tg6r4kgemBnJzLp9eaW
	VJXo3CMGgPl5eSNtFfTbq+4NRVZ2J8bg+nfDCTdi0DrVwROUO7pxA7Oe0CLshK4A2q/xPkRDk3b
	euV6u10I=
X-Gm-Gg: ATEYQzxQe5UkOod7A/jValAvF7SWdEt/CpWpk48HFq4saUsQ12VDyb1yEFBrbcYbAfI
	jdoljj3svAaa7F1q3ZR3qzse/fEfL/vvNllbHMse7lU/0W3NvM2u9KEenTDLd60gtWOSMOpUpWk
	uRTQdKKGGXEqtBFhLhoKN6RSEcm47ZeehHF/mUH0zBRNS3RQJtSxWf62AkD3bju6VzJ6/SWiQFO
	guvg5D0P5pK0uyobbJxMOKhwsPAB8bxrCyY6IoBO8L/bPXvIP5hlt8neEJGlSac7W3csEP7MaxO
	euwMVjfphNxa6MEH8222XC/7dIvtUaGjNEnEylc78Qjks2TujCO28Xo4i7NoXqh+qDyn1C5EEMj
	w5Gk3agwYRpewxWPzX7n+5wuHVvxLw4NYBG0uhHVFyfulJCO0m1lFBoDbcebREE7Ktui0ZQ/sbx
	qpQSM7dTmABhhSxXuYcpHhUZRjsJTCTIu9226ri2mtTRfmx4jd1Aayi1z+
X-Received: by 2002:a17:902:e848:b0:2aa:e3c2:f925 with SMTP id d9443c01a7336-2aeae8945a4mr25257415ad.34.1773231530634;
        Wed, 11 Mar 2026 05:18:50 -0700 (PDT)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aeae378ca7sm21554415ad.91.2026.03.11.05.18.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 05:18:50 -0700 (PDT)
Date: Wed, 11 Mar 2026 14:18:46 +0200
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] [PATCH] genericarm64.conf: fix qemu testing with
 testimage.bbclass
Message-ID: <abFdptsKldiqe76d@nuoska>
References: <20260311113616.249506-1-mikko.rapeli@linaro.org>
 <f3f3d82f4f70370b4904d65467748210e5cd1c84.camel@linuxfoundation.org>
 <abFbrkd8o7iYxUkF@nuoska>
 <2559713e813caeb132236d19744e3eba5b41728c.camel@linuxfoundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2559713e813caeb132236d19744e3eba5b41728c.camel@linuxfoundation.org>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 11 Mar 2026 12:18:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13858

Hi,

On Wed, Mar 11, 2026 at 12:13:44PM +0000, Richard Purdie wrote:
> On Wed, 2026-03-11 at 14:10 +0200, Mikko Rapeli wrote:
> > > slirp, is a preference thing and I'd like to stay consistent
> > > between
> > > the qemu setups. It is not the default.
> > 
> > It is the default on all builds and configuration I use and on meta-
> > arm so I would rather set this by default for genericarm64. Since
> > yocto upstream does not test genericarm64 I think this should be the
> > default.
> 
> I don't, sorry.
> 
> I've made my views on slirp and various other aspects of this clear
> multiple times. I'm wading into this again.

Understood. Are there some current issues with slirp in oeqa
selftests like runqemu, runtime_test, sdk or uki?

These are testing that slirp networking continues to work and AFAIK
there have not been issues with the tests lately on any qemu machines
tested on oe-core autobuilders.

Sad but I will drop this in v2.

Cheers,

-Mikko

