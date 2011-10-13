Return-Path: <holger@freyther.de>
Received: from mail.symoco.de (sysmocom.de [78.46.147.233])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2333AE0124A
	for <poky@yoctoproject.org>; Thu, 13 Oct 2011 01:45:32 -0700 (PDT)
Received: from [192.168.0.101] (91-64-80-26-dynip.superkabel.de [91.64.80.26])
	by mail.symoco.de (Postfix) with ESMTPSA id 4ECF12543634
	for <poky@yoctoproject.org>; Thu, 13 Oct 2011 08:43:27 +0000 (UTC)
Message-ID: <4E96A529.2090207@freyther.de>
Date: Thu, 13 Oct 2011 10:45:29 +0200
From: Holger Hans Peter Freyther <holger@freyther.de>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.23) Gecko/20110922 Lightning/1.0b2 Thunderbird/3.1.15
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4E729619.9@freyther.de>
	<4E875D29.8050008@freyther.de>	<4E95ED78.9030603@freyther.de>
	<4E95EEEF.70702@windriver.com>
In-Reply-To: <4E95EEEF.70702@windriver.com>
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
X-List-Received-Date: Thu, 13 Oct 2011 08:45:33 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 10/12/2011 09:47 PM, Mark Hatle wrote:

> In my experience things like PCI devices are better setup statically based on
> the system being created.  (Note, I'm not sure if we have an easy way to do that
> at this point or not..)

With statically you mean putting module_autoload_NAME = "name" in the out of
tree kernel module recipe? This will not 'scale' for us (e.g. one system image
but n-different ethernet NICs we can put in our hardware)

cheers
	holger

