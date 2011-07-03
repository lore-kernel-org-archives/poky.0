Return-Path: <holger@freyther.de>
Received: from gandharva.secretlabs.de (gandharva.secretlabs.de
	[78.46.147.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 047414C804DC
	for <poky@yoctoproject.org>; Sun,  3 Jul 2011 07:24:32 -0500 (CDT)
Received: from [192.168.0.101] (91-64-95-94-dynip.superkabel.de [91.64.95.94])
	by gandharva.secretlabs.de (Postfix) with ESMTPSA id 31B1C1B10C0D;
	Sun,  3 Jul 2011 12:32:28 +0000 (UTC)
Message-ID: <4E105F7C.9020709@freyther.de>
Date: Sun, 03 Jul 2011 14:24:28 +0200
From: Holger Hans Peter Freyther <holger@freyther.de>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110516 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4E10298C.8080507@freyther.de> <1309684260.20015.618.camel@rex>
In-Reply-To: <1309684260.20015.618.camel@rex>
X-Enigmail-Version: 1.1.1
Cc: poky@yoctoproject.org
Subject: Re: kernel upgrade breaks image creation
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
X-List-Received-Date: Sun, 03 Jul 2011 12:24:34 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 07/03/2011 11:11 AM, Richard Purdie wrote:

> Did you try a "bitbake -ccleansstate virtual/kernel"?
> 
> I'm wondering if stale sstate files for the kernel are affecting the
> build somehow? Are you using a custom do_install/copy of kernel.bbclass
> or anything like that?

Hi Richard,

thanks a lot. It turns out I am stupid and I have had a shell mistake in my
modified rootfs_rpm, it is still interesting who tries to access the
System.map (I don't have the kernel-abi file, so image.bbclass should not
try), and that FATAL actually is not fatal here.

Does anyone know if bash can return the line it exited from? I think would be
great if our logs would include something like. BASH stopped processing at
line... in case of errors.

sorry for the noise.

holger

