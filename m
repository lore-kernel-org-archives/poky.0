Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web11.1641.1596010077492301092
 for <poky@lists.yoctoproject.org>;
 Wed, 29 Jul 2020 01:07:58 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4BGmPQ5437z5tlL;
	Wed, 29 Jul 2020 10:07:54 +0200 (CEST)
Date: Wed, 29 Jul 2020 10:07:52 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: kar_947@hotmail.fr
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] How to install Compiler g++ in Yocto #yocto #g++ #gcc #compiler #package #library #poky
Message-ID: <20200729080752.qwt2izc4c7giis7e@qschulz>
References: <19786.1595939092994332714@lists.yoctoproject.org>
 <7345.1596005256557404379@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <7345.1596005256557404379@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Tue, Jul 28, 2020 at 11:47:36PM -0700, kar_947@hotmail.fr wrote:
> Hi everyone, i have an other question.
> 

Please send new mails if you have questions which aren't on the same
topic as the original mail. The issue in not doing that is that your
mail subject is not matching the actual question being debugged => less
people to look at, less easy to find your question in the archives.

> Is it normal that during the compilation of the Yocto (bitbake), i need more than 100GO storage space in my hard disk ?
> Is it too much?
> 

If a big image, not surprising to me. The sources are downloaded and kept,
Yocto creates a sstate-cache ("history" of what happened, which and how things
were compiled, to speed up later builds).

The thing you could spare storage on is to remove temporary unpacking,
building and packaging directories, which is done by INHERIT +=
"rm_work" in your local.conf if need be. This should save a
non-negligible amount of storage on your HDD.

Quentin
