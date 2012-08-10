Return-Path: <laguest@archeia.com>
Received: from beast.archeia.com (beast.archeia.com [74.207.226.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A554E0034A
	for <poky@yoctoproject.org>; Fri, 10 Aug 2012 07:53:22 -0700 (PDT)
Received: from [192.168.0.2] (5ac4d3d6.bb.sky.com [90.196.211.214])
	(Authenticated sender: laguest)
	by beast.archeia.com (Postfix) with ESMTPSA id 1ECB38045;
	Fri, 10 Aug 2012 14:53:20 +0000 (UTC)
Message-ID: <1344610399.4828.31.camel@rogue>
From: "Luke A. Guest" <laguest@archeia.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Fri, 10 Aug 2012 15:53:19 +0100
In-Reply-To: <5023F425.1090801@mlbassoc.com>
References: <1344533174.4828.29.camel@rogue> <5023F425.1090801@mlbassoc.com>
X-Mailer: Evolution 3.4.3-1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [denzil][meta-ti] Problems building compiler for Pandaboard
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
X-List-Received-Date: Fri, 10 Aug 2012 14:53:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-08-09 at 11:32 -0600, Gary Thomas wrote:

> Try cleaning out your build tree (remove sstate-cache/ and tmp/) and run
> it again.  The error you are seeing is related to reusing the same tree
> with [somewhat] different target machines.

I did this and did it get further, failed somewhere else though.

Luke.



