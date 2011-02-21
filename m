Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id E448D4C800A6
	for <poky@lists.pokylinux.org>; Mon, 21 Feb 2011 10:00:27 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 3D592166017A; Mon, 21 Feb 2011 09:00:12 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 1684116600BA;
	Mon, 21 Feb 2011 08:59:51 -0700 (MST)
Message-ID: <4D628BF7.40503@mlbassoc.com>
Date: Mon, 21 Feb 2011 08:59:51 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
References: <4D628A56.6020002@mlbassoc.com>
In-Reply-To: <4D628A56.6020002@mlbassoc.com>
Subject: Re: kernel versions
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
X-List-Received-Date: Mon, 21 Feb 2011 16:00:28 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 02/21/2011 08:52 AM, Gary Thomas wrote:
> I have my own kernel recipes (historical reasons...) which I
> now have 2 versions of. Some platforms have not yet been
> ported to the latest version and I need to keep using the
> older one for those platforms until the porting is complete.
>
> Sadly, I can't get this to work.
>
> Here's what I have
> $ tree meta-amltd/packages/linux/
> meta-amltd/packages/linux/
> ├── linux-am_2.6.32.bb
> ├── linux-am_2.6.37.bb

For clarity, this is my distribution which is layered on Poky

> $ tree meta-cobra3530p60/packages/linux/
> meta-cobra3530p60/packages/linux/
> ├── linux-am-2.6.32
> │ └── cobra3530p60
> │ ├── cobra3530p60.patch
> │ └── defconfig
> ├── linux-am_2.6.32.bbappend

This is one of my platform/machine layers

>
> I tried these settings in my machine/cobra3530p60
> PREFERRED_PROVIDER_virtual/kernel = "linux-am"
> PREFERRED_VERSION_virtual/kernel = "2.6.32"
>
> However, it still wants to build version 2.6.37
>
> What am I missing? How can I force it to use the 2.6.32 version
> for this machine?
>
> Thanks
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

