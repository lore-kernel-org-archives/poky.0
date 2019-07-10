Return-Path: <zzs213@126.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36162E00C6F; Wed, 10 Jul 2019 01:41:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED, FREEMAIL_FROM,
	FROM_EXCESS_BASE64 autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zzs213[at]126.com)
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
X-Greylist: delayed 1819 seconds by postgrey-1.32 at yocto-www;
	Wed, 10 Jul 2019 01:41:16 PDT
Received: from m15-22.126.com (m15-22.126.com [220.181.15.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C54DE00BE9
	for <poky@yoctoproject.org>; Wed, 10 Jul 2019 01:41:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=Zx7yb
	ERk319J9/OxqhPzCGhAr4lYz0fO9FoYwjrdbY8=; b=I1Cqd6hNGy5PRj5aUn6oG
	8y+oD9PowIQT1BzoZu/3EMvWk9vKuo+zaApHfO9kTxXbWH4eU/soxMF1e+PgpvQT
	BG8kvyrHYnPxpR/kb2RoO7sTn/gNjwGjPMFUsCtxgI+6EFXONqqVGwy+x2oCvvN/
	21S35wvD5KyyJYyAO5Hbtg=
Received: from zzs213$126.com ( [171.217.81.112] ) by ajax-webmail-wmsvr22
	(Coremail) ; Wed, 10 Jul 2019 16:10:53 +0800 (CST)
X-Originating-IP: [171.217.81.112]
Date: Wed, 10 Jul 2019 16:10:53 +0800 (CST)
From: =?GBK?B?1cXW0sm9?= <zzs213@126.com>
To: poky <poky@yoctoproject.org>
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20190614(cb3344cf) Copyright (c) 2002-2019 www.mailtech.cn 126com
MIME-Version: 1.0
Message-ID: <781c13ee.5d79.16bdaef7022.Coremail.zzs213@126.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: FsqowABXbzOOnSVdaiBRAA--.56222W
X-CM-SenderInfo: x22vjiat6rjloofrz/1tbiYBPtGVpD8sy28AABsn
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: howto build libstdc++ while using newlib
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
X-List-Received-Date: Wed, 10 Jul 2019 08:41:18 -0000
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=GBK

d2hlbiB0aGUgdG9vbGNoYWluIGdlbmVyYXRlZCB1c2luZyBuZXdsaWIsIHRoZXJlIGFyZSBubyBs
aWJzdGRjKysgaW4gaXQuClNvLCBDYW4ndCBidWlsZCBvdGhlciBsaWJyYXJ5cyBidWlsZCB3aXRo
IGNtYWtlLCBiZWNhdXNlIG9mIGVycm9yIHRlc3RpbmcgY3h4IHRvb2wgaW4gZG9fY29uZmlndXJl
CgpIb3cgQ2FuIGFkZCBsaWJzdGRjKysgPwoKLS0gCkJlc3QgUmVnYXJkcywKenpzCg==

