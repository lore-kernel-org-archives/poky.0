Return-Path: <yanok@emcraft.com>
Received: from ocean.emcraft.com (ocean.emcraft.com [213.221.7.182])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7083C4C80228
	for <poky@pokylinux.org>; Wed,  4 May 2011 12:03:12 -0500 (CDT)
Received: from localhost ([127.0.0.1] helo=[IPv6:::1])
	by ocean.emcraft.com with esmtp (Exim 4.71)
	(envelope-from <yanok@emcraft.com>) id 1QHfTh-0002jm-Vn
	for poky@pokylinux.org; Wed, 04 May 2011 21:03:10 +0400
Message-ID: <4DC186D1.30302@emcraft.com>
Date: Wed, 04 May 2011 21:03:13 +0400
From: Ilya Yanok <yanok@emcraft.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.15) Gecko/20110402 Icedove/3.1.9
MIME-Version: 1.0
To: poky@pokylinux.org
Subject: opkg and opkg-target aliases for the SDK
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
X-List-Received-Date: Wed, 04 May 2011 17:03:13 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hello guys,

I've found that opkg and opkg-target aliases were removed from the SDK
environment script by commit f09f8f4.
However I can't see any note about this in the commit comment. Was this
removal intentional?

Regards, Ilya.

