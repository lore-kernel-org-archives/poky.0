Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id E10E54C810E8;
	Mon, 17 Jan 2011 15:56:21 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0HLw3nH009186; Mon, 17 Jan 2011 21:58:03 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id RoQ3u+gfrz7I; Mon, 17 Jan 2011 21:58:03 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0HLvwSY009176
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 17 Jan 2011 21:58:00 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <cover.1295300463.git.bruce.ashfield@windriver.com>
References: <cover.1295300463.git.bruce.ashfield@windriver.com>
Date: Mon, 17 Jan 2011 21:56:01 +0000
Message-ID: <1295301361.14388.15740.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH 0/1] linux-yocto: fix qemuarm boot issues
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
X-List-Received-Date: Mon, 17 Jan 2011 21:56:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-01-17 at 16:43 -0500, Bruce Ashfield wrote:
> Saul/Richard,
> 
> Here's the fix for the recent qemuarm boot failures.
>     
> The switch to KARCH meant that the arch arm settings were not
> being applied to all boards. This commit adds the new option
> along with the existing one to cover all boards.
> 
> Build and boot tested on qemuarm, no issues here!
> 
> I'm sending this in isolation for cherry picking, but it will
> also be part of a consoldated pull request for a series of 
> kernel changes that will follow this shortly.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: zedd/arm-boot
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/arm-boot
> 
> Thanks,
>     Bruce Ashfield <bruce.ashfield@windriver.com>

Merged into master, thanks.

Richard


