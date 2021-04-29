Received: from gproxy1-pub.mail.unifiedlayer.com (gproxy1-pub.mail.unifiedlayer.com [69.89.25.95])
 by mx.groups.io with SMTP id smtpd.web09.5982.1619698754716495813
 for <poky@lists.yoctoproject.org>;
 Thu, 29 Apr 2021 05:19:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linumiz.com header.s=default header.b=F1NcKBsh;
 spf=pass (domain: linumiz.com, ip: 69.89.25.95, mailfrom: parthiban@linumiz.com)
Received: from cmgw14.unifiedlayer.com (unknown [10.9.0.14])
	by gproxy1.mail.unifiedlayer.com (Postfix) with ESMTP id B5663F7E47287
	for <poky@lists.yoctoproject.org>; Thu, 29 Apr 2021 06:19:11 -0600 (MDT)
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTP
	id c5dNlb1mYSr9Cc5dOlmDKL; Thu, 29 Apr 2021 06:19:11 -0600
X-Authority-Reason: nr=8
X-Authority-Analysis: v=2.4 cv=FYZUeLy6 c=1 sm=1 tr=0 ts=608aa43f
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=LfuyaZh/8e9VOkaVZk0aRw==:17
 a=dLZJa+xiwSxG16/P+YVxDGlgEgI=:19 a=IkcTkHD0fZMA:10:nop_charset_1
 a=3YhXtTcJ-WEA:10:nop_rcvd_month_year
 a=oz0wMknONp8A:10:endurance_base64_authed_username_1 a=vU9dKmh3AAAA:8
 a=DAI4Hx-KdJkgVCj3FIMA:9 a=QEXdDO2ut3YA:10:nop_charset_2
 a=rsP06fVo5MYu2ilr0aT5:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
	MIME-Version:Date:Message-ID:From:Cc:To:References:Subject:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=bFnz8uf764Hbm6B0aLGzD7U8HkWy/nSZORReUDw074U=; b=F1NcKBsh+vcA9gNhxOtX5S3tvo
	k0T9lSDl9PAndrXDV0ZTwS0Ag44+QUfS1LAttSNRr9hU1PGh56nby6iIkmlUwa1OD0Sdb6ch+QjZT
	Y10SHdU4t3XL0iLuldsctl057b1wMWIvXxBf0j2vkNn8O8/jGNCDWKlUcyCaJASi66SV9cwWFxZCD
	JMyvYEB524wofJ2RAxi+/aQWmUjQN9uaGO4OB0AXRsTSZJgEmah+o+D6LoXEntbAAfwuRS93fOhuN
	VRU0C/7cBi8suPHmsazuV3avEKMJF4UyT9qJ9l+0gGFda5r5aBDJx2z7KLQoknM+5Tm7jDWmTtzBz
	c9n7f7hQ==;
Received: from p4fe0abaa.dip0.t-ipconnect.de ([79.224.171.170]:54582 helo=[192.168.8.138])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94)
	(envelope-from <parthiban@linumiz.com>)
	id 1lc5dM-0018FB-Ne; Thu, 29 Apr 2021 12:19:08 +0000
Subject: python3: Enable AF_BLUETOOTH socket support
References: <9c131edd-b1ef-fbb6-62ae-15bf88ba58c6@linumiz.com>
To: poky@lists.yoctoproject.org
Cc: Parthiban <parthiban@linumiz.com>
From: "Parthiban" <parthiban@linumiz.com>
Organization: Linumiz
X-Forwarded-Message-Id: <9c131edd-b1ef-fbb6-62ae-15bf88ba58c6@linumiz.com>
Message-ID: <d28faa25-707b-7cc2-d247-b2adf7ad1230@linumiz.com>
Date: Thu, 29 Apr 2021 14:19:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <9c131edd-b1ef-fbb6-62ae-15bf88ba58c6@linumiz.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 79.224.171.170
X-Source-L: No
X-Exim-ID: 1lc5dM-0018FB-Ne
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: p4fe0abaa.dip0.t-ipconnect.de ([192.168.8.138]) [79.224.171.170]:54582
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 6
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Dear All,

We are trying to enable AF_BLUETOOTH socket support in python3. As python3 configure checks for
bluetooth.h in sysroot and decides to enable HAVE_BLUETOOTH flag, I did add "bluez5" in DEPENDS.

Both adding

DEPENDS += " bluez5 "
OR
DEPENDS_append_class-target = " bluez5 "

results in cyclic dependency loop as bluez5 depends on python3 as well.

I did tried disabling ptest and relevant python3 dependency with
PACKAGES_remove = " ${PN}-testtools ${PN}-ptest "
EXTRA_OECONF_remove = " --enable-test --disable-testing "
do_compile_ptest_base[noexec] = "1

but no luck.

Thanks in advance for right pointers or help to enable bluetooth support in python3.

-- 
Thanks,
Parthiban N
https://www.linumiz.com
Berlin, Germany
