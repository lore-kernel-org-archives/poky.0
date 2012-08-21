Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DB15E0044A
	for <poky@yoctoproject.org>; Tue, 21 Aug 2012 03:38:19 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q7LAcFLE012340;
	Tue, 21 Aug 2012 11:38:15 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 27999-07; Tue, 21 Aug 2012 11:38:12 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q7LAc7c6012333
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Tue, 21 Aug 2012 11:38:08 +0100
Message-ID: <1345545488.3907.59.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Scott Garman <scott.a.garman@intel.com>
Date: Tue, 21 Aug 2012 11:38:08 +0100
In-Reply-To: <cover.1344892714.git.scott.a.garman@intel.com>
References: <cover.1344892714.git.scott.a.garman@intel.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 00/57] denzil pull request1
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 21 Aug 2012 10:38:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-08-13 at 14:19 -0700, Scott Garman wrote:
> Hello,
> 
> This is my first pull request for denzil since the 1.2.1 release was made.
> 
> It has been run through the autobuilder, which is having some issues with
> running sanity tests and buildhistory, so if the build succeeded for
> everything except for those steps, I note it as "Green with known AB
> issues" below.

>   git://git.yoctoproject.org/poky-contrib sgarman/denzil-next-pull1
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgarman/denzil-next-pull1

Merged to denzil although the valgrind commit slipped out of the OE-Core
pull request. I dealt with that :). Thanks for putting this together.

Cheers,

Richard


