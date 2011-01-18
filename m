Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id E07CA4C81065
	for <poky@yoctoproject.org>; Tue, 18 Jan 2011 11:58:46 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0II0V0e018378; Tue, 18 Jan 2011 18:00:32 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id pYxIXkNuvRAX; Tue, 18 Jan 2011 18:00:31 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0II0IlE018372
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 18 Jan 2011 18:00:24 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Saul Wold <sgw@linux.intel.com>
In-Reply-To: <4D35592C.5080609@linux.intel.com>
References: <4D35592C.5080609@linux.intel.com>
Date: Tue, 18 Jan 2011 17:58:20 +0000
Message-ID: <1295373500.14388.18174.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PULL] Consolidated Pull Request 1/17
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
X-List-Received-Date: Tue, 18 Jan 2011 17:58:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-01-18 at 01:11 -0800, Saul Wold wrote:
> This has been built and test with ARM (found past failure and works 
> now), bit change set is the Xserver update and changing the logo for 
> psplash.
> 
> There is also an update to pseudo, so if we see any permission issue, 
> please let me know soonest.
> 
> Thanks
> 	Sau!
> 
> 
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: distro/master
>    Browse: 
> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/master

Merged into master apart from Jessica's toolchain rename which needs a
little more coordination with the autobuilder. I think there are a few
more renames pending so we'll batch them.

Cheers,

Richard



