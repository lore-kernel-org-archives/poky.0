Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
 by mx.groups.io with SMTP id smtpd.web11.2638.1669224493736460040
 for <poky@lists.yoctoproject.org>;
 Wed, 23 Nov 2022 09:28:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmx.li header.s=s31663417 header.b=l8wn1pH6;
 spf=pass (domain: gmx.li, ip: 212.227.17.20, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.li; s=s31663417;
	t=1669224491; bh=p26oxLYpUAZoJV83Xr++d5vPPgwlmgjS8O3zaY9Qwnc=;
	h=X-UI-Sender-Class:Date:From:Subject:To;
	b=l8wn1pH6ClNQHkNxGzrqrv6rleAt8SrBKbzzN1eaU58VMF6QlxmBy/tsyz4dsiFUk
	 B/hHNLR3OaeKEgmx7ROliySVrLHyu0AhJpywZy066uOGvvCNE4ZhjqVejQsJ5qGctt
	 WFChd/WcC4DIVm+CRciEhwIUKNKwWHmUbiX0q6cXefAGWhzDbdVnjymx89jP35weve
	 FoPxJ5s6HPPyOZr1cTl82/W+ApI0jujROnuPCLFLoFZCiuDwf/6pRXC9f3RTcHSHzk
	 p67Q9b75Dw9fSaerwbV7fakZOFjHw8HkjPYwk/2FJZ8eKXLu8oguzqMQHtWhKhzfpx
	 RAoxXImeSjsAw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.3.20] ([84.185.242.13]) by mail.gmx.net (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MeU4y-1pW8Qp1YCS-00aRMZ for
 <poky@lists.yoctoproject.org>; Wed, 23 Nov 2022 18:28:11 +0100
Message-ID: <c615aa2d-b8f3-913d-0a0c-a85037788752@gmx.li>
Date: Wed, 23 Nov 2022 18:28:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
From: "Steve" <star@gmx.li>
Subject: [poky] gcc11.3 (?) optimization performance problems
To: poky@lists.yoctoproject.org
X-Provags-ID: V03:K1:mBXOJNW81oTOgDlOMGuORH1iWzLkhwjxEr+8THdf/etb+oHv1vv
 Bmgel0gg9N8yXfyK1yDLvyUM4OELiUT/gF0uan9dk6Ha2RxX+dMpSppo96dP4A6tNFGHQ1F
 +tTNfNtxRDrH7gjm6DT/9wxaAmOXa7sNJUqcNt989fOFo1rh4upqd9scBMEytPuJyLS6lSu
 v5EPZJOHERG67GQzsL4TA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:k2QQOf+eGuA=;+ml99DvdZF2VG9USCalg2iwRkXx
 O53kYgzdC9WEqRdWQJly2QVD4jUlM0xH/jIFHxciriPNcxaWkk2837G/rApuzukDjpPr82ORb
 5LJakwLZ4s4WbKvwC3S8hzedVPaEHsHuG3zbUwqzJIfJuEGFEb//vIz5VGSRDlsddAqGQJCoK
 fb0T+PlMy+FeVzF0dYKalWU86FOZ9bTh32CGYQXV5ovMNbKCqmgMM/yihcxm5Qh4zJxhmySFm
 ag8dxdypEKbt/NmKKiRonqAYJ7kv2W7RhHhUg6Al2Wo1iCiPgn8onw7pIAEwcJZYvGw6/uaxf
 IkaCpwYQQLpRTSotY9McO1A4Q4h0hkth0eGQj1HI7frbIqrWXALCWvE0oYtCpCPTT/Yoy/snx
 FIEpJWjilfmE0M8AA/kbaruJ4rRl6EzAg+wub+xl7cawpv6CSgFBiCZVcU3Pf4Jp84N9IoY9J
 UOZGgWC49NPsc5aSd+BNumX19ZRq0AHEn0OjOx3989RNYDeYzdKd86viZtjsfaaE8Lsj8CnyI
 uHQYRDimopVc72BCP+TS5+Aiz4DA/nLHLVv25D8wQ7ZQJyM7tDu6xz4vjou7Aj5VsoCwQ379Q
 pqolxSs4Go7V/BRSHXSQXrWr4jAH++pTNTVM3XcpVI5FEW3KEyrlIqbjfFhaHSVZUe1zrf8MH
 DVOsL+quPiqkaORGtjD9U9HBgII47Tty/kjC6+s3ZJHqlnWob2EqnNmyCr16h4iYiY6XEa0DG
 LS6QmiKgYZYFvYpTO6rugObcTn8tZlDxuT3YNUie5vXsc0pmtktuixxDWOr2Lj+dHjbWQSM7p
 0P+wBnDBsooPJDPCA6Oyzo2iCkQueJVQs7TOxzGko3j9AAYNVsxDI9ddnYwwLMkdZZL2UCPoq
 PZ59NRpPz+rbWjvibTXfB4b/PCIW4REkSvtMray2rTbAqw3HTq465a4kxa1xp5M86wgZ3LoMg
 +2eafA==
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hello, I switched my poky distro (and SDK to compile) to 4.0.5 - running
an CortexA53 with 4 cores (before it was 4.0.0 I think).
My test application simple average over an array of 5 million bytes
takes now around 8 times as long as before.

What is changed is gcc from 11.2 to 11.3. Can this be the reason?
Compiler options, eg -O3 keeps same. Is there indeed a regression?

The speed neither depends on rootfs nor kernel. Just the compiler/SDK
decides wether the compiled app is fast or slow.

Best regards, Steve
