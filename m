Return-Path: <luca.ceresoli@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3389C7618E
	for <webhook@archiver.kernel.org>; Mon, 24 Apr 2023 10:38:20 +0000 (UTC)
Received: from relay11.mail.gandi.net (relay11.mail.gandi.net [217.70.178.231])
 by mx.groups.io with SMTP id smtpd.web10.47924.1682332699324921291
 for <poky@lists.yoctoproject.org>;
 Mon, 24 Apr 2023 03:38:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=C3IDIDIj;
 spf=pass (domain: bootlin.com, ip: 217.70.178.231, mailfrom: luca.ceresoli@bootlin.com)
Received: from booty (unknown [77.244.183.192])
	(Authenticated sender: luca.ceresoli@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 8E205100002;
	Mon, 24 Apr 2023 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1682332697;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=htyYauSd9W4Om9A/mhKi9hRmg8OgioWTuilHULrH9xM=;
	b=C3IDIDIjdEeRww5cadVuOE2L7R64f+AuoAYgt87sUq2fnjV9Mw00+eIlwWis096rFlTaJ0
	b2QOjne5jekbV281f8efywi/FLtn/g8p8YewCeIlSEBlRbwKsxQehrz6GTKN8QOl0U9piV
	RB8HF6P4WyLqSeyBRaLL4hfU+vRij7b4mfb3t9yYmTimmXed9i3mW+hWs3PPfkVpn/N1Op
	3Zi5ewuwnAln9FUI12NDfbkVkT725AlA7OJaZGv+CBlgXsXmWpofJExaSUoDIahB9DCJE9
	3Nowsp1CgE2ijH9ZO+mb4C1Z/ZwPgRUm1lTKwnbLGIEUNWryP+O+zREfIo8GHQ==
Date: Mon, 24 Apr 2023 12:38:15 +0200
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: "Michael Callahan" <coder.callahan@gmail.com>
Cc: poky@lists.yoctoproject.org, "wangmy" <wangmy@fujitsu.com>
Subject: Re: [poky] [PATCH] zstd: update 1.5.4 -> 1.5.5
Message-ID: <20230424123815.7b33088e@booty>
In-Reply-To: <CADm5WxNHOOJw6N+8bwnsZa50j7A2dPC+dawzR+1QsDHx-yutXA@mail.gmail.com>
References: <CADm5WxNHOOJw6N+8bwnsZa50j7A2dPC+dawzR+1QsDHx-yutXA@mail.gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 24 Apr 2023 10:38:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13059

Hello Michael,

On Sat, 22 Apr 2023 19:15:52 -0600
"Michael Callahan" <coder.callahan@gmail.com> wrote:

> Update zstd to 1.5.5 for a rare corruption fix.

Thank you for your patch! However there are a couple issues with it:
you should send it to the openembedded-core mailing list and you should
not send patch as attachments but rather inline (using git send-email
is probably your best option).

More info on sending patches here:
https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded

Specifically about your patch, another apparently identical one has
already been sent, and it has been rejected as it generated failures
during autobuilder testing:

https://lists.openembedded.org/g/openembedded-core/topic/98172286#179877

You may want to reply to that e-mail if you have more info on that
build issue.

Best regards,
Luca

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

