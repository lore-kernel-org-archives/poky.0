Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 646774C80049
	for <poky@yoctoproject.org>; Wed, 23 Feb 2011 10:21:41 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1NGLbud016419;
	Wed, 23 Feb 2011 16:21:37 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 16323-02; Wed, 23 Feb 2011 16:21:33 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1NGLW08016413
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 23 Feb 2011 16:21:32 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Scott Garman <scott.a.garman@intel.com>
In-Reply-To: <29c3fbf7f8d149654a5c92562b7485dcf4f45333.1298441824.git.scott.a.garman@intel.com>
References: <cover.1298441824.git.scott.a.garman@intel.com>
	<29c3fbf7f8d149654a5c92562b7485dcf4f45333.1298441824.git.scott.a.garman@intel.com>
Date: Wed, 23 Feb 2011 16:21:27 +0000
Message-ID: <1298478087.26736.36.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/4] sstate.bbclass: add SSTATEPOSTINSTFUNCS
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
X-List-Received-Date: Wed, 23 Feb 2011 16:21:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-02-22 at 22:22 -0800, Scott Garman wrote:
> From: Scott Garman <scott.a.garman@intel.com>
> 
> When doing builds using sstate cache, there was no way to run
> the equivalent of a pkg_postinst function. This is needed by
> the SGML-related documentation recipes to properly update the
> catalog files when new DTDs and stylesheets are installed.
> 
> SSTATEPOSTINSTFUNCS is a new variable you can set to function(s)
> in your recipe to run after install is completed from sstate.
> 
> Thanks to Richard Purdie for suggesting this solution.

I merged this but I did drop your comments from the class. In the
general class code, comments about specific use cases become inaccurate
quickly and you'd usually just use grep to determine a variable's users.

Cheers,

Richard


