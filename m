Return-Path: <holger@freyther.de>
Received: from mail.symoco.de (sysmocom.de [78.46.147.233])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F129E0124A
	for <poky@yoctoproject.org>; Thu, 13 Oct 2011 01:08:52 -0700 (PDT)
Received: from [192.168.0.101] (91-64-80-26-dynip.superkabel.de [91.64.80.26])
	by mail.symoco.de (Postfix) with ESMTPSA id 73E1E2543634
	for <poky@yoctoproject.org>; Thu, 13 Oct 2011 08:06:33 +0000 (UTC)
Message-ID: <4E969C83.9070407@freyther.de>
Date: Thu, 13 Oct 2011 10:08:35 +0200
From: Holger Hans Peter Freyther <holger@freyther.de>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.23) Gecko/20110922 Lightning/1.0b2 Thunderbird/3.1.15
MIME-Version: 1.0
To: poky@yoctoproject.org
X-Enigmail-Version: 1.1.1
Subject: kernel packages and /etc in FILES
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
X-List-Received-Date: Thu, 13 Oct 2011 08:08:53 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

I am a bit behind and I am not sure if this applies to the latest poky. I just
spent some hours trying to figure out where the result of 'modules_conf_MODULE
= ...'.

While the code tries to put FILES_module-package-name = "/etc/modprobe.d" but
the files end up in the 'linux' package.

Does this still apply to the latest version?

holger

