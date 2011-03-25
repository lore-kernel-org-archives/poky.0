Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 282184C800B7
	for <poky@yoctoproject.org>; Fri, 25 Mar 2011 11:50:14 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2PGo6WU028131;
	Fri, 25 Mar 2011 16:50:06 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 27336-09; Fri, 25 Mar 2011 16:50:02 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2PGnvI6028111
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 25 Mar 2011 16:49:57 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: scott.m.rifenbark@intel.com
In-Reply-To: <cover.1301070812.git.scott.m.rifenbark@intel.com>
References: <cover.1301070812.git.scott.m.rifenbark@intel.com>
Date: Fri, 25 Mar 2011 16:49:49 +0000
Message-ID: <1301071789.3018.148.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] [BUGID# 931] - [DOCS] Removed Fedora 14 bitbake native note
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
X-List-Received-Date: Fri, 25 Mar 2011 16:50:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-03-25 at 10:40 -0600, scott.m.rifenbark@intel.com wrote:
> From: Scott Rifenbark <scott.m.rifenbark@intel.com>
> 
> [BUGID# 931] - I have removed the Note indicating that the user must run
> 'bitbake make-native' if running Fedora 14.
> This is no longer a requirement for YP Release 1.0
> 
> The Colin Walters patch can be ignored.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: srifenbark/qs-work
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/qs-work
> 
> Thanks,
>      <scott.m.rifenbark@intel.com>
> ---
> 
> 
> Scott Rifenbark (2):
>   documentation/yocto-project-qs/yocto-project-qs.xml: Bug reference
>     added courtesy Colin Walters
>   documentation/yocto-project-qs/yocto-project-qs.xml:  [BUGID# 931] -
>     Removed Fedora 14 bitbake native note

Merged to master, thanks.

Richard


