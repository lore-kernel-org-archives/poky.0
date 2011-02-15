Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id EB1DB4C808F9
	for <poky@yoctoproject.org>; Tue, 15 Feb 2011 04:03:08 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1FA36ZR023712;
	Tue, 15 Feb 2011 10:03:06 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 23696-01; Tue, 15 Feb 2011 10:03:02 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1FA30en023706
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 15 Feb 2011 10:03:00 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: scott.m.rifenbark@intel.com
In-Reply-To: <cover.1297724957.git.scott.m.rifenbark@intel.com>
References: <cover.1297724957.git.scott.m.rifenbark@intel.com>
Date: Tue, 15 Feb 2011 10:02:59 +0000
Message-ID: <1297764179.4945.169.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/6] [Docs] - Fix to Yocto Project QS [BUGID# 631] and the kernel manual
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
X-List-Received-Date: Tue, 15 Feb 2011 10:03:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-02-14 at 17:16 -0600, scott.m.rifenbark@intel.com wrote:
> From: Scott Rifenbark <scott.m.rifenbark@intel.com>
> 
> [BUGID# 631] - I added a tip in the section where we show a sample build.
> The tip says that you can add 'INHERIT += "rm_work"' to the local.conf file
> to help conserve disk space during a build.
> 
> Typo fixed in kernel manual.  Also, the example used to show how to condense 
> and merge two BSPs into a second
> SCM used a non-existant machine (cav_ebt5800-standard).  I replaced this
> machine with 'common_pc_64-standard, which is a real machine. 
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: srifenbark/docs
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/docs
> 
> Thanks,
>      <scott.m.rifenbark@intel.com>

Merged to master, thanks.

Richard


