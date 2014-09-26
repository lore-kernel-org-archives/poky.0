Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4068E00749; Fri, 26 Sep 2014 04:06:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DB7DE00749
	for <poky@yoctoproject.org>; Fri, 26 Sep 2014 04:06:42 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	s8QB6VpF004907; Fri, 26 Sep 2014 12:06:31 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 4jk2uTfwZ4Bp; Fri, 26 Sep 2014 12:06:31 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	s8QB6Qvt004903
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Fri, 26 Sep 2014 12:06:28 +0100
Message-ID: <1411729589.4189.110.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Bian, Naimeng" <biannm@cn.fujitsu.com>
Date: Fri, 26 Sep 2014 12:06:29 +0100
In-Reply-To: <30DC4EDFD798C94083F3E083754532CCCA5E8D@G08CNEXMBPEKD02.g08.fujitsu.local>
References: <30DC4EDFD798C94083F3E083754532CCCA4509@G08CNEXMBPEKD02.g08.fujitsu.local>
	<1410852082.14624.54.camel@ted>
	<30DC4EDFD798C94083F3E083754532CCCA4803@G08CNEXMBPEKD02.g08.fujitsu.local>
	<541A8A89.6030403@gmail.com>
	<30DC4EDFD798C94083F3E083754532CCCA5E8D@G08CNEXMBPEKD02.g08.fujitsu.local>
X-Mailer: Evolution 3.10.4-0ubuntu2 
Mime-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [Question]Remove $BUILDDIR from gcc -v
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
X-List-Received-Date: Fri, 26 Sep 2014 11:06:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2014-09-18 at 09:46 +0000, Bian, Naimeng wrote:
> > > Removing these options is not my purpose, i just want to hide the $BUILDDIR
> > 
> > whats there in BUILDDIR to hide ?
> 
> Thanks for your answer.
> 
> Well, maybe it's a strange case,  but any suggestion it's helpful to me. ^_^
> (I don't think there are some bugs of upstream's poky)
> 
> Of course, we can set BUILDDIR to a safe path such as /workspace,
> but setting BUILDDIR to a secret path caused by a miss operation
> will make a leakage of secret.
> 
> So, is there a method to change BUILDDIR to a relative path not a absolute path.
> Looks like it's not easy. ^_^

I hate to break it to you but there are plenty of other ways the build
path can end up in the resulting binaries, even through things like
debug symbols/information. I'd suggest not putting "secret" information
in the build paths.

Cheers,

Richard


