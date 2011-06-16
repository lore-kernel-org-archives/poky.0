Return-Path: <yanok@emcraft.com>
Received: from ocean.emcraft.com (ocean.emcraft.com [213.221.7.182])
	by mx1.pokylinux.org (Postfix) with ESMTP id 546B54C800A6
	for <poky@pokylinux.org>; Thu, 16 Jun 2011 11:19:15 -0500 (CDT)
Received: from localhost ([127.0.0.1] helo=[IPv6:::1])
	by ocean.emcraft.com with esmtp (Exim 4.71)
	(envelope-from <yanok@emcraft.com>) id 1QXFHl-0003k4-C8
	for poky@pokylinux.org; Thu, 16 Jun 2011 20:19:13 +0400
Message-ID: <4DFA2CFF.6020003@emcraft.com>
Date: Thu, 16 Jun 2011 20:19:11 +0400
From: Ilya Yanok <yanok@emcraft.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110510 Icedove/3.1.10
MIME-Version: 1.0
To: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: bbappend and require
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
X-List-Received-Date: Thu, 16 Jun 2011 16:19:17 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi guys,

Is bbappend supposed to work when the recipe is included (with require)
from another recipe?

We want to add some package to SDK so I've created
task-sdk-host.bbappend in our layer and it works fine. But when I'm
building task-qte-toolchain-host (which requires task-sdk-host) bbappend
file seems to be ignored. Is it to be expected?

It's no problem to create task-qte-toolchain.bbappend also, and this
fixes the problem but what should be the right behavior of require wrt
bbapend?

Thanks.

Regards, Ilya.

