Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEDDBE004E4
	for <poky@yoctoproject.org>; Fri, 16 Sep 2011 05:35:15 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p8GCfJEO015134; Fri, 16 Sep 2011 13:41:19 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 3nyEgxUrDfmF; Fri, 16 Sep 2011 13:41:19 +0100 (BST)
Received: from [192.168.1.36] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p8GCfCe7015105
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Fri, 16 Sep 2011 13:41:14 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Holger Hans Peter Freyther <holger@freyther.de>
Date: Fri, 16 Sep 2011 13:35:00 +0100
In-Reply-To: <4E729619.9@freyther.de>
References: <4E729619.9@freyther.de>
X-Mailer: Evolution 3.1.91- 
Message-ID: <1316176509.20858.4.camel@ted>
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: udev and pci devices
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
X-List-Received-Date: Fri, 16 Sep 2011 12:35:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-09-16 at 02:19 +0200, Holger Hans Peter Freyther wrote:
> Hi all,
> 
> we stumbled across an issue of udev and busybox/modprobe. udev detects a PCI
> device and according to udevadm test it is selecting:
> 
> udev_rules_apply_to_event: RUN '/sbin/modprobe -bv $env{MODALIAS}'
> /lib/udev/rules.d/80-drivers.rules:5
> udev_rules_apply_to_event: RUN '/sbin/modprobe $env{MODALIAS}'
> /etc/udev/rules.d/local.rules:31
> 
> 
> but as the busybox modprobe does not support the 'b' option it just fails
> before executing the other rules. There are some possible fixes to it.
> 
> 1.)
>   - remove the local.rules rule for loading the module
>   - build busybox with CONFIG_FEATURE_MODPROBE_BLACKLIST for -b support

This sounds like the correct thing to do I think since the
80-driver.rules file is coming from upstream, the local.rules piece is
our extras piece.

Cheers,

Richard


