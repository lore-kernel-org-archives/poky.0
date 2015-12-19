Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75387E00BA0; Sat, 19 Dec 2015 15:06:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8602E0086B
	for <poky@yoctoproject.org>; Sat, 19 Dec 2015 15:06:10 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	tBJN698b006978; Sat, 19 Dec 2015 23:06:09 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id sRFmq2BdohlY; Sat, 19 Dec 2015 23:06:09 +0000 (GMT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	tBJN66pq006967
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Sat, 19 Dec 2015 23:06:07 GMT
Message-ID: <1450566366.8461.89.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Holger Freyther <holger@freyther.de>, poky@yoctoproject.org
Date: Sat, 19 Dec 2015 23:06:06 +0000
In-Reply-To: <1450566176.8461.87.camel@linuxfoundation.org>
References: <014C7722-0747-4CF8-B2D1-AA7021E2B011@freyther.de>
	<1450566176.8461.87.camel@linuxfoundation.org>
X-Mailer: Evolution 3.16.5-1ubuntu3.1 
Mime-Version: 1.0
Subject: Re: Weird python/OE issue on parsing
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
X-List-Received-Date: Sat, 19 Dec 2015 23:06:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2015-12-19 at 23:02 +0000, Richard Purdie wrote:
> On Sat, 2015-12-19 at 13:15 +0100, Holger Freyther wrote:
> > Hi,
> > 
> > my build to track master of Poky has started to fail in a very odd
> > way. I can't reproduce it in a
> > local build but something is severely wrong:
> > 
> > ERROR: Error in compiling python function in
> > /home/oebuilds/jenkins/workspace/Yocto
> > -Master/label/OE/poky/meta/conf/distro/include/tclibc-glibc.inc,
> > line
> > -10000000000005:
> > ..
> > OverflowError: Python int too large to convert to C long
> > 
> > 
> > So somehow IN_PYTHON_EOF starts ending up in linenumber and then a
> > bit is subtracted from
> > it. Any idea how I can run into this?
> 
> It certainly seems related to the line numbering changes maybe
> interacting badly with EOF somehow. Is this on a 32 bit system? 

Putting:

+        if "tclibc-glibc" in realfile:
+            bb.warn(str(lineno))

into better_compile() shows up some nasty looking line numbers. I think
we need to better bounds checks on the line numbers and fix some of the
data that is being passed in for functions at EOF.

Cheers,

Richard

