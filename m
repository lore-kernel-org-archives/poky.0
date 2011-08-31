Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F307E0076F
	for <poky@yoctoproject.org>; Wed, 31 Aug 2011 12:21:49 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7VJLkb6010975;
	Wed, 31 Aug 2011 20:21:46 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 10593-06; Wed, 31 Aug 2011 20:21:42 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7VJLdwP010969
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 31 Aug 2011 20:21:39 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: v sailaja <vsailub4u@gmail.com>
In-Reply-To: <CAFt-cowyXXMup_j-i36Ws8zXz4xgBeUBSo-eOGDBxd7hymdDUg@mail.gmail.com>
References: <CAFt-cowyXXMup_j-i36Ws8zXz4xgBeUBSo-eOGDBxd7hymdDUg@mail.gmail.com>
Date: Wed, 31 Aug 2011 20:21:26 +0100
Message-ID: <1314818486.5939.486.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: Can we build sugarbay for 32bit
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
X-List-Received-Date: Wed, 31 Aug 2011 19:21:50 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-08-31 at 11:06 +0530, v sailaja wrote:
> Can anyone please tell me how to build the "sugarbay" for 32bit. By
> default sugarbay supports 64bit but is there anyway to change it to
> 32bit.
> My host machine is ubuntu 11.04 and 64bit.

Change meta-intel/meta-sugarbay/conf/machine/sugarbay.conf

to say 

conf/machine/include/tune-core2.inc

instead of x86-64 and then it will build for 32 bit since that is the
default for core2.

Cheers,

Richard





