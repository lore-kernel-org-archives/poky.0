Return-Path: <holger@freyther.de>
Received: from mail.symoco.de (sysmocom.de [78.46.147.233])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 943C5E004E4
	for <poky@yoctoproject.org>; Sat,  1 Oct 2011 11:34:23 -0700 (PDT)
Received: from [192.168.0.101] (91-64-80-26-dynip.superkabel.de [91.64.80.26])
	by mail.symoco.de (Postfix) with ESMTPSA id ECCF62543638
	for <poky@yoctoproject.org>; Sat,  1 Oct 2011 18:31:19 +0000 (UTC)
Message-ID: <4E875D29.8050008@freyther.de>
Date: Sat, 01 Oct 2011 20:34:17 +0200
From: Holger Hans Peter Freyther <holger@freyther.de>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.21) Gecko/20110831 Lightning/1.0b2 Thunderbird/3.1.13
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4E729619.9@freyther.de>
In-Reply-To: <4E729619.9@freyther.de>
X-Enigmail-Version: 1.1.1
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
X-List-Received-Date: Sat, 01 Oct 2011 18:34:24 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 09/16/2011 02:19 AM, Holger Hans Peter Freyther wrote:
> Hi all,
> 
> we stumbled across an issue of udev and busybox/modprobe. udev detects a PCI
> device and according to udevadm test it is selecting:

ping? any interest in having module loading for PCI devices working?

