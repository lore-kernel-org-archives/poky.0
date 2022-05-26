Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
 by mx.groups.io with SMTP id smtpd.web10.19102.1653568508699024949
 for <poky@lists.yoctoproject.org>;
 Thu, 26 May 2022 05:35:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=AomB+H9T;
 spf=pass (domain: bootlin.com, ip: 217.70.183.193, mailfrom: luca.ceresoli@bootlin.com)
Received: (Authenticated sender: luca.ceresoli@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 7A70E240006;
	Thu, 26 May 2022 12:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1653568507;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sBQLsTusl9+7ApTRxVAU0k52gLuzvdqe5SGd3Awibxg=;
	b=AomB+H9TqY0HkvxicYusc6q+m2nLbARnicbkVT1LwCpUeEHpThgO8/N6IJhXC2BFczE75z
	P+5ZB4ipbW4MFhz21Z+5PpCP5fkki1QhSaLAUEf8iI0Il3nq7sQw7OWLnfSWf+PmnP6KN+
	Hzt7Wex4HcRdWZcFrxD4u7wzorka2BlS8GM/DTCeRab0oGJzjidPQos7AF4w8vHDhNq/q0
	zEQ/EI3Ip94DpdYffugszFbWAAknHJcnQE+kbeObVaDoX/cPG6QU/ZWPUNlbqMJ7EunGlT
	1Qrcvg82zADXngwHo2AuOHnOAPUy+9MpJHMcti5/fvNVgKsInlSKKUMsWX1HrA==
Date: Thu, 26 May 2022 14:35:04 +0200
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
To: Rusty Howell <rustyhowell@gmail.com>
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH] oe-depends-dot: Handle new format for task-depends.dot
Message-ID: <20220526143504.3768bcfe@melee>
In-Reply-To: <CAE+BM3kGWGTcOaAS9bD=z3W6fY6MpU0EmXLkkw4zW5TFZ5sSbg@mail.gmail.com>
References: <20220524210240.3223272-1-rustyhowell@gmail.com>
	<20220525104546.4d4ebfef@melee>
	<CAE+BM3kGWGTcOaAS9bD=z3W6fY6MpU0EmXLkkw4zW5TFZ5sSbg@mail.gmail.com>
Organization: Bootlin
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Il giorno Wed, 25 May 2022 10:46:14 -0600
Rusty Howell <rustyhowell@gmail.com> ha scritto:

> Thanks for the information. I've never submitted a patch to OSS stuff
> before, so sorry for the mess up.

No problem. Your patch is already cleaner than many I see daily. A good
achievement if this is your first submission!

Only, in the future please use "reply to all", so the mailing list is
kept updated on the discussion. Thanks!

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
