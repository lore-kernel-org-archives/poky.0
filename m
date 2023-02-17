Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
 by mx.groups.io with SMTP id smtpd.web10.7392.1676643676278698338
 for <poky@lists.yoctoproject.org>;
 Fri, 17 Feb 2023 06:21:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=QyJxr9Wx;
 spf=pass (domain: bootlin.com, ip: 217.70.183.194, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 51C3B40007;
	Fri, 17 Feb 2023 14:21:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1676643674;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=AsIL+go1+PR3368te70aVZ6eBFk1JVMc/72RAqNJdWk=;
	b=QyJxr9WxShdBbUQ0jDrVTug3dbPk742VUlT3j4Qtq07Pht6G3XJ/Eulxihr/TNh2qs0Bcb
	tnOX0Ny8PHs6ibvFO8oUoAfqUvnj26WfD16rBSNxqQEeIK2kxBxIHr0t2DXPUQg43FbsPE
	F5UB4sLZsXXMsyx4E3QQnrVY1AeUceZB4AnXB5vwzmLuRCTgikX+FakagRlOSAs4Cg8ihr
	t/YX3KhqfJNOO3zTmbka6w8vPUPoDJyT9okA8GjQMKjYUV7vfsEJRKo6p2CRzkNkyIpV1W
	4OHaRxJQS/1voKegCBT65dXMP8RGQtvrFuIgcYl2gyoOCqLk0gO84/QPyxWUzw==
Message-ID: <4d70f231-afe0-fb28-4d49-ea5192b120e6@bootlin.com>
Date: Fri, 17 Feb 2023 15:21:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] Test dunfell LTS release on UBUNTU LTS 22.04 #yocto #poky
To: Kamel Fezzani <kamfezz@gmail.com>
References: <Ns4R.1676632334791492919.c94a@lists.yoctoproject.org>
 <Groupsio.1.Ns4R.1676632334791492919.c94a@lists.yoctoproject.org>
From: "Michael Opdenacker" <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <Groupsio.1.Ns4R.1676632334791492919.c94a@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello Kamel

On 17.02.23 at 12:12, Kamel Fezzani wrote:
>
> [Edited Message Follows]
>
> Hello,
> On one of my Yocto projects, I am using dunfell LTS release, and I'm 
> tracking latest dunfell releases (3.1.22 (January 2023)).
> I am using build machines with native UBUNTU distribution.
> I've seen that dunfell LTS release is not tested on UBUNTU LTS 22.04 
> (https://git.yoctoproject.org/poky/tree/meta-poky/conf/distro/poky.conf?h=dunfell#n49 
> <https://git.yoctoproject.org/poky/tree/meta-poky/conf/distro/poky.conf?h=dunfell#n49>).
> Si there any reason for that ? This test is planned ?
> Or should I keep my build machine on UBUNTU20.04 ?


I guess that the main reason is that Ubuntu 22.04 wasn't released when 
Dunfell 3.1 was initially published. Supporting a new version of the 
host distro requires running (and passing) extra tests.

I also have a question about our autobuilders... On 
https://autobuilder.yoctoproject.org/, how to see the Dunfell builds (if 
any)?

Back to your question... Why would you want to stick to Dunfell 3.1, but 
not to Ubuntu 20.04?  Ubuntu 20.04 will still be supported when Dunfell 
reaches its end of life (April 2024).

Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

