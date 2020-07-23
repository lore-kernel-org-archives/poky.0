Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
 by mx.groups.io with SMTP id smtpd.web11.1038.1595519620839297458
 for <poky@lists.yoctoproject.org>;
 Thu, 23 Jul 2020 08:53:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@basmevissen.nl header.s=default header.b=SppSFoAB;
 spf=pass (domain: basmevissen.nl, ip: 178.18.92.162, mailfrom: abuse@basmevissen.nl)
Received: from hosting.emcodev.net (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id C1C70212002;
	Thu, 23 Jul 2020 17:53:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=basmevissen.nl;
	s=default; t=1595519611; h=from:from:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hVokiOpFO+RiKdRx04nuR5b2jGQy5Hslb40H1qHQPIc=;
	b=SppSFoAByvMlZGb+UAA/XKwv6sr1tzoraGlVoYePMTSjTmFUnvXo9TzCQloYZNN48QXSjZ
	S1pBJng64EQ74qhGIsQ5E+954DthxAad5XpMbJ4p6QYZ6+96lWvEQGSw/paYwbylZlvUKb
	M6nLkYJC6MC2Sc0J484OfewbCGzrkx2bHMOVsKyWZZFlhSP49wnJ1xoI3RKIUCthPgQBe1
	F00uSoyJ2zq9XQwVUghS9tK6uUAYyyap6TV3R4o5f1oIVUQsmXd1kfLZGzV8mzMfqcpgwH
	0Id0N61g4O1jmHlNTsrBUnTKXj6twMoA+LKr07GCGNDp6TGH9E7UUnOijDZ7PE6Ibk/PuM
	IdayQfZxBOc8/+/MRcG01m8CVPwRJhG0BV6fOiVdohrkPc41+XRYWy0YV9YRpr7yfcSm9i
	WXstVUMYXV5eK/lXbAwr4VYYU5lr9eJrHJqmp4t9KzUjecCTrIThLeyuqWPe/eKTsONNRO
	Bhf4M/aLcGeMblb3RvsukqL2Lz5AqHiU+hX6JN1WF5hkk+wIE+cYhzEogXo62/IUnEJ6gh
	I6xnAg5OdliDifewj5wWZ8ovcTjsmTEhUG76y20X53E3wV+crl7XQwhBuLooRwktdi1pNm
	++pEbDoIu0QCkJ7s0ZDZibPf+gGpc+LyqjcZg+pbnDRZOZyvIGnkE=
MIME-Version: 1.0
Date: Thu, 23 Jul 2020 17:53:29 +0200
From: "Bas Mevissen" <abuse@basmevissen.nl>
To: kar_947@hotmail.fr
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] How to install Compiler g++ in Yocto #yocto #g++ #gcc #compiler #package #library #poky
In-Reply-To: <10615.1595517378175516979@lists.yoctoproject.org>
References: <20200723150108.th2jqqu3injaegzq@qschulz>
 <10615.1595517378175516979@lists.yoctoproject.org>
User-Agent: Roundcube Webmail/1.4.3
Message-ID: <63f5ee002a42a1e9260d95111f093b80@basmevissen.nl>
X-Sender: abuse@basmevissen.nl
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

On 2020-07-23 17:16, kar_947@hotmail.fr wrote:

> Then, you told me that it's better for me to use a "normal" 
> distribution but i dont have the choice. I actually use an IMX6 SMARC 
> com board and the distribution is a Yocto.
> So i can't use an other distribution.
> 

I ran Ubuntu 18.04 LTS on an I.MX6 based custom board myself for a 
project. I only needed a custom u-boot, kernel (for some specific device 
drivers) and device tree for the board. The rest was standard Ubuntu for 
ARM. I used debootstrap to create the base image and added the specifics 
with a script.

> 
> Moreover, why the yocto Project is not like Ubuntu? I mean, it"s REALLY 
> easier to install package with a command like "apt-get install 
> mypackage". Why Yocto complicates the thing?
> In yocto project, i need to modify some files and recompile all the BSP 
> and Kernel Yocto, just for adding a package like "g++"?
> 

There are many good reasons why Yocto is designed the way it is and 
there are many reasons why to use Yocto. But depending on the use case, 
a standard distro (for the right processor architecture) might be a 
better fit. Especially to get started without a steep learning curve.

So you might simply start with running Ubuntu on your board, do your 
code development and migrate to Yocto at a later stage.

Regards,

Bas.
