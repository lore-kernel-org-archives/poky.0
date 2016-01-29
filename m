Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B3BAE00AF4; Fri, 29 Jan 2016 09:36:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,KHOP_DYNAMIC
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 KHOP_DYNAMIC Relay looks like a dynamic address
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AE01E00ADD
	for <poky@yoctoproject.org>; Fri, 29 Jan 2016 09:35:54 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u0THZqWG006570; Fri, 29 Jan 2016 17:35:52 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id ou5POP-tTmYF; Fri, 29 Jan 2016 17:35:52 +0000 (GMT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u0THZljP006563
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Fri, 29 Jan 2016 17:35:48 GMT
Message-ID: <1454088947.10340.75.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>,
	poky@yoctoproject.org
Date: Fri, 29 Jan 2016 17:35:47 +0000
In-Reply-To: <1454088119-28286-1-git-send-email-alejandro.hernandez@linux.intel.com>
References: <1454088119-28286-1-git-send-email-alejandro.hernandez@linux.intel.com>
X-Mailer: Evolution 3.16.5-1ubuntu3.1 
Mime-Version: 1.0
Subject: Re: [PATCH] linux-yocto: Adds new genericx86 and genericx86-64 SRCREVs for kernel 4.4
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
X-List-Received-Date: Fri, 29 Jan 2016 17:36:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2016-01-29 at 17:21 +0000, Alejandro Hernandez wrote:
> The only issue I found was on poky-lsb - genericx86-64 using kernel
> 4.4 dmesg shows the following:
> 
> [drm:gen8_irq_handler] *ERROR* The master control interrupt lied
> (SDE)!

If I merge this, am I going to start seeing autobuilder failures and QA
reports about this?

What do we plan to do about that?

Cheers,

Richard

