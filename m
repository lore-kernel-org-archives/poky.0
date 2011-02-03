Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2CD2B4C8007E
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 04:05:29 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p13A7VlT017228; Thu, 3 Feb 2011 10:07:32 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 2Y8yTgtwbtI1; Thu,  3 Feb 2011 10:07:31 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p13A7Rpr017213
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 3 Feb 2011 10:07:28 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Scott Garman <scott.a.garman@intel.com>
In-Reply-To: <cover.1296704077.git.scott.a.garman@intel.com>
References: <cover.1296704077.git.scott.a.garman@intel.com>
Date: Thu, 03 Feb 2011 10:05:11 +0000
Message-ID: <1296727511.1544.8115.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] docbook-utils-native fix
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
X-List-Received-Date: Thu, 03 Feb 2011 10:05:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-02-02 at 19:59 -0800, Scott Garman wrote:
> From: Scott Garman <scott.a.garman@intel.com>
> 
> This patch fixes the issues building docbook-utils-native. I'm still
> working on fixes for docbook-utils and openjade for target installs,
> but wanted to get you this fix ASAP to resolve the failure on the
> autobuilder.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: sgarman/docbook-utils-fix
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/docbook-utils-fix
> 
> Thanks,
>     Scott Garman <scott.a.garman@intel.com>

Merged into master, thanks Scott.

Cheers,

Richard


