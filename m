Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id EB5484C8090B
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 08:55:38 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2GDtbUV003044;
	Wed, 16 Mar 2011 13:55:37 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 02594-08-2; Wed, 16 Mar 2011 13:55:29 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2GDtJq8003008
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 16 Mar 2011 13:55:19 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Scott Garman <scott.a.garman@intel.com>
In-Reply-To: <cover.1300230459.git.scott.a.garman@intel.com>
References: <cover.1300230459.git.scott.a.garman@intel.com>
Date: Wed, 16 Mar 2011 13:43:52 +0000
Message-ID: <1300283032.30423.1879.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/7] Set ssh server using IMAGE_FEATURES, v3
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
X-List-Received-Date: Wed, 16 Mar 2011 13:55:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-03-15 at 16:11 -0700, Scott Garman wrote:
> From: Scott Garman <scott.a.garman@intel.com>
> 
> Hi Saul,
> 
> It turns out the approach I was previously using to try to change
> the ssh server using IMAGE_FEATURES had a fundamental flaw. I
> confirmed the problem with Richard, and now take a slightly different
> approach where separate tasks are created to use dropbear vs. openssh
> as an SSH server. This means we can't set the SSH server explicitly
> by overriding a variable in local.conf, but it does improve the
> infrastructure to something more sensible and document-able.
> 
> This pull request will fix [YOCTO #378].
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: sgarman/ssh-switch2
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/ssh-switch2
> 
> Thanks,
>     Scott Garman <scott.a.garman@intel.com>
> ---
> 
> 
> Scott Garman (7):
>   task-base, task-poky-basic, task-poky: Remove hard-coded references
>     to dropbear
>   task-poky-ssh-dropbear: new task recipe for dropbear ssh
>   task-poky-ssh-openssh: new task recipe for openssh ssh
>   poky-image.bbclass: add new IMAGE_FEATURES for ssh servers
>   poky-image.bbclass: add ssh-server-dropbear to SATO_IMAGE_FEATURES
>   poky-image-lsb: add ssh-server-openssh to IMAGE_FEATURES
>   poky-image-basic: add ssh-server-openssh to IMAGE_FEATURES

Merged to master, thanks.

For the inherit task tweak, please submit that as a separate patch.

Cheers,

Richard


