Return-Path: <zzs213@126.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44726E00BCC; Wed, 20 Feb 2019 01:51:35 -0800 (PST)
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
X-Greylist: delayed 1819 seconds by postgrey-1.32 at yocto-www;
	Wed, 20 Feb 2019 01:51:34 PST
Received: from m15-38.126.com (m15-38.126.com [220.181.15.38])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43EC9E00872
	for <poky@yoctoproject.org>; Wed, 20 Feb 2019 01:51:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=/Y6lJ
	1T7vIBr734xAIvtfsfLSHvIvIiNi7p3K/CKCXs=; b=bJsGcl6WcQkU8wZIKvzBZ
	svt8JOhvlucI8bz7HW2B1QPYeZSr8Igz9Lqpe+PkckEjG/op6Sg4hA6wmhuYyGsC
	4k8fGkEBMHJ/k4yXCBj8TSRz/AeLRLvPxGnVt0qc23tIhtPQ9uzwv3E+nPRW2VWZ
	qpw9EnJIkSNxVcWAi1mroc=
Received: from zzs213$126.com ( [171.212.171.164] ) by ajax-webmail-wmsvr38
	(Coremail) ; Wed, 20 Feb 2019 17:21:13 +0800 (CST)
X-Originating-IP: [171.212.171.164]
Date: Wed, 20 Feb 2019 17:21:13 +0800 (CST)
From: =?GBK?B?1cXW0sm9?= <zzs213@126.com>
To: poky <poky@yoctoproject.org>
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20180927(cd7136b6) Copyright (c) 2002-2019 www.mailtech.cn 126com
MIME-Version: 1.0
Message-ID: <6924cb17.721d.1690a3583ba.Coremail.zzs213@126.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: JsqowAD34YkJHG1cPdIXAA--.17394W
X-CM-SenderInfo: x22vjiat6rjloofrz/1tbiYANhGVpD69Ub9AABsS
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: how to known whether a .inc file had been include
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
X-List-Received-Date: Wed, 20 Feb 2019 09:51:35 -0000
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=GBK

SW4gbXkgcmVjaXBlLCBXb3VsZCBpbmNsdWRlIGEgZm9vLmluYy5CdXQgaWYgaXQKaGFkIGJlZW4g
aW5jbHVkZSBpbiBvdGhlciBwbGFjZSwgSSB3b24ndCBpbmNsdWRlIGl0IGR1cGxpY2F0ZWQuClNv
IGhvd3RvIGNoZWNrIHdoZXRoZXIgZm9vLmluYyBoYWQgYmVlbiBpbmNsdWRlPwo=

