Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 199C84C800FB
	for <poky@yoctoproject.org>; Tue,  7 Jun 2011 16:47:39 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p57LlYYj024185;
	Tue, 7 Jun 2011 22:47:34 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 24059-02; Tue,  7 Jun 2011 22:47:30 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p57LlPB7024179
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 7 Jun 2011 22:47:26 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Ke Liping <liping.ke@intel.com>
In-Reply-To: <cover.1307062861.git.liping.ke@intel.com>
References: <cover.1307062861.git.liping.ke@intel.com>
Date: Tue, 07 Jun 2011 22:47:20 +0100
Message-ID: <1307483240.15712.77.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org, bitbake-devel@lists.openembedded.org
Subject: Re: [bitbake-devel] [PATCH 0/4][Image Creator]Add mulitple extra cache fields request support
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
X-List-Received-Date: Tue, 07 Jun 2011 21:47:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-06-03 at 09:06 +0800, Ke Liping wrote:
> From: Liping Ke <liping.ke@intel.com>
> 
> Those patches are for poky tree. Since bitbake code base is syncing,
> I cc those changes to bitbake mail list too. Thanks!
> 
> The series of patch are for mplementing multiple extra cache fields
> request support.If user needs to request extra cache fields besides
> CoreRecipeInfo fields, just add a new XXXRecipeInfo class definition
> as Image Creator UI Hob Does.
> For implementing this new feature, we refactory current cache code,
> remove namedtuple and define corresponding class for dynamical cache
> fields support per different cache usage request.
> 
> 
> The following changes since commit 6b5d323b6c8960a0999dbafa0422fe127fd0fa97:
>   Chris Larson (1):
>         event: don't catch systemexit from handler execution
> 
> are available in the git repository at:
> 
>   git://git.pokylinux.org/poky-contrib lke/cache
>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lke/cache
> 
> Liping Ke (4):
>   Refactory Current Cache implementation
>   Introduce extra cache class for image creator
>   Introduce new param caches_array into Cache impl.
>   Implement multiple extra cache fields request support

Merged to bitbake master, thanks for your work and patience on these
Liping!

Cheers,

Richard


