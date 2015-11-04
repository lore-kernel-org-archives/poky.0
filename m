Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB63FE0071C; Wed,  4 Nov 2015 08:04:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DB22E00343
	for <poky@yoctoproject.org>; Wed,  4 Nov 2015 08:04:54 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	tA4G4nGU014610; Wed, 4 Nov 2015 16:04:49 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 6OWt9H2j6juD; Wed,  4 Nov 2015 16:04:49 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	tA4G4XGb014589
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 4 Nov 2015 16:04:45 GMT
Message-ID: <1446653073.15270.162.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Ivan Sergio Borgonovo <mail@webthatworks.it>
Date: Wed, 04 Nov 2015 16:04:33 +0000
In-Reply-To: <563A2A22.7010202@webthatworks.it>
References: <563A2A22.7010202@webthatworks.it>
X-Mailer: Evolution 3.12.11-0ubuntu3 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: avoid to download kernel when bitbake -c configure virtual/kernel
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
X-List-Received-Date: Wed, 04 Nov 2015 16:04:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2015-11-04 at 16:54 +0100, Ivan Sergio Borgonovo wrote:
> I've learnt that to develop kernel patches I should
> 
> bitbake -c cleanall virtual/kernel
> bitbake -c configure virtual/kernel
> ...

"cleanall" means remove *everything* including the sources. Not sure why
you'd be using that, try "clean" instead.

> bitbake -c configure virtual/kernel
> wants to download the kernel once more
> 
> Did I do something wrong or is there a way to avoid to download the 
> kernel over and over other than setting up a proxy?

Don't use "cleanall", you shouldn't need to. There is also "cleansstate"
if you really wanted to remove prebuilt cache objects but again, you
shouldn't need that. "cleansstate" will be better than "cleanall" though
from a downloads perspective.

Cheers,

Richard


