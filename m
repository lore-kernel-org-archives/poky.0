Received: from bsmtp3.bon.at (bsmtp3.bon.at [213.33.87.17])
 by mx.groups.io with SMTP id smtpd.web12.26497.1611141038755713836
 for <poky@lists.yoctoproject.org>;
 Wed, 20 Jan 2021 03:10:39 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.17, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp3.bon.at (Postfix) with ESMTPSA id 4DLN9R410Cz5tlF;
	Wed, 20 Jan 2021 12:10:35 +0100 (CET)
Date: Wed, 20 Jan 2021 12:10:34 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Kevin Kettinger <kkettinger@gmail.com>
Cc: poky@lists.yoctoproject.org
Subject: Re: [poky] apt-package.inc commented out section still evaluated
Message-ID: <20210120111034.3xqlxhdeeoqtaanc@qschulz>
References: <da3e458e-e0c5-9fe6-16fe-e329083d386a@gmail.com>
MIME-Version: 1.0
In-Reply-To: <da3e458e-e0c5-9fe6-16fe-e329083d386a@gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Kevin,

On Wed, Jan 20, 2021 at 12:05:35PM +0100, Kevin Kettinger wrote:
> Hello,
> 
> when looking into poky/meta/recipes-devtools/apt/apt-package.inc (dunfell),
> i see some section commented out (/*) in do_install():

That do_install task is a shell task, so /* is just a way to say "all
files from this directory", it is not a comment.

The only other supported kind of task is python task and the python
comments are usually # or """ (triple double quote surrounding some
text).

So no surprise here, it works as intended :)

It obviously does not mean that the installation of the cronjob file
when the systemd unit is disabled is correct, but it's a different
topic there and I cannot help with this one.

Cheers,
Quentin
