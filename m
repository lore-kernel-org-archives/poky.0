Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59706E01353
	for <poky@yoctoproject.org>; Tue,  7 Feb 2012 16:51:55 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q180pnbS013004;
	Wed, 8 Feb 2012 00:51:49 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 02436-10; Wed,  8 Feb 2012 00:51:44 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q180pTgW012998
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 8 Feb 2012 00:51:35 GMT
Message-ID: <1328662295.29471.0.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Saul Wold <sgw@linux.intel.com>
Date: Wed, 08 Feb 2012 00:51:35 +0000
In-Reply-To: <cover.1328654906.git.sgw@linux.intel.com>
References: <cover.1328654906.git.sgw@linux.intel.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] Changes to match up with oe-core
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
X-List-Received-Date: Wed, 08 Feb 2012 00:51:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-02-07 at 14:50 -0800, Saul Wold wrote:
> Changes to match oe-core task-core-tools and update the
> MIRRORS to use the correct URL.
> 
> Sau!
> 
> The following changes since commit cb89d43473a91ff4cb2447d642fcd9308d7366e3:
> 
>   libzypp: add missing runtime dependences on gzip and gnupg (2012-02-03 17:23:34 +0000)
> 
> are available in the git repository at:
>   git://git.yoctoproject.org/poky-contrib sgw/fix
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgw/fix
> 
> Saul Wold (2):
>   task-core-tools-profile: change to match oe-core
>   poky.conf: Fix the MIRROR URI

Merged to master, thanks.

Richard


