Return-Path: <zzs213@126.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57C91E00D17; Tue,  5 Mar 2019 01:57:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	FROM_EXCESS_BASE64 autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zzs213[at]126.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
X-Greylist: delayed 1887 seconds by postgrey-1.32 at yocto-www;
	Tue, 05 Mar 2019 01:57:30 PST
Received: from m15-112.126.com (m15-112.126.com [220.181.15.112])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BF4FE00994
	for <poky@yoctoproject.org>; Tue,  5 Mar 2019 01:57:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=From:Subject:Message-ID:Date:MIME-Version; bh=gLosh
	bWN2svZaX5I1xnSqmG/20Cr8o+LHMrn/uBz41E=; b=iT/pS7CdyNQ7879sOlaCD
	kRblsQSzZ1KkTZDXvAtCWSfefAeYkkBY0ZLnPP8SVqE2bX8XnfZZMAqGrbKMKKuD
	eGH0Eqn8VvvLvqFMkAeoxu+fmDE3uFBkIfXoTprQ93/T2kdXSKz4pxu5WWssFo9s
	orTJRvBKDGQKoS449XTyPk=
Received: from [192.168.0.12] (unknown [218.89.233.124])
	by smtp2 (Coremail) with SMTP id DMmowADnJnenQH5caz51EA--.267S2;
	Tue, 05 Mar 2019 17:26:01 +0800 (CST)
To: poky <poky@yoctoproject.org>
From: =?UTF-8?B?5byg5b+g5bGx?= <zzs213@126.com>
Message-ID: <75032b5a-7681-a5a7-40a8-53663832c288@126.com>
Date: Tue, 5 Mar 2019 17:25:59 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.1
MIME-Version: 1.0
X-CM-TRANSID: DMmowADnJnenQH5caz51EA--.267S2
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUD75rDUUUU
X-Originating-IP: [218.89.233.124]
X-CM-SenderInfo: x22vjiat6rjloofrz/1tbiLQluGVpD7NJE5QAAsV
Subject: how to tune s5pv210
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 05 Mar 2019 09:57:31 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

My cpu is s5pv210

When using yocto-2.5.2 with musl libc my cpu tune is:

     DEFAULTTUNE_s5pv210 ?= "cortexa8hf-neon"

It works OK

Now I am using yocto-2.6.0 with newlib. With the same cpu tune. When 
compile a file, gcc said:

     cc1: error: -mfloat-abi=hard: selected processor lacks an FPU

The commandline like this:

     arm-poky-eabi-gcc  --sysroot=... -march=armv7-a  -mhard-float ... \
       -c -o scripts/mod/empty.o scripts/mod/empty.c

It seems the cpu tune should change in the new version.

How to do it, what feather tune should be used?

-- 
Best Regards,
zzs


