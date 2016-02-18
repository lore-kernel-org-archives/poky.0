Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED47EE00B89; Thu, 18 Feb 2016 13:19:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44D5AE0090E
	for <poky@yoctoproject.org>; Thu, 18 Feb 2016 13:19:36 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u1ILJXJR006843; Thu, 18 Feb 2016 21:19:33 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id QR1OakiKUv0A; Thu, 18 Feb 2016 21:19:33 +0000 (GMT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u1ILJVmE006840
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 18 Feb 2016 21:19:33 GMT
Message-ID: <1455830371.28376.97.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Jonathan Richardson <jonathan.richardson@broadcom.com>,
	poky@yoctoproject.org
Date: Thu, 18 Feb 2016 21:19:31 +0000
In-Reply-To: <782f4c4196c1be19342a12a8b784662b@mail.gmail.com>
References: <782f4c4196c1be19342a12a8b784662b@mail.gmail.com>
X-Mailer: Evolution 3.16.5-1ubuntu3.1 
Mime-Version: 1.0
Subject: Re: gcc multilib
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
X-List-Received-Date: Thu, 18 Feb 2016 21:19:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2016-02-18 at 12:01 -0800, Jonathan Richardson wrote:
> We have a machine configured for hard floating point. This builds a
> hard fp version of libgcc. We also have some bootloaders and other
> code that require libgcc but use soft fp. I would prefer to keep the
> bootloaders using soft fp. Is there a way to configure libgcc to
> produce both hard and soft fp versions of libraries? There are
> multilib examples for 32 and 64 versions of libs but it’s not clear
> to me how to specify other compiler options to produce multiple
> versions of the libraries.

The bigger question you face is where these binaries expect your libgcc
and perhaps dynamic loader to reside. Its straight forward enough to
configure the system to build two versions with different tunes but one
would need to live in /lib and the other in /lib32 or some other /libXX
location. The way the multilib setup works, it doesn't really care
which configuration you use for a given location.

Cheers,

Richard

