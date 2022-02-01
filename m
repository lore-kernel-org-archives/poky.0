Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
 by mx.groups.io with SMTP id smtpd.web10.47030.1643710748360497323
 for <poky@lists.yoctoproject.org>;
 Tue, 01 Feb 2022 02:19:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=AYsYzx8Y;
 spf=pass (domain: bootlin.com, ip: 217.70.183.196, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id AB944E000A;
	Tue,  1 Feb 2022 10:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1643710745;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=y2580K5ThSGIIuMsTmSm6YGYhmKudoDhfTZgtPcqmZg=;
	b=AYsYzx8YtofqMQfqOnPu0O19SmKMdhZJs2A214/1ku5epkbmUKuqzE4sluvBa4HLrdSAQl
	+vykEnIBd4KJ+DCa26g0ASVPE1BSANglK2k/uXnyALPZBvSpkBO1qgpNSH3i1znYNzh5VJ
	5ICyhTbNaYDv01kDHWtz1QB50g8OacJ2bLSXTxZ/xFNS3FaT9cB1Xx+QY5H8E57FFZCo/S
	TBj5q6BpnofuC4Od6YTJcqmyiYQZuObFhnUdLEGVwTluFiw/NZAu80hFzbmAbajsxjvTnG
	l4Y3HPrJuRW9OEP9gxL2Ma63nC/Z1wRzZ7MS/X543CUtiowUTzIWHVd1Pzt6KQ==
Message-ID: <c3470378-ec2e-c840-e1d8-dfcedc136baa@bootlin.com>
Date: Tue, 1 Feb 2022 11:19:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [poky] Using KSize.py
To: michaelb.miner@gmail.com, poky@lists.yoctoproject.org
References: <9NU7.1643662013735166560.m5GS@lists.yoctoproject.org>
From: "Michael Opdenacker" <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <9NU7.1643662013735166560.m5GS@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi Michael

On 1/31/22 21:46, michaelb.miner@gmail.com wrote:
> The folder I run bitbake from is called build-fb. I am trying to use
> ksize.py. When I run it I get all 0's. What folder do I run this from?
>

You get the answer by running the script with the "-h" option:

 /media/mike/ssd/yocto/poky/scripts/tiny/ksize.py -h
Usage: ksize.py [OPTION]...
  -d,                 display an additional level of drivers detail
  -h, --help          display this help and exit

Run ksize.py from the top-level Linux kernel build directory.
See also
https://docs.yoctoproject.org/dev-manual/common-tasks.html#trim-the-kernel .

Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

