Return-Path: <zzs213@126.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1103DE00C6F; Wed, 10 Jul 2019 00:36:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zzs213[at]126.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [220.181.15.46 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
X-Greylist: delayed 1867 seconds by postgrey-1.32 at yocto-www;
	Wed, 10 Jul 2019 00:36:30 PDT
Received: from m15-46.126.com (m15-46.126.com [220.181.15.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13417E00BE9
	for <poky@yoctoproject.org>; Wed, 10 Jul 2019 00:36:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=poa35
	OSjpi5sMGyQ74P+eb0RxzIQoa4cZqhXcLub1lc=; b=TZwe8yGf2vEs0cmJfuC01
	sC+Ww8Mnn+0sl9+JEwKB+Q4Edfbpbcz9JXw4RyNqgoiuZARsiTlf4D4PgUGO6OBH
	F2P25mVfS2yG71F2/8c/WIuKaq9AhteNeRnjZDXK4TK5E1eC/QsQzdKiatfez1MB
	Rt3sBebhjouMPU7J1Iwlt4=
Received: from zzs213$126.com ( [171.217.81.112] ) by ajax-webmail-wmsvr46
	(Coremail) ; Wed, 10 Jul 2019 15:05:18 +0800 (CST)
X-Originating-IP: [171.217.81.112]
Date: Wed, 10 Jul 2019 15:05:18 +0800 (CST)
From: =?GBK?B?1cXW0sm9?= <zzs213@126.com>
To: poky <poky@yoctoproject.org>
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20190614(cb3344cf) Copyright (c) 2002-2019 www.mailtech.cn 126com
MIME-Version: 1.0
Message-ID: <c16947b.4bd7.16bdab366b5.Coremail.zzs213@126.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: LsqowAD3_6cujiVdJPVQAA--.20231W
X-CM-SenderInfo: x22vjiat6rjloofrz/1tbiYAvtGVpD8swNfAABsI
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: how to specify extra options for toolchain
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
X-List-Received-Date: Wed, 10 Jul 2019 07:36:32 -0000
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=GBK

SSdtIHVzaW5nIHRvb2xjaGFpbiB3aXRoIG5ld2xpYiwgV2hlbiB0cnkgdG8gYnVpbGQgYW55IGxp
YnJhcnkgbGlieG1sMiBmb3IgZXhhbXBsZS4KYml0YmFrZSB3b3VsZCBidWlsZCBsaWJ0b29sIGZp
cnN0LiBCdXQgaXQgZmFpbGVkIG9uIHRhc2sgbGlidG9vbC1jcm9zc18yLjQuNi5iYjpkb19jb25m
aWd1cmUKCkkgdGhpbmsgdGhpcyBtYXkgYmUgYmVjYXVzZSB0aGUgdG9vbGNoYWluIGxhY2sgb2Yg
c29tZSBzdGFydHVwIG9iamVjdCBmaWxlLgpTbyBJIHdhbid0IHRvIGxldCB0aGUgdG9vbGNoYWlu
IHVzaW5nIHNwZWNpZmljIC5zcGVjcyBmaWxlIHVzaW5nIC1zcGVjcz1maWxlIG9wdGlvbiwKCkJ1
dCB3aGVyZSB0byBhZGQgdGhpcz8gCgpJdCBsb29rcyBsaWtlIFRPT0xDQUhJTl9PUFRJT05TIGlz
ICB0aGUgcmlnaHQgcGxhY2UuIEJ1dCBUT09MQ0hBSU5fT1BUSU9OUyBkb3Mgbm90IGFwcGVhciAK
aW4gYW55IGRvY3VtbWVudC4KClNvIHdoZXJlIGlzIHRoZSByaWdodCBwbGFjZSB0byBhZGQgIi1z
cGVjcz1maWxlIiBvcHRpb24KCi0tIApCZXN0IFJlZ2FyZHMsCnp6cwo=

