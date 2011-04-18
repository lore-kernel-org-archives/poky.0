Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8E8544C808DE
	for <poky@pokylinux.org>; Mon, 18 Apr 2011 00:44:00 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p3I5i0MQ008575;
	Mon, 18 Apr 2011 06:44:00 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 08264-05; Mon, 18 Apr 2011 06:43:56 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p3I5hq7a008569
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 18 Apr 2011 06:43:53 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: gmane@reliableembeddedsystems.com
In-Reply-To: <io2h0h$drr$1@dough.gmane.org>
References: <io2h0h$drr$1@dough.gmane.org>
Date: Mon, 18 Apr 2011 06:43:44 +0100
Message-ID: <1303105424.5518.40.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@pokylinux.org
Subject: Re: web_svn with yocto 1.0 broken
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
X-List-Received-Date: Mon, 18 Apr 2011 05:44:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-04-13 at 00:42 +0300, Robert Berger wrote:
> Hi,
> 
> With the release tag bernard-5.0 I'm trying to bitbake web and get:
> 
> OE Build Configuration:
> BB_VERSION        = "1.11.0"
> METADATA_BRANCH   = "bernard-5.0_LOCAL"
> METADATA_REVISION = "8b6416db1e04af83ecdf57522240ac859d5d8031"
> TARGET_ARCH       = "i586"
> TARGET_OS         = "linux"
> MACHINE           = "qemux86"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.0"
> TARGET_FPU        = ""
> 
> ...
> 
> | web_gtkhtml2.c:525:3: error: too many arguments to function
> 'css_parser_parse_stylesheet'
> 
> ...
> 
> Is there a fix for this?

I've pushed a fix into the web repository for that problem (r131).

Cheers,

Richard


