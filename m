Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4F3CC4C80188
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 18:26:38 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2INQXHC014633;
	Fri, 18 Mar 2011 23:26:33 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 14040-10; Fri, 18 Mar 2011 23:26:26 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2INQMZ9014619
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 18 Mar 2011 23:26:22 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <cover.1300473493.git.mark.hatle@windriver.com>
References: <cover.1300473493.git.mark.hatle@windriver.com>
Date: Fri, 18 Mar 2011 23:26:05 +0000
Message-ID: <1300490765.30423.2213.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Fix a program with ".." in a DB patch's path.
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
X-List-Received-Date: Fri, 18 Mar 2011 23:26:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-03-18 at 13:39 -0500, Mark Hatle wrote:
> Fix a problem with ".." in a DB patch's path.
> 
> Likely this is not the final technically correct fix.. but we need it ASAP to avoid
> build problems on Fedora 14.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: mhatle/bernard/fixes
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/bernard/fixes
> 
> Thanks,
>     Mark Hatle <mark.hatle@windriver.com>
> ---
> 
> 
> Mark Hatle (1):
>   db: Fix path of arm-thumb patch

Merged to master, thanks.

Richard


