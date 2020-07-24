Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
 by mx.groups.io with SMTP id smtpd.web12.2369.1595581168129954384
 for <poky@lists.yoctoproject.org>;
 Fri, 24 Jul 2020 01:59:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@basmevissen.nl header.s=default header.b=lDpwlVaW;
 spf=pass (domain: basmevissen.nl, ip: 178.18.92.162, mailfrom: abuse@basmevissen.nl)
Received: from hosting.emcodev.net (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 166A7212002;
	Fri, 24 Jul 2020 10:59:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=basmevissen.nl;
	s=default; t=1595581165; h=from:from:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qWswe5P/TVUgIc40E6fMWcyuXJjTOTJYytubW25UU9o=;
	b=lDpwlVaWymGIkJVCSzpuA0dvVoXTUivK8BjfqxvdpWK6dza22TwbicfqGM+kQXFjNtlq8u
	/hH1M5cjmK4ggx42HX79+ogovdISRmvP6FOKQA7k5kUHDoMVE1mCpyBTaPjP+QS0074cCu
	8fcDKrBNFMIvyfeEycPptJS6b2ZZGxu3A1f38b7fyyhPUNoA6ElHHJAv7teKh0ajbf+nwT
	DcANqYW5DvkDgY/zgYQOcxWnnUlQPEGlwDg1x11v3cy1/RUPrBJbC4DLwGe49PreJ1QblW
	CtyLzQMAZFvAzKCyasgu+0wxWct9tlIVkhdcYO6cNh0Y98p7GgLo1gHgrFC8sTTmUndZak
	rqb9IMf1xyQLP8261/nmo4TJqBg5YK+PyLfSqDjDOtqHBeVxeJYlA04KCZKsYG5XIE/mlV
	zDowIYz60FcI4IANbA2wfZyAtQzRJwtYJfNUaSNDYfenB+iRuJ12v+QO9/qdbPRIxBRZJQ
	NN0ptO76NCoBqEpce+NV6fnJE7wVBJV4agpyMWs5LL7GYspGlgTIPMSDyTJQxn6jA/H8oU
	Vx/nVGlHgYovBDvstGPIYmgmggdu2DkcUoR3p3sueyp4WZ7qAYTjvT7sZ9w2KGuHQM3yom
	xx4T1lVQ5pKRFDOJ/9dFX935HWbuZLReddwamTk4o6Tx+YBoF5b80=
MIME-Version: 1.0
Date: Fri, 24 Jul 2020 10:59:25 +0200
From: "Bas Mevissen" <abuse@basmevissen.nl>
To: kar_947@hotmail.fr
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] How to install Compiler g++ in Yocto #yocto #g++ #gcc #compiler #package #library #poky
In-Reply-To: <18743.1595579620504898143@lists.yoctoproject.org>
References: <ed574a8dcce8bd9b74e3a52a82027ad6@basmevissen.nl>
 <18743.1595579620504898143@lists.yoctoproject.org>
User-Agent: Roundcube Webmail/1.4.3
Message-ID: <aea0b4b9d1a4414d89428c3b7d262a94@basmevissen.nl>
X-Sender: abuse@basmevissen.nl
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

On 2020-07-24 10:33, kar_947@hotmail.fr wrote:

> On Fri, Jul 24, 2020 at 10:09 AM, Bas Mevissen wrote:
> 
>> If you search the internet for "Ubuntu on i.MX6", you will find quite 
>> some examples how to accomplish this. As you already have a working 
>> board, you already have everything you need to get Ubuntu running on 
>> your board. Obviously, it still takes some skills to get things 
>> running. As that is off-topic for this list, you might indeed be best 
>> off to find someone to assist you on that task. It is not a big deal 
>> if you are skilled in that area.

> But it has to be compatible with the BSP of the board. That's why it's 
> really hard to install Ubuntu on IMX6 Board.
> Then, the Ubuntu has to be really specific to my BSP IMX6, i can't 
> install any types of Ubuntu.
> 

"The BSP" mainly consists of u-boot, the kernel and the device tree file 
(.dtb file). You have those files in your possession from the Yocto 
image. The only thing needed might be support for graphics that can be 
closed or open source and needs to fit to the graphics environment (X11 
or Wayland) and graphics toolkit (e.g. Qt) you use.

> I prefer to let the vendor installing the Ubuntu in his board, because 
> i cant manage perfectly his BSP. Problem with adaptation ect...

Yes, it gives you the starting point you need.

Regards,

Bas.
