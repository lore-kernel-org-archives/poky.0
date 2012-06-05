Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89D78E0142F
	for <poky@yoctoproject.org>; Tue,  5 Jun 2012 15:11:02 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q55MAwug002940;
	Tue, 5 Jun 2012 23:10:58 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 02845-02; Tue,  5 Jun 2012 23:10:52 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q55MAof3002934
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 5 Jun 2012 23:10:51 +0100
Message-ID: <1338934250.20169.281.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Scott Garman <scott.a.garman@intel.com>
Date: Tue, 05 Jun 2012 23:10:50 +0100
In-Reply-To: <cover.1338843506.git.scott.a.garman@intel.com>
References: <cover.1338843506.git.scott.a.garman@intel.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/7] denzil pull request
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
X-List-Received-Date: Tue, 05 Jun 2012 22:11:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-06-04 at 14:00 -0700, Scott Garman wrote:
> This is a pull request for the poky denzil branch, based on a set of
> commits I've been testing from my sgarman/denzil-next branch.
> 
> These commits have passed an array of build and runtime tests,
> including the following nightly build:
> 
> http://autobuilder.yoctoproject.org:8010/builders/nightly/builds/492
> 
> a non-gplv3 build:
> 
> http://autobuilder.yoctoproject.org:8010/builders/nightly-non-gpl3/builds/87
> 
> and a tiny build:
> 
> http://autobuilder.yoctoproject.org:8010/builders/nightly-tiny/builds/69

I've merged these into poky's denzil branch, thanks.

Richard


