Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE58FE00307
	for <poky@yoctoproject.org>; Fri,  3 Feb 2012 02:11:54 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q13A80dK019655;
	Fri, 3 Feb 2012 10:08:00 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 18831-04; Fri,  3 Feb 2012 10:07:56 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q13A7oBJ019647
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 3 Feb 2012 10:07:52 GMT
Message-ID: <1328263676.3895.86.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
Date: Fri, 03 Feb 2012 10:07:56 +0000
In-Reply-To: <4F2B1AC9.9000904@mlbassoc.com>
References: <4F2B1AC9.9000904@mlbassoc.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: require statement does not honor .bbappend
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
X-List-Received-Date: Fri, 03 Feb 2012 10:11:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-02-02 at 16:22 -0700, Gary Thomas wrote:
> This is really a bitbake problem, but I'll bring it up here.
> 
> I have a statement like this in one of my recipes:
>     require xyz.bb
> 
> If I also have within my layers a xyz.bbappend file, it gets
> processed when I build xyz, e.g.
>    % bitbake xyz
> but is ignored when I only 'require' that recipe.
> 
> Should it not be always processed?

No, as designed and implemented you can't bbappend to anything being
used as an include (or require), only the final .bb file.

Cheers,

Richard





