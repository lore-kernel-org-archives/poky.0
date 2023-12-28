Return-Path: <alexandre.belloni@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B83CBC3DA6E
	for <webhook@archiver.kernel.org>; Thu, 28 Dec 2023 21:21:31 +0000 (UTC)
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
 by mx.groups.io with SMTP id smtpd.web10.132628.1703798488948742404
 for <poky@lists.yoctoproject.org>;
 Thu, 28 Dec 2023 13:21:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=bPUwxLIT;
 spf=pass (domain: bootlin.com, ip: 217.70.183.199, mailfrom: alexandre.belloni@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 49CD1FF803;
	Thu, 28 Dec 2023 21:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1703798486;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=n5NsBMCsW6YI1vAWsRw0WnadcxedEBmg1PSEt/Ls9Sc=;
	b=bPUwxLITaZWbvmQjwZFznfCoNeXRY/v3BzBWDOKAlq5K8B1JhBPOxLhCE4riCAtj5g3w/Y
	K9GaILbUezCKd+HeZl2Ts4VwT/jO0kgqCw9cQAFxaZkvc47NUCEooJSRGvzT+B+Q6QYAVK
	yg3kfzJI3Smw3uLtVjKKk1/J+A/P1OCCWrAwRsGYda7Xb1pQTD2XBrXnxPRSnD6BMZkiwu
	XXwCKg7wBGDyQMKwxfxmh2lyZ/1wA0dRyw96huaBq562WmNnEz68+APVYIuOdr7AVq6PAA
	iHkCxWZK6HyK75obI1pIgGYOTlS7tYJ0GUN3lapJQj1Jvbgm+kA0KHa6k5mBwQ==
Date: Thu, 28 Dec 2023 22:21:26 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: teddyxiong53@gmail.com
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] qemuarm64 use lib64 as multilib
Message-ID: <20231228212126346a51ea@mail.local>
References: <CO6PR11MB5602612BCA995AEAC901E5A6ED9EA@CO6PR11MB5602.namprd11.prod.outlook.com>
 <16462.1703731902287861698@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <16462.1703731902287861698@lists.yoctoproject.org>
X-GND-Sasl: alexandre.belloni@bootlin.com
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 28 Dec 2023 21:21:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13238

On 27/12/2023 18:51:42-0800, teddyxiong53@gmail.com wrote:
> No, I am providing a SDK to customer, they refuse the bitbake lib32-core-image-xxx solution.
> 
> They don't want see any lib32- prefix.

But this is the proper solution, else you won't be able to build a 64b
kernel.


-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

