Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30C87C3DA6E
	for <webhook@archiver.kernel.org>; Wed, 20 Dec 2023 15:13:28 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
 by mx.groups.io with SMTP id smtpd.web11.23484.1703085205990473468
 for <poky@lists.yoctoproject.org>;
 Wed, 20 Dec 2023 07:13:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=DOhtLTH0;
 spf=pass (domain: bootlin.com, ip: 217.70.183.201, mailfrom: michael.opdenacker@bootlin.com)
Received: by mail.gandi.net (Postfix) with ESMTPSA id D5BA91BF208;
	Wed, 20 Dec 2023 15:13:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1703085204;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=lr8NveaT1au+sZVvI6jnhQ563TTwP4W9C4jJHUDma90=;
	b=DOhtLTH0Bcf8b0AAob0YmfqgFjXmulPdIn42EpmhcUtIGTR6IFDoLPnH1qXb9M7Tpk6Z3q
	IXHaM6pjqIV1uOSMS73c4TfFvj02dn5/cFbFRnJfeJNL2qLdCeimaPZ7TaeNjgY33OdCi/
	vTrkvbVb6tyQdT6GN8cH2bxCf3rBNScUYdd4ywNkmTVMa+vzRnFV89O7jsiUBfK/dPjzvp
	lcJ5O6jTRl9qw7mecIAkavAJ8dP+7qYFydBNsFgINMSUZRP2Qu+7zdCaMiU6sAxVHFrybR
	Dnk5FHvWiO17hNzgLEGGJtK+dVjLiFhvl1xSFXun9je2RSroAsmC9QDn5sI+IQ==
Message-ID: <cd61b01b-32e1-4edc-bf05-d9e5bb31dc1b@bootlin.com>
Date: Wed, 20 Dec 2023 16:13:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Language: en-US
To: Michael Halstead <mhalstead@linuxfoundation.org>
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Subject: Add a new OpenSuse Leap 15.5 worker?
Organization: Bootlin
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-GND-Sasl: michael.opdenacker@bootlin.com
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 20 Dec 2023 15:13:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13218

Hi Michael

Checking our workers, I see that we just have an "opensuse154" worker, 
but OpenSuse Leap 15.4 reaches end of life soon, at the end of this year 
(see https://en.wikipedia.org/wiki/OpenSUSE)

To go on supporting OpenSuse in 2024, could we have a new 15.5 worker?

Thanks in advance
Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


