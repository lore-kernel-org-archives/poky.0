Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id E09A44C8026D
	for <poky@yoctoproject.org>; Mon,  4 Apr 2011 11:26:30 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p34GQRCU018130;
	Mon, 4 Apr 2011 17:26:27 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 17596-10; Mon,  4 Apr 2011 17:26:23 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p34GQLso018124
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 4 Apr 2011 17:26:21 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mei Lei <lei.mei@intel.com>
In-Reply-To: <cover.1301909087.git.lei.mei@intel.com>
References: <cover.1301909087.git.lei.mei@intel.com>
Date: Mon, 04 Apr 2011 17:26:18 +0100
Message-ID: <1301934378.24596.400.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1]qemuppc:Add libqtopengl4 support for ppc
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
X-List-Received-Date: Mon, 04 Apr 2011 16:26:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-01-04 at 22:28 +0800, Mei Lei wrote:
> From: Mei Lei <lei.mei@intel.com>
> 
> Modify some configs for ppc to enable the libqtopengl4 support.
> This fixes BUG 848
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: lmei3/task-poky-lsb
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/task-poky-lsb
> 
> Thanks,
>     Mei Lei <lei.mei@intel.com>
> ---
> 
> 
> Mei Lei (1):
>   qemuppc: add libqtopengl4 for ppc

Merged to master, thanks.

Richard


