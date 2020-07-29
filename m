Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web10.3329.1596018941223074519
 for <poky@lists.yoctoproject.org>;
 Wed, 29 Jul 2020 03:35:41 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4BGqgs50RXz5tlG;
	Wed, 29 Jul 2020 12:35:37 +0200 (CEST)
Date: Wed, 29 Jul 2020 12:35:36 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: kar_947@hotmail.fr
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] How to install Compiler g++ in Yocto #yocto #g++ #gcc #compiler #package #library #poky
Message-ID: <20200729103536.tsuzmzmav2saqdbt@qschulz>
References: <20200729080752.qwt2izc4c7giis7e@qschulz>
 <7345.1596018376451690700@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <7345.1596018376451690700@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Wed, Jul 29, 2020 at 03:26:16AM -0700, kar_947@hotmail.fr wrote:
> Hi Quentin,
> 
> Thank you very much for your answer and all your help.
> I will remove temporary files by editing the local.conf
> 
> I am sorry for sending a new question which does not match with my topic.
> 

It's fine no worries :)

> Can i keep contact with you because you are really nice and you always answer to my beginners questions. I understand better and better the Yocto project.
> 

Thank you for the kind words.

However, I'll not answer questions that aren't sent on the mailing list.

There are a few reasons to that:

 - you might not be the only asking yourself those questions and
 everyone would benefit from knowing the actual answer to those
 questions, this has nothing to do with Yocto but is applicable to most
 if not all open-source projects :)

 - I might not have the answer for it, might answer wrongly or might not
 have time to answer at all. By asking on the mailing list (or IRC)
 you'll maximize your chances of having an answer (and probably the
 correct one),

Have fun with Yocto! Don't forget to watch a few of Jozef's tutorial on
Yocto's official Youtube account (or follow on Twitch directly) and take
some time to read manuals :)

Cheers,
Quentin
