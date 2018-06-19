Return-Path: <abuse@basmevissen.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D627AE01917; Tue, 19 Jun 2018 06:44:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A898BE010EC
	for <poky@yoctoproject.org>; Tue, 19 Jun 2018 06:44:55 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 582D6212004;
	Tue, 19 Jun 2018 15:44:54 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at hosting.emcodev.net
Received: from hosting.emcodev.net ([127.0.0.1])
	by localhost (hosting.emcodev.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id ZapOV662Bh4J; Tue, 19 Jun 2018 15:44:53 +0200 (CEST)
Received: from emcodev.nl (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id C42FC212003;
	Tue, 19 Jun 2018 15:44:53 +0200 (CEST)
MIME-Version: 1.0
Date: Tue, 19 Jun 2018 15:44:53 +0200
From: Bas Mevissen <abuse@basmevissen.nl>
To: Ankit Rastogi <Ankit.Rastogi@kpit.com>
In-Reply-To: <BM1PR0101MB12833B9EE6843CFD07689D6A91700@BM1PR0101MB1283.INDPRD01.PROD.OUTLOOK.COM>
References: <BM1PR0101MB12833B9EE6843CFD07689D6A91700@BM1PR0101MB1283.INDPRD01.PROD.OUTLOOK.COM>
Message-ID: <971d94d15a5e6fe1887a5bc81e2295e1@basmevissen.nl>
X-Sender: abuse@basmevissen.nl
User-Agent: Roundcube Webmail/1.3.6
Cc: poky@yoctoproject.org
Subject: Re: How to export kernel specific headers to userspace
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
X-List-Received-Date: Tue, 19 Jun 2018 13:44:56 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

On 2018-06-19 07:16, Ankit Rastogi wrote:
> Hi,
> 
> Can someone provide any pointers on how to export kernel specific
> headers to userspace?
> 
> I am getting below error while building our one of the component which
> requires kernel uapi headers.
> 
> Error Received:
>  /hdmi-capture/main.c:16:10: fatal error: linux/hdmi_info.h: No such
> file or directory
>> |  #include <linux/hdmi_info.h>
>> |           ^~~~~~~~~~~~~~~~~~~
>> | compilation terminated.
> 
> In yocto 2.5, userspace is boot strapped with linux-libc-headers
> package which uses a set of uapi headers from Linux kernel 4.15. Can
> someone suggest for custom kernels, how to expose uapi headers to
> userspace? Thus create a separate linux-apl-headers package with those
> files.
> 

You might want to (re)move the linux-libc-headers package (header files) 
and install kernel-devsrc package. Then link the include directories 
from /usr/src/kernel/include/{asm*,linux} to /usr/include or modify your 
Makefile to get the linux include files from 
/usr/src/kernel/include/linux instead of /usr/include/linux.

Please note that the kernel-devsrc package is not without problems. 
Building it and manually installing it with --nodeps (for rpm) will do 
the trick. The package is due for replacement, see a thread on this 
started by me a few weeks ago.

Please also note that linux-libc-headers are cleaned-up versions of the 
4.15 kernel headers, so expect some rough edges.


