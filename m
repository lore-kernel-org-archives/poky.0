Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EBF1F8D74E
	for <webhook@archiver.kernel.org>; Thu, 16 Apr 2026 14:07:45 +0000 (UTC)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.15100.1776348458636341605
 for <poky@lists.yoctoproject.org>;
 Thu, 16 Apr 2026 07:07:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=K81krpge;
 spf=pass (domain: linaro.org, ip: 209.85.216.48, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-35d9f68d011so5225446a91.2
        for <poky@lists.yoctoproject.org>; Thu, 16 Apr 2026 07:07:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1776348458; x=1776953258; darn=lists.yoctoproject.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6EvVSXaPUQHfFTnn/pDHoDbU+cUgDwma+EUG1MOlDl4=;
        b=K81krpgeoQC1PJm4/rwJlG4/zwAMe3r9x07w9skkFBQgum1fewplA3x2uOfQPJVLOk
         ExXh1kNPOnquBevvCNN4RcWVGVyGX6okjPfB8hnhhu+WRNcj2TtUgkwrDczcIJq9PpRQ
         HEmfrOAtkX5c8REwfJzdwV1o7EdXiP9ljabf8f6c0eFeoFudwyAtlLczwyqfYsOT2+Yj
         SfBFGapK27ISJfDcFDWZM1tnJGGJD256ZRr9g/T+Ql37jTXTAjlpNkN1L7OPZks77Jbz
         KN3tdf5NKAN2Oc9Pc9FKsVZr8GwqRwAl+F6lGkxECe+x75eztaUwC1jMoeUzXeUHL0MG
         YvTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776348458; x=1776953258;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6EvVSXaPUQHfFTnn/pDHoDbU+cUgDwma+EUG1MOlDl4=;
        b=CLQqws6+qGcie8nPVn0merQuidk896bFHSdxyyr9Qt7Ej/HbBRPqcSfwqt1Xw06n/F
         HXLJ4H7xoX2b7stIsNU6eHzfAnSGubRJrW3meW3JEX4uDVjMAelo/Apmzle/8ZDf2z1Z
         zjqSGQWdNlqmkGINKBmd7WV1o7YeAcTZcKgNeouojLt3p8XaPTAUyVydBZxcryWX8y8G
         5QtCIMY3dtPJ7LzW430XtXnNA7jigbUUpCl1jC5nreCTa08SyXIq6sqvMG69+9F+JAF6
         I4tQ5hSo3X9p+r7pVOpB1lygm1aU/wfhSEhtIyLAnCmwg/Agm3/B7/SrIDcdw2ngXqd/
         8NYg==
X-Gm-Message-State: AOJu0YzUHObBA1Bi/ur9sGngEGSzDt/UGV7gSzeR00xE6DNSAXW0I83E
	ASu2lHelCZQUYcl2pOLJHRUbriafg0eLAgvyydR6bhdwoCMyrwBBvnbwZ29ug7nDVac=
X-Gm-Gg: AeBDieuZVKsrqhVDQmfHZPw8nBZlJ2lrHEtzqU9WxAdkv1aMOoU03ZvGxHSs4KWsknE
	cK9D1Tzwf9YfTKMzOr8pvan0GWwaWbyn0Qd79yoLy0yQuWUzu0q5iL5P0ysQ5aZx3oNubMutY7u
	gXoofy73xOfdv0URAPzXIDiOroInUixNpqm62iJBxQqViS//DZB+L2FKzZK5yBMpSPzqKE3qrLz
	tKXK9eZVRMbMAAI+yKWssraiiZhy3OVCF2U/fxvTynXrq0bd/eb6JrIEk+ggo6TTOJtUFfwm17j
	HXQkZO0bK0idrcVU5Wt2nLDQf/0u8ZD5zxIDmDMeMh4uhozpUfHDRuD0CiaXX14ine9yNOqhyg/
	BWdITbj8alVc3GDzlp1rdf1AHU0t15ln47DSPydjlCdGtKqdrRjGRCb28auKJb3sDCThMKKOsmf
	HpbIRjmvZblr71aAx6mPpJWkU4Pgte4LVNtxtzajvQNN0hvvkylbwG8XzSuvX1nQ==
X-Received: by 2002:a17:90b:17cd:b0:35f:c1e1:a263 with SMTP id 98e67ed59e1d1-35fc1f0e974mr12523175a91.19.1776348457636;
        Thu, 16 Apr 2026 07:07:37 -0700 (PDT)
Received: from nuoska (78-27-71-225.bb.dnainternet.fi. [78.27.71.225])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36132c8b945sm2755696a91.4.2026.04.16.07.07.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Apr 2026 07:07:36 -0700 (PDT)
Date: Thu, 16 Apr 2026 17:07:33 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] [PATCH v3] genericarm64 core-image-initramfs-boot: remove
 some kernel drivers
Message-ID: <aeDtJYWC5gku-hd3@nuoska>
References: <18A5D9F18A3D8C50.777565@lists.yoctoproject.org>
 <aeDjcbnGMMqzyW_z@nuoska>
 <cc1cc03b1118d75b010727706abacbb4c4f7f345.camel@linuxfoundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cc1cc03b1118d75b010727706abacbb4c4f7f345.camel@linuxfoundation.org>
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 16 Apr 2026 14:07:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13905

Hi,

On Thu, Apr 16, 2026 at 02:48:13PM +0100, Richard Purdie wrote:
> On Thu, 2026-04-16 at 16:26 +0300, Mikko Rapeli via lists.yoctoproject.org wrote:
> > On Mon, Apr 13, 2026 at 10:27:15AM +0300, Mikko Rapeli via lists.yoctoproject.org wrote:
> > > genericarm64 supports a lot of HW and thus large collection of kernel
> > > drivers are enabled and installed to images by default.
> > > Subset of the kernel drivers are needed in initramfs to mount rootfs
> > > from local mass storage devices. This increases initramfs size a lot
> > > and with new kernel config updates even more. Thus remove kernel
> > > drivers from initramfs image which are not needed for mounting
> > > rootfs from local mass storage devices. GPU, Bluetooth, NFC,
> > > sound, networking etc support is not needed in the initramfs.
> > > 
> > > According to buildhistory core-image-initramfs-boot size is reduced
> > > from 118 to 83 Mb.
> > 
> > In my oe-core master branch builds core-image-initramfs-boot is now failing
> > due to size limits:
> > 
> > https://gitlab.com/Linaro/trustedsubstrate/gpit/-/jobs/13951723488
> > 
> > 2026-04-16 13:04:26 - ERROR��� - ERROR: core-image-initramfs-boot-1.0-r0 do_image_cpio: The initramfs size 282121(K) exceeds INITRAMFS_MAXSIZE: 280000(K)
> > 2026-04-16 13:04:26 - ERROR��� - ERROR: core-image-initramfs-boot-1.0-r0 do_image_cpio: You can set INITRAMFS_MAXSIZE a larger value. Usually, it should
> > 2026-04-16 13:04:26 - ERROR��� - ERROR: core-image-initramfs-boot-1.0-r0 do_image_cpio: be less than 1/2 of ram size, or you may fail to boot it.
> > 
> > This patch could be one fix.
> > 
> > But is this visible in auto-builder side builds? Or have the genericarm64
> > poky-altcfg distro builds been disabled?
> 
> We're not seeing it there, the builds should be running though.

Ok. Maybe it's the linux-firmware update which just tipped genericarm64
core-image-initramfs-boot over the size limit.

I hope this patch would be fine as a fix.

Cheers,

-Mikko

