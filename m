Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7296B4C800A3
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 10:34:21 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p3FFYEg0012130;
	Fri, 15 Apr 2011 16:34:14 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 11998-02; Fri, 15 Apr 2011 16:34:10 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p3FFY9Jo012124
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 15 Apr 2011 16:34:09 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Matt Madison <madison@cisco.com>
In-Reply-To: <C9CCCAA3.415A9%madison@cisco.com>
References: <C9CCCAA3.415A9%madison@cisco.com>
Date: Fri, 15 Apr 2011 16:34:07 +0100
Message-ID: <1302881647.5518.26.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky Mailer <poky@yoctoproject.org>
Subject: Re: Distro policy ?
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
X-List-Received-Date: Fri, 15 Apr 2011 15:34:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-04-14 at 16:00 -0700, Matt Madison wrote:
> How about when it's the other way round -- you need to modify just the .inc
> for your layer, and not the recipes that require/include them?  Should all
> recipes in the core be changed to use the path name syntax to enable that?

Yes, I think this sounds like its causing a few people problems and we
should be using that syntax by default.

Cheers,

Richard



