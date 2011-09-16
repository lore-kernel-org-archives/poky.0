Return-Path: <holger@freyther.de>
Received: from mail.symoco.de (sysmocom.de [78.46.147.233])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 611E0E004DD
	for <poky@yoctoproject.org>; Thu, 15 Sep 2011 17:19:42 -0700 (PDT)
Received: from [172.17.1.50] (bbcarfel.sites.bitbuzz.net [78.24.19.221])
	by mail.symoco.de (Postfix) with ESMTPSA id DC8982543634
	for <poky@yoctoproject.org>; Fri, 16 Sep 2011 00:20:04 +0000 (UTC)
Message-ID: <4E729619.9@freyther.de>
Date: Fri, 16 Sep 2011 02:19:37 +0200
From: Holger Hans Peter Freyther <holger@freyther.de>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.21) Gecko/20110831 Lightning/1.0b2 Thunderbird/3.1.13
MIME-Version: 1.0
To: poky@yoctoproject.org
X-Enigmail-Version: 1.1.1
Subject: udev and pci devices
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
X-List-Received-Date: Fri, 16 Sep 2011 00:19:44 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi all,

we stumbled across an issue of udev and busybox/modprobe. udev detects a PCI
device and according to udevadm test it is selecting:

udev_rules_apply_to_event: RUN '/sbin/modprobe -bv $env{MODALIAS}'
/lib/udev/rules.d/80-drivers.rules:5
udev_rules_apply_to_event: RUN '/sbin/modprobe $env{MODALIAS}'
/etc/udev/rules.d/local.rules:31


but as the busybox modprobe does not support the 'b' option it just fails
before executing the other rules. There are some possible fixes to it.

1.)
  - remove the local.rules rule for loading the module
  - build busybox with CONFIG_FEATURE_MODPROBE_BLACKLIST for -b support

2.)
  - remove the 80-drivers.rules and let the modprobe just be executed by the
    other udev rules.

comments?

	holger

