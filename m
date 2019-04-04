Return-Path: <zzs213@126.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F795E00CEE; Wed,  3 Apr 2019 20:33:02 -0700 (PDT)
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
X-Greylist: delayed 1885 seconds by postgrey-1.32 at yocto-www;
	Wed, 03 Apr 2019 20:33:00 PDT
Received: from m15-29.126.com (m15-29.126.com [220.181.15.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03930E00994
	for <poky@yoctoproject.org>; Wed,  3 Apr 2019 20:33:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=gUqpI
	eq+b4raf787wnGiqJ/z0FsyrPuw9OthfMZTrIc=; b=jl9+1Y544BYagVvPWDugT
	H5HLHm39MDnuBArEQXJMWuSUR/1tBFz+1U5PpB8IYpFUaJ1aqbUpzNKtqs0eG7fr
	V1FilYna9sGSXzQD3yb6GOv3rwAeYWKwXMe+37YwXXHKj+pCfg7Pd6uQ0U8rJSEu
	/xwHxyFoBTglA49exwz/hY=
Received: from zzs213$126.com ( [222.210.44.49] ) by ajax-webmail-wmsvr29
	(Coremail) ; Thu, 4 Apr 2019 11:01:32 +0800 (CST)
X-Originating-IP: [222.210.44.49]
Date: Thu, 4 Apr 2019 11:01:32 +0800 (CST)
From: =?GBK?B?1cXW0sm9?= <zzs213@126.com>
To: poky <poky@yoctoproject.org>
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20180927(cd7136b6) Copyright (c) 2002-2019 www.mailtech.cn 126com
MIME-Version: 1.0
Message-ID: <4faf18c8.2ccf.169e64b5d17.Coremail.zzs213@126.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: HcqowADXTemMc6VchVUSAA--.41404W
X-CM-SenderInfo: x22vjiat6rjloofrz/1tbiuxSMGVpD8LRKMAABsc
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: Can I deploy to multiple dirs with the same content
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
X-List-Received-Date: Thu, 04 Apr 2019 03:33:02 -0000
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=GBK

QWZ0ZXIgImluaGVyaXQgZGVwbG95Ii4gSSB3aXNoIGRlcGxveSBzb21lIGZpbGUgdG8gdHdvIGRp
ciB3aXRoIHNhbWUgY29udGVudC4gSXMgaXQgcG9zc2libGU/CgotLSAKQmVzdCBSZWdhcmRzLAp6
enMK

