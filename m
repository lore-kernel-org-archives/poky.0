Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 50E374C80050
	for <poky@yoctoproject.org>; Wed, 12 Jan 2011 05:44:51 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0CBkWar026407; Wed, 12 Jan 2011 11:46:32 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id oVnluZyU9uVy; Wed, 12 Jan 2011 11:46:32 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0CBkSXM026403
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 12 Jan 2011 11:46:29 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Joshua Lock <josh@linux.intel.com>
In-Reply-To: <cover.1294756107.git.josh@linux.intel.com>
References: <cover.1294756107.git.josh@linux.intel.com>
Date: Wed, 12 Jan 2011 11:44:32 +0000
Message-ID: <1294832672.15313.2031.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/4] Fix XML-RPC server and Goggle UI
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
X-List-Received-Date: Wed, 12 Jan 2011 11:44:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-01-11 at 14:33 +0000, Joshua Lock wrote:
> This series contains two important fixes and two trivial UI enhancements.
> 
> With this series the XML-RPC server now works correctly and the goggle UI has a
> subtle, long-standing, bug fixed.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: josh/umm
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/umm
> 
> Thanks,
>     Joshua Lock <josh@linux.intel.com>

Merged into master, thanks!

Richard


