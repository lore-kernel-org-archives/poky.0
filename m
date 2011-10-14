Return-Path: <holger@freyther.de>
Received: from mail.symoco.de (sysmocom.de [78.46.147.233])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39F16E01327
	for <poky@yoctoproject.org>; Fri, 14 Oct 2011 00:56:50 -0700 (PDT)
Received: from [192.168.0.101] (91-64-80-26-dynip.superkabel.de [91.64.80.26])
	by mail.symoco.de (Postfix) with ESMTPSA id 4D62A2543634
	for <poky@yoctoproject.org>; Fri, 14 Oct 2011 07:54:49 +0000 (UTC)
Message-ID: <4E97EB3E.4070402@freyther.de>
Date: Fri, 14 Oct 2011 09:56:46 +0200
From: Holger Hans Peter Freyther <holger@freyther.de>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.23) Gecko/20110922 Lightning/1.0b2 Thunderbird/3.1.15
MIME-Version: 1.0
To: poky@yoctoproject.org
X-Enigmail-Version: 1.1.1
Subject: kernel modules and opkg
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
X-List-Received-Date: Fri, 14 Oct 2011 07:56:52 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

I am using opkg for one of my images (because I don't have enough space for
zypper, and only got apt4rpm work partially). Now module loading does not work
after installation. This is due opkg installing 'interceptors' for depmod and
update-modules, so the modprobe mISDN_l1loop is called before the real
update-modules has been called.

anyone else has seen this problem? should the interception be disabled for
opkg? should it intercept modprobe as well? is something like this done for RPM?



#!/bin/sh
if [ -n "$D" ]; then
	i586-poky-linux-depmod-2.6 -A -b $D -F /...System.map-2.6.39.4-yocto-standard
2.6.39.4-yocto-standard
else
	depmod -a
	update-modules || true
fi

if [ x"$D" = "x" ]; then
	modprobe mISDN_l1loop || true
fi

