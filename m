Return-Path: <alexandre.belloni@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC85BC2BA15
	for <webhook@archiver.kernel.org>; Mon, 17 Jun 2024 14:19:36 +0000 (UTC)
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
 by mx.groups.io with SMTP id smtpd.web11.57513.1718633969084701997
 for <poky@lists.yoctoproject.org>;
 Mon, 17 Jun 2024 07:19:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=WliCbROh;
 spf=pass (domain: bootlin.com, ip: 217.70.183.200, mailfrom: alexandre.belloni@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 1B84F20002;
	Mon, 17 Jun 2024 14:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1718633967;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Ouu4BoQ/QH8NpbL+j71Gi/trhF39Wun/iPc651EE/pA=;
	b=WliCbROhRXlz42T++vRHznJA3a+fmgIdKyd9/IklN3cwOxcrNMhMKnb6bTOClcAjhLqK3G
	xlFhtVVdX264yFFFBCJ2UUVKCX0dpfVPsLQVdHze6Ce12UXB5z1Ptw+U/t880KERQnqJVw
	DVoM00fB77bdjqvelvXUm1M7AQGc1kKLKjlwbVSbMfDSZutkfF0IDypUe2MoMtw/UyGEJ7
	hFKtdQgJJvJRx+UKqnlSzLth2KvaE1Jl0AiETwuFsvPcUznafcjKRd+OUlAO2siaCLCCiw
	mwedNHLRW/hUGcXGAbo2NC8uLjW5Sznt+4T7EpHmwDldumzZzqr7secXog9cLA==
Date: Mon, 17 Jun 2024 16:19:26 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: star@gmx.li
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] apply a patch to a complete meta-xxx - before using it
 (in kas)?
Message-ID: <20240617141926002dfbfd@mail.local>
References: <58e1f839-e931-4c26-a143-67c06cd059d3@gmx.li>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <58e1f839-e931-4c26-a143-67c06cd059d3@gmx.li>
X-GND-Sasl: alexandre.belloni@bootlin.com
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 17 Jun 2024 14:19:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13376

On 17/06/2024 15:13:42+0200, Steve via lists.yoctoproject.org wrote:
> I need a version of a meta-xxx repo that has new syntax ":" instead of
> "_". Some other minor things have to be changed too (as compatibility
> string)
> 
> I check that meta-xxx out by help of kas tool.
> Do I have a chance to apply a patch right there once the meta-xxx has
> been cloned? The kas docu confuses me a lot.

Yes, kas can do that with the patches property of any repo. I wouldn't
recommend using it but this works.

> Guess I can't do it in Yocto, as my first bitbake command it will
> complain about the syntax, so I can't "repair" that inside yocto.
> Or am I wrong?
> 
> Best regards

> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13371): https://lists.yoctoproject.org/g/poky/message/13371
> Mute This Topic: https://lists.yoctoproject.org/mt/106720251/3617179
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alexandre.belloni@bootlin.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

