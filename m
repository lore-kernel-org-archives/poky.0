Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
 by mx.groups.io with SMTP id smtpd.web11.1865.1595578174030459769
 for <poky@lists.yoctoproject.org>;
 Fri, 24 Jul 2020 01:09:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@basmevissen.nl header.s=default header.b=AdYjy58g;
 spf=pass (domain: basmevissen.nl, ip: 178.18.92.162, mailfrom: abuse@basmevissen.nl)
Received: from hosting.emcodev.net (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 5EDE7212002;
	Fri, 24 Jul 2020 10:09:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=basmevissen.nl;
	s=default; t=1595578166; h=from:from:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/F5sGLoNQ2I9uAQzB/s1DsCC1eHS9CvL8GMO5no4hyw=;
	b=AdYjy58gSitOLOwrlVdiC717lTei0PQZLPsF5/XMOBQ+kW1VU1GDxs86t1LU/z5ECYUgVr
	59aRV+wB4WcKy3JOV/0fpdxmqdYQXQr8ZWDFt8lZu56CHrJPcTgdDBmcJEWrjNBNEqusJ2
	KRgKUtEZUmchtfcZzG6Zs0BvVGZk6bUcbYtBsWl+9MUfwLazsLaif0Fy7j8fHICeySLEzM
	wF7a6wlVnh/Z2ZkwhdrX1K50p8AJEBcuqTtfVSKvEswBvNqnlB0aA3os7Upr/dw2SIHbYB
	9PPpOYmnqD9pbf9HMMcS3lLs/HcgTov9U1OcMdmaEvPKEmfeim/6i0jvvY6iEFx9ABYtg/
	gxeTxdxOpw1HpxsDQp/0U3TxZV7hqVKdU3RDE51Sn79qFYP0KQCFBL1vJBQeuvvWt+2K+U
	gKvZGHJoGLmgpSnpHn3h6Sgv6wOICX/XOdfVNcLpnwYXSeScBr2Cm5v+fXVNuYlkKFeLRu
	3leJa+W3VzI1y+H6NuxE8sAJZTSnfE+g5T+GbYdS/UjKxdgTnplGXxVD2kK5HBnaiua7GQ
	a+fK/MaECbITYnbNz2NKIC5tc6IKDzI8Ymt5PnStEeJTKEkmNV3BVs1pETAw3phM7HlOSP
	WT2x5mOxXkNlmmmPKVdwC4yfFz0rsu5iVSVSV/axh2v/Xn1MwyjQQ=
MIME-Version: 1.0
Date: Fri, 24 Jul 2020 10:09:26 +0200
From: "Bas Mevissen" <abuse@basmevissen.nl>
To: kar_947@hotmail.fr
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] How to install Compiler g++ in Yocto #yocto #g++ #gcc #compiler #package #library #poky
In-Reply-To: <30764.1595574331007863959@lists.yoctoproject.org>
References: <63f5ee002a42a1e9260d95111f093b80@basmevissen.nl>
 <30764.1595574331007863959@lists.yoctoproject.org>
User-Agent: Roundcube Webmail/1.4.3
Message-ID: <ed574a8dcce8bd9b74e3a52a82027ad6@basmevissen.nl>
X-Sender: abuse@basmevissen.nl
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

On 2020-07-24 09:05, kar_947@hotmail.fr wrote:

> Hi Bas
> 
> On Thu, Jul 23, 2020 at 05:53 PM, Bas Mevissen wrote:
> 
>> I ran Ubuntu 18.04 LTS on an I.MX6 based custom board myself for a 
>> project. I only needed a custom u-boot, kernel (for some specific 
>> device drivers) and device tree for the board. The rest was standard 
>> Ubuntu for ARM. I used debootstrap to create the base image and added 
>> the specifics with a script.
> Thank for your answer.
> What king of IMX6 board do you use? Is it a SMARC Board?
> 

No, it was a custom base board with an i.MX6 computing module from Karo 
mounted on it.

> Like i said before, i dont have the choice. The vendor just has Yocto 
> in his IMX6 board.
> First of all, I dont know how to install Ubuntu on Yocto.
> Then, i am totally agree with you, i need more time to learn yocto. I 
> really prefer to use Ubuntu.
> 
> I will migrate to Yocto when i will be more confortable with the 
> distribution.
> All IMX board or Smarc board are sold with a Yocto distribution.
> 
> I can ask to the engineer, to install Ubuntu on the board. I think it's 
> the better solution for me.
> 

If you search the internet for "Ubuntu on i.MX6", you will find quite 
some examples how to accomplish this. As you already have a working 
board, you already have everything you need to get Ubuntu running on 
your board. Obviously, it still takes some skills to get things running. 
As that is off-topic for this list, you might indeed be best off to find 
someone to assist you on that task. It is not a big deal if you are 
skilled in that area.

Best regards,

Bas.
