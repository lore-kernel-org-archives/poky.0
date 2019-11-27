Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.2749.1574836525039457124
 for <poky@lists.yoctoproject.org>;
 Tue, 26 Nov 2019 22:35:25 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: liezhi.yang@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E045E00DA3; Tue, 26 Nov 2019 22:35:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EABFE0091A
	for <poky@yoctoproject.org>; Tue, 26 Nov 2019 22:35:23 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id xAR6ZMVo023031
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Tue, 26 Nov 2019 22:35:22 -0800 (PST)
Received: from [128.224.162.181] (128.224.162.181) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.40) with Microsoft SMTP Server id 14.3.468.0; Tue, 26 Nov 2019
 22:35:21 -0800
Subject: Re: [pseudo][PATCH] realpath.c: Remove trailing slashes
To: Seebs <seebs@seebs.net>
CC: <poky@yoctoproject.org>
References: <1574735745-54723-1-git-send-email-liezhi.yang@windriver.com>
 <20191126110922.630c44e7@seebsdell>
From: "Robert Yang" <liezhi.yang@windriver.com>
Message-ID: <ca4ad872-53df-adb0-d27c-6a53436e45a2@windriver.com>
Date: Wed, 27 Nov 2019 14:35:03 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191126110922.630c44e7@seebsdell>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Peter,

On 11/27/19 1:09 AM, Seebs wrote:
> On Tue, 26 Nov 2019 10:35:45 +0800
> Robert Yang <liezhi.yang@windriver.com> wrote:
> 
>> Linux system's realpath() remove trailing slashes, but pseudo's
>> doesn't, need make them identical.
>>
>> E.g., the following code prints '/tmp' with system's realpath, but
>> pseudo's realpath prints '/tmp/':
> 
> I'm a bit concerned about this mostly because I think we have existing
> code closely related to this already, somewhere in pseudo, that had to
> do with path canonicalization. It might be that we're supposed to keep
> the slash in *other* contexts, but need to drop it for realpath
> *specifically*, though?

Long time no see, the slash is still be kept for other parts, this patch only
affects realpath(), kernel's Makefile relies on realpath removes the trailing
slash, which checks whether build dir = source dir, it checks whether
"$(realpath build/) = $(realpath build)", this should be true, but
unfortunately, it is false when pseudo is enabled, which leads to a very
puzzled problem. We need make pseudo's syscalls identical to system's.

// Robert

> 
> -s
> 
