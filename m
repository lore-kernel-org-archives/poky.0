Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
 by mx.groups.io with SMTP id smtpd.web11.19460.1661183118829262348
 for <poky@lists.yoctoproject.org>;
 Mon, 22 Aug 2022 08:45:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=GYkA+H5H;
 spf=pass (domain: bootlin.com, ip: 217.70.183.199, mailfrom: luca.ceresoli@bootlin.com)
Received: from booty (unknown [77.244.183.192])
	(Authenticated sender: luca.ceresoli@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 8AB1BFF808;
	Mon, 22 Aug 2022 15:45:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1661183116;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UCcJby6J/CtsvAw51Vn5bgc7Q5SOz4+GfQKCQGLxbMQ=;
	b=GYkA+H5HgJSsFUDBY0UWtTCgN5wJexNTnmnUiFgGXtPKfkZMxzHTXfvyzpJyQ1PT4LayEi
	BBlwCHV90a3CT6ow22LFM8IeIy5SzM+qKvaRuzEfhDQdFVwejMW5cQht6x8oC7Boc7FhNd
	ZMvHptOwkYSVZM1ya+OtjWpZjWhqY5T0Us2rEbCT2Kse5vbLtkHGYR5sM1r/X9OC3qobrk
	EzyLovj3UIsW2dUiJ43odmesFQaeTvcKUShUitAoyrui7qIEMeXzlKG4De18gTg9fdHc7E
	oiZ4RxUOYLqnxhwsWGDFHykljSqfC77euYwQVAXRmdYY+aM0aUDzkN4Xuc+4Ig==
Date: Mon, 22 Aug 2022 17:45:13 +0200
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
To: "Kevin Hao" <kexin.hao@windriver.com>
Cc: <poky@lists.yoctoproject.org>, Richard Purdie
 <richard.purdie@linuxfoundation.org>
Subject: Re: [poky] [PATCH 1/2] meta-yocto-bsp: Bump the kernel to v5.15.60
Message-ID: <20220822174513.1b8bf5c3@booty>
In-Reply-To: <20220821091446.2932085-1-kexin.hao@windriver.com>
References: <20220821091446.2932085-1-kexin.hao@windriver.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Hello Kevin,

On Sun, 21 Aug 2022 17:14:45 +0800
"Kevin Hao" <kexin.hao@windriver.com> wrote:

> Update the v5.15 kernel to the latest stable version for all machines.
> 
> Signed-off-by: Kevin Hao <kexin.hao@windriver.com>

Testing with this patch applied triggers this warning when building for
beaglebone:

  WARNING: linux-yocto-5.19.1+gitAUTOINC+89fdc2046b_06993dc6c9-r0 do_kernel_configcheck: [kernel config]: specified values did not make it into the kernel's final configuration: 

    [NOTE]: 'CONFIG_OMAP_32K_TIMER' last val (y) and .config val (n) do not match

Log:
https://autobuilder.yoctoproject.org/typhoon/#/builders/65/builds/5781/steps/11/logs/stdio

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
