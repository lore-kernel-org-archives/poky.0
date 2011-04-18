Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 57EA54C800A2
	for <poky@yoctoproject.org>; Mon, 18 Apr 2011 09:13:41 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p3IEDaHY013672;
	Mon, 18 Apr 2011 15:13:36 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 13382-06; Mon, 18 Apr 2011 15:13:32 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p3IEDTGm013666
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 18 Apr 2011 15:13:29 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: chinmaya hoshing <cahoshing@gmail.com>
In-Reply-To: <BANLkTimfZW3gty+XVS1cNNZ9Z=A7v8RBJA@mail.gmail.com>
References: <BANLkTimfZW3gty+XVS1cNNZ9Z=A7v8RBJA@mail.gmail.com>
Date: Mon, 18 Apr 2011 15:13:20 +0100
Message-ID: <1303136000.5518.126.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: Error in building poky
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 18 Apr 2011 14:13:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

On Tue, 2011-04-12 at 14:45 +0530, chinmaya hoshing wrote:
> I am getting the following pattern of error while building poky,please
> can u help me out to find the root cause
> 
> 
> I would like to add,that whenever the number of packages inside the
> recipes-core are increased I am faced with this error
> Has it to do with the size of ROOTFS ???? or else ,I am not able to
> add any of the packages further ,
> Have u any idea about this kind of error,let me know

You are installing some package which contains something in /var/cache
which is making rpm unhappy:

> | base-files
>  ##################################################
> | error: unpacking of archive failed on file /var/cache: cpio: rename
> failed - Inappropriate ioctl for device
> | pango-module-basic-x
>  ##################################################

So you need to track down which package has this strange /var/cache
entity in it and fix that. I'd be interested to know what kind of file
is causing this problem...

Cheers,

Richard



