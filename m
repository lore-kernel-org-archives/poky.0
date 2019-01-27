Return-Path: <zzs213@126.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59BB2E00C88; Sun, 27 Jan 2019 08:33:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=BAYES_00,BODY_URI_ONLY,
	DKIM_INVALID,DKIM_SIGNED,FREEMAIL_FROM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zzs213[at]126.com)
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
	* 1.0 BODY_URI_ONLY Message body is only a URI in one line of text or
	for *      an image
Received: from m15-41.126.com (m15-41.126.com [220.181.15.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47FC9E00B5C
	for <poky@yoctoproject.org>; Sun, 27 Jan 2019 08:33:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=NneK+
	xRDi3B7q0wHsvps7FCfrfTRbG5dA0PS+byH8Ow=; b=VlCSugFdiKfVMojn6krVm
	7Tm4s2HditDbRjRIsZW0Ly6K+BQyKBluljOFfiDrwoRhsym4UcOuouav1x68XObH
	uqd4kI5b1z8jPYrGDAhcuqCAgZM95B0ZeLk6xQhUfQ6OAYHRcRqOyXkPdmbeEVjD
	XlsKKNM4+FsO+5jvXKOq5s=
Received: from zzs213$126.com ( [223.87.208.229] ) by ajax-webmail-wmsvr41
	(Coremail) ; Mon, 28 Jan 2019 00:33:14 +0800 (CST)
X-Originating-IP: [223.87.208.229]
Date: Mon, 28 Jan 2019 00:33:14 +0800 (CST)
From: zzs  <zzs213@126.com>
To: "Khem Raj" <raj.khem@gmail.com>
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20180927(cd7136b6) Copyright (c) 2002-2019 www.mailtech.cn 126com
In-Reply-To: <CAMKF1sod+k=UWA35pNbJwTQCJW8mFj0ORqS44OSytwsnDrbv_w@mail.gmail.com>
References: <4b42693.320.1688bd5449f.Coremail.zzs213@126.com>
	<CAMKF1sod+k=UWA35pNbJwTQCJW8mFj0ORqS44OSytwsnDrbv_w@mail.gmail.com>
MIME-Version: 1.0
Message-ID: <18570e6d.3060.16890286bca.Coremail.zzs213@126.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: KcqowABXgmVL3U1cwroNAA--.11094W
X-CM-SenderInfo: x22vjiat6rjloofrz/1tbi2wFJGVpD7pLBzQABsi
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Cc: poky <poky@yoctoproject.org>
Subject: Re: howto select the version of meta-openembedded
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
X-List-Received-Date: Sun, 27 Jan 2019 16:33:23 -0000
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=GBK

QXQgMjAxOS0wMS0yNyAwNDo1OTowNSwgIktoZW0gUmFqIiA8cmFqLmtoZW1AZ21haWwuY29tPiB3
cm90ZToKPk9uIFNhdCwgSmFuIDI2LCAyMDE5IGF0IDEyOjU1IFBNIHp6cyA8enpzMjEzQDEyNi5j
b20+IHdyb3RlOgo+Pgo+Pgo+PiBJIHdhbid0IHRvIHVzZSBwb2t5IGF0IHZlcnNpb24geW9jdG8t
Mi42LiB3aGljaCB2ZXJzaW9uIG9mCj4+IG1ldGEtb3BlbmVtYmVkZGVkLmdpdCBzaG91bGQgYmUg
dGhlIGJlc3QgbWF0Y2hlZCB2ZXJzaW9uPwo+Cj4yLjYgPSB0aHVkIGJyYW5jaCBpbiBnaXQgc28g
dXNlIHRodWQgYnJhbmNoCj4KPmZvciB2ZXJzaW9uIHRvIGNvZGVuYW1lIG1hcHBpbmcgc2VlCj5o
dHRwczovL3dpa2kueW9jdG9wcm9qZWN0Lm9yZy93aWtpL1JlbGVhc2VzCj4KQnV0IGluIG1ldGEt
b3BlbmVtYmVkZGVkLmdpdCB0aGVyZSB3YXMgbm8gdGFnLCBvbmx5IGEgYnJhbmNoICJ0aHVkIiAs
ClNvIHdoaWNoIGV4YWN0IGNvbW1pdCBzaG91bGQgYmUgdXNlZD8gQW55IGNvbW1pdCBvbiAidGh1
ZCIgYnJhbmNoCmlzIE9LPw==

