Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id C865F4C805A8
	for <poky@yoctoproject.org>; Mon, 18 Apr 2011 05:02:47 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p3IA2cGN011114;
	Mon, 18 Apr 2011 11:02:38 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 11036-02; Mon, 18 Apr 2011 11:02:34 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p3IA2Vf9011108
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 18 Apr 2011 11:02:31 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mei Lei <lei.mei@intel.com>
In-Reply-To: <cover.1302856115.git.lei.mei@intel.com>
References: <cover.1302856115.git.lei.mei@intel.com>
Date: Mon, 18 Apr 2011 11:02:23 +0100
Message-ID: <1303120943.5518.92.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/5]libffi,psmisc,e2fsprogs,libidn upgrade
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
X-List-Received-Date: Mon, 18 Apr 2011 10:02:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2011-01-15 at 22:22 +0800, Mei Lei wrote:
> 	This pull request contain 4 recipes upgrade, please help to review it and pull.

> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: lmei3/upgrade-0413
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/upgrade-0413
> 
> Thanks,
>     Mei Lei <lei.mei@intel.com>
> ---
> 
> 
> Mei Lei (5):
>   libidn: upgrade from 1.19 to 1.20
>   e2fsprogs: Upgrade from 1.41.12 to 1.41.14
>   psmisc: Upgrade from 22.2 to 22.13

I merged these thanks.

>   libffi: Upgrade from 3.0.9 to 3.0.10rc0

However this is an upgrade to an rc release. We should wait for the
3.0.10 stable release before we upgrade unless there is a pressing
reason to do otherwise.

>   distro_tracking_fields.inc: update e2fsprogs,libidn,libffi,psmisc
>     information

I didn't take this as I didn't take the libffi update above.

Cheers,

Richard


