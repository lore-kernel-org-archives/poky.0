Return-Path: <zzs213@126.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEC74E00C28; Sat, 26 Jan 2019 12:55:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,FREEMAIL_FROM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zzs213[at]126.com)
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
X-Greylist: delayed 1863 seconds by postgrey-1.32 at yocto-www;
	Sat, 26 Jan 2019 12:55:02 PST
Received: from m15-22.126.com (m15-22.126.com [220.181.15.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0989DE00B9C
	for <poky@yoctoproject.org>; Sat, 26 Jan 2019 12:55:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=Date:From:Subject:MIME-Version:Message-ID; bh=tNwjB
	XrF0NmTWekJUVyYUWB/yrR8Q1EfL8PiNXeuyrI=; b=lJZk8C2Tb2lqei3A2hgV9
	SCKdjLzIxrZUd8zhRl83XVtwEWBM+OsTePlM8vEHfhMhcDtsHnsqiMY+Ndv8d0Pv
	jvkak1rakRCOzdZOXnAMobKUokK+EO0m9Cdf7SLp2HFhxQfEhNGQ8EGl3LkpVjOu
	dXXyV2kgHbVPwp80ZIPyl8=
Received: from zzs213$126.com ( [223.87.208.229] ) by ajax-webmail-wmsvr22
	(Coremail) ; Sun, 27 Jan 2019 04:23:56 +0800 (CST)
X-Originating-IP: [223.87.208.229]
Date: Sun, 27 Jan 2019 04:23:56 +0800 (CST)
From: zzs  <zzs213@126.com>
To: poky@yoctoproject.org
X-Priority: 3
X-Mailer: Coremail Webmail Server Version SP_ntes V3.5 build
	20180927(cd7136b6) Copyright (c) 2002-2019 www.mailtech.cn 126com
MIME-Version: 1.0
Message-ID: <4b42693.320.1688bd5449f.Coremail.zzs213@126.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: FsqowACXpwPdwUxcvXsNAA--.3057W
X-CM-SenderInfo: x22vjiat6rjloofrz/1tbiJBpIGVpD6xdgoQABsK
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
Subject: howto select the version of meta-openembedded
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
X-List-Received-Date: Sat, 26 Jan 2019 20:55:04 -0000
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset=GBK

Ckkgd2FuJ3QgdG8gdXNlIHBva3kgYXQgdmVyc2lvbiB5b2N0by0yLjYuIHdoaWNoIHZlcnNpb24g
b2YgCm1ldGEtb3BlbmVtYmVkZGVkLmdpdCBzaG91bGQgYmUgdGhlIGJlc3QgbWF0Y2hlZCB2ZXJz
aW9uPw==

