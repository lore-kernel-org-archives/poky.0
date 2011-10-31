Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5362DE00559
	for <poky@yoctoproject.org>; Mon, 31 Oct 2011 07:17:53 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 018EE16605F0; Mon, 31 Oct 2011 08:17:50 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id C5B651660143;
	Mon, 31 Oct 2011 08:17:49 -0600 (MDT)
Message-ID: <4EAEAE0D.30306@mlbassoc.com>
Date: Mon, 31 Oct 2011 08:17:49 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:7.0.1) Gecko/20110930 Thunderbird/7.0.1
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
References: <4EAA84DC.8010300@mlbassoc.com>
In-Reply-To: <4EAA84DC.8010300@mlbassoc.com>
Subject: Re: Prevent auto-mounting?
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
X-List-Received-Date: Mon, 31 Oct 2011 14:17:53 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-10-28 04:33, Gary Thomas wrote:
> How do I keep a file system from being automatically mounted?
> In particular, I want to automate this sequence:
> * [re]partition a disk using sfdisk
> * format the partitions
> * mount & use the partitions
>
> The problem I have is that when sfdisk completes and the disk label
> is reread by the kernel, some process(?) goes off and tries to mount
> the partitions. This not only gets in the way of reformatting those
> partitions, but it may be 100% incorrect as the disk layout may have
> changed.
>
> Any ideas what process is doing this and how I stop it?
>

I found that adding the device to /etc/udev/mount.blacklist prevents
the device from being mounted just after being [re]partitioned.  In
my case, this command does the trick:
   # echo /dev/mmcblk0p1 >>/etc/udev/mount.blacklist

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

