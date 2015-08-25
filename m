Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE7EAE00BEE; Tue, 25 Aug 2015 07:12:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 361FBE003D9
	for <poky@yoctoproject.org>; Tue, 25 Aug 2015 07:12:25 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t7PECMOO002932; Tue, 25 Aug 2015 15:12:22 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id CtPNh5jMD_to; Tue, 25 Aug 2015 15:12:22 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t7PECAjl002856
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Tue, 25 Aug 2015 15:12:21 +0100
Message-ID: <1440511930.12105.425.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: matti kaasinen <matti.kaasinen@gmail.com>
Date: Tue, 25 Aug 2015 15:12:10 +0100
In-Reply-To: <CADnUhn3V5iB4g1gb+2btHTK5pWU=j0LfOJpHj+EJHeoU1ERKew@mail.gmail.com>
References: <CADnUhn3V5iB4g1gb+2btHTK5pWU=j0LfOJpHj+EJHeoU1ERKew@mail.gmail.com>
X-Mailer: Evolution 3.12.11-0ubuntu3 
Mime-Version: 1.0
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [Errno 18] Invalid cross-device link warning coming from license file copy
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
X-List-Received-Date: Tue, 25 Aug 2015 14:12:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2015-08-19 at 15:48 +0300, matti kaasinen wrote:
> Is there any way of getting rid of warnings of following type:
> 
> WARNING: Could not copy license file /YOCTO/poky/LICENSE
> to /XXX/work/am335x_evm-poky-linux-gnueabi/xxxx-image/1.0-r0/license-destdir/xxx-image/LICENSE: [Errno 18] Invalid cross-device link
> 
> 
> Yes, sources and results are located on different logical drives, but
> should it still be possible to copy files between them. Everything
> else works fine in bitbaking.

Can you be a little more clear about what you did please? I assume you
changed TMPDIR to point to a different disk to the one where the poky
checkout is located?

I'm still a little puzzled about why the existing check doesn't catch
the fact they're different disks...

Cheers,

Richard



