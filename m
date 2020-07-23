Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web11.13107.1595513641274673254
 for <poky@lists.yoctoproject.org>;
 Thu, 23 Jul 2020 07:14:02 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4BCDpb1XGsz5tl9;
	Thu, 23 Jul 2020 16:13:59 +0200 (CEST)
Date: Thu, 23 Jul 2020 16:13:57 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: kar_947@hotmail.fr
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] How to install Compiler g++ in Yocto #yocto #g++ #gcc #compiler #package #library #poky
Message-ID: <20200723141357.ms2q4ckcdzoeujf5@qschulz>
References: <LIob.1595510905679333641.Jg60@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <LIob.1595510905679333641.Jg60@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, Jul 23, 2020 at 06:28:25AM -0700, kar_947@hotmail.fr wrote:
> Hi everyone,
> 
> I am new in the Yocto projet, i used Ubuntu before. I am a little bit lost because i dont understand how Yocto works.
> 
> I actually use a SMARC com board IMX6 with an Yocto system. I want to compile a script in language C++. When i go in the Terminal of the Yocto, i can't use the commande "g++ myscript.cpp -o myscript", because there is no compiler g++ in the yocto.
> I cant install the library g++ with "apt-get install" because it's not an Ubuntu but its an Yocto Linux.
> How can you install the compiler g++ in the Yocto system?
> 

In your Yocto image recipe (so in the build system on your building
machine, **NOT** on the target), add g++ to IMAGE_INSTALL.

But it's probably not what you would want to do. You should probably
create a Yocto recipe for this g++-based SW and compile it with Yocto,
then add this package to your Yocto distribution with IMAGE_INSTALL.

I can recommend spending some time watching the videos here:
https://www.youtube.com/playlist?list=PLD4M5FoHz-TxMfBFrDKfIS_GLY25Qsfyj
that should help you get started.

Quentin
