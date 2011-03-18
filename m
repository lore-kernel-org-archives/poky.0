Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 572A04C800B8
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 09:58:35 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2IEwX1q007256;
	Fri, 18 Mar 2011 14:58:33 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 07173-02; Fri, 18 Mar 2011 14:58:29 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2IEwQxq007250
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 18 Mar 2011 14:58:26 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: v sailaja <vsailub4u@gmail.com>
In-Reply-To: <AANLkTikkueH+A1300qnaa+=Zj926i6x38OtUeObk=Aft@mail.gmail.com>
References: <AANLkTikkueH+A1300qnaa+=Zj926i6x38OtUeObk=Aft@mail.gmail.com>
Date: Fri, 18 Mar 2011 14:58:10 +0000
Message-ID: <1300460290.30423.2203.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: There are no i965_dri.so and swrast_dri.so in the File system
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
X-List-Received-Date: Fri, 18 Mar 2011 14:58:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-03-18 at 18:13 +0530, v sailaja wrote:
> Hi,
> 
> I pulled the mesa into poky.
> mesa provides glu,gl, inter_dri and i965_dri , swrast_dri
> These i965_dri.so and swarst_dri.so are present in the sysroots i.e.,
> poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/dri
> 
> I am trying to mount the filesystem
> poky-image-minimal-atom-pc-20110318115927.rootfs.ext3 which is under
> build/tmp/deploy/images
> 
> But the dri folder is created under the filesystem and these
> i965_dri.so and swarst_dri.so files are not there.
> 
> Please anyone help me in resolving this  problem???
>  dri is not created, why???
> please...

A minimal image doesn't contain a graphics stack. If you add something
to the image that depends on graphics, the graphics components would get
added.

Cheers,

Richard


