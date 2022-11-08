Received: from relay5-d.mail.gandi.net (relay5-d.mail.gandi.net [217.70.183.197])
 by mx.groups.io with SMTP id smtpd.web11.174.1667929171176581755
 for <poky@lists.yoctoproject.org>;
 Tue, 08 Nov 2022 09:39:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=CaRHd91H;
 spf=pass (domain: bootlin.com, ip: 217.70.183.197, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id B4E561C0006;
	Tue,  8 Nov 2022 17:39:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1667929169;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=E18ckyQouE+aVP+BwEkKGKMmKUlHb7iV9ZmdO1d1dKc=;
	b=CaRHd91H9+lIkgusWwxABWNHUuIomq3izZkkxhm895y/GKqI9zzOQwnAEOzTp7jmHuQ9xw
	WIxnY0uKQA4B6uCvo9pkEGNnDEuS4CnHnGelJK8YXIyuKjqE5mzu5FlCFzkykruOmtNsaq
	lvsvwEX0K90AFE9muav/YR42ZApyRENMOQbxt8pa9DhZHCH7dKQ7gBxRjMdRCOo9YKUpBt
	JK39+ii419Ho9TeILSemA3lRYWRa39H3W8VoskRZp/O5rZvee3fxe3uD/Y2dHVsKvzqPeu
	rRhNGIcDCIHqmqr6TLB3ti3Nfc/bmKSvPBFBg18IET62iHuDepki/Na2nQN6Dg==
Message-ID: <7ca6ed75-9018-6731-d5c9-c642d6364ef4@bootlin.com>
Date: Tue, 8 Nov 2022 18:39:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] No poky on lore.kernel.org?
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>,
 Michael Halstead <mhalstead@linuxfoundation.org>
References: <892dcabfb09d4ec283fb25acacd4eff1@axis.com>
From: "Michael Opdenacker" <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <892dcabfb09d4ec283fb25acacd4eff1@axis.com>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Peter

On 11/3/22 02:15, Peter Kjellerstedt wrote:
> Is there any reason poky@lists.yoctoproject.org is not on lore.kernel.org,
> or was it just forgotten?


I assume this was just an oversight.
I can take care of it (https://korg.docs.kernel.org/lore.html), unless 
someone else wants to.

Cheers,
Michael.
-- 

Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

