Return-Path: <zzs213@126.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2947E00CB9; Wed, 20 Feb 2019 22:55:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED, FREEMAIL_FROM,
	FROM_EXCESS_BASE64 autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zzs213[at]126.com)
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from m15-22.126.com (m15-22.126.com [220.181.15.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0365E00BB7
	for <poky@yoctoproject.org>; Wed, 20 Feb 2019 22:55:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=wq368
	X0jv3YGXbI+MSYsGZqxiCRMaotko9Z1dhi9TI4=; b=F1KHagBCx4Nc+siTSoBuS
	tvnxpBGrHtPyEnM/m0xAXIvaJm270kG0bawCirbTGaR5TIbWn+ouKUTIu9HxCzCJ
	RvWoaZb9vv3bvZijhKriU9jtPVLO/vUr3ZoWTCKgP8iUCerKLS37pW5yjkAnrRtk
	CCOVh/gz/D3LnbgEcihuKk=
Received: from zzs213$126.com ( [171.212.171.164] ) by ajax-webmail-wmsvr22
	(Coremail) ; Thu, 21 Feb 2019 14:55:14 +0800 (CST)
X-Originating-IP: [171.212.171.164]
Date: Thu, 21 Feb 2019 14:55:14 +0800 (CST)
From: =?GBK?B?1cXW0sm9?= <zzs213@126.com>
To: poky <poky@yoctoproject.org>
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20180927(cd7136b6) Copyright (c) 2002-2019 www.mailtech.cn 126com
In-Reply-To: <3512d45d-fb35-5d45-f6c5-f90334d5a97c@windriver.com>
References: <6924cb17.721d.1690a3583ba.Coremail.zzs213@126.com>
	<3512d45d-fb35-5d45-f6c5-f90334d5a97c@windriver.com>
MIME-Version: 1.0
Message-ID: <7c6e0a78.52cf.1690ed63a5b.Coremail.zzs213@126.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: FsqowACntwNTS25cMXAYAA--.62562W
X-CM-SenderInfo: x22vjiat6rjloofrz/1tbiDxFiGVpD7s4DjAABsS
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: Re: how to known whether a .inc file had been include
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
X-List-Received-Date: Thu, 21 Feb 2019 06:55:18 -0000
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=GBK

1NogMjAxOS8yLzIxIMnPzucxMDo1NSwgQ2hlblFpINC0tcA6Cj4gT24gMDIvMjAvMjAxOSAwNToy
MSBQTSwg1cXW0sm9IHdyb3RlOgo+PiBJbiBteSByZWNpcGUsIFdvdWxkIGluY2x1ZGUgYSBmb28u
aW5jLkJ1dCBpZiBpdAo+PiBoYWQgYmVlbiBpbmNsdWRlIGluIG90aGVyIHBsYWNlLCBJIHdvbid0
IGluY2x1ZGUgaXQgZHVwbGljYXRlZC4KPj4gU28gaG93dG8gY2hlY2sgd2hldGhlciBmb28uaW5j
IGhhZCBiZWVuIGluY2x1ZGU/Cj4gCj4gSSBoYXZlbid0IGV2ZXIgbWV0IHN1Y2ggcmVxdWlyZW1l
bnQuIFNvIGluc3RlYWQgb2YgdHJ5aW5nIHRvIGZpZ3VyZSBvdXQgaG93LCBJJ2Qgc3VnZ2VzdCB0
byB0YWtlIGEgbG9vayBhdCB3aHkgeW91IGhhdmUgc3VjaCBuZWVkcy4gTWF5YmUgeW91IGNoYW5n
ZSBzb21ldGhpbmcgZWxzZSBhbmQgZG8gbm90IGhhdmUgdG8gZG8gdGhpcyBhZnRlciB0aGF0Lgo+
IApEb3NlIHRoaXMgbWVhbnMgdGhlcmUgaXMgbm8gd2F5IHRvIGtub3duIHRoZSBpbmNsdXNpb24g
c3RhdHVzPwo=

