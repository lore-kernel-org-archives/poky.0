Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 270E4E013FE
	for <poky@yoctoproject.org>; Mon, 10 Sep 2012 05:06:54 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q8AC6mE0030460;
	Mon, 10 Sep 2012 13:06:48 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 04267-06; Mon, 10 Sep 2012 13:06:44 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q8AC6dhM030434
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Mon, 10 Sep 2012 13:06:40 +0100
Message-ID: <1347278801.10278.16.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Saul Wold <sgw@linux.intel.com>
Date: Mon, 10 Sep 2012 13:06:41 +0100
In-Reply-To: <cover.1347063149.git.sgw@linux.intel.com>
References: <cover.1347063149.git.sgw@linux.intel.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [CONSOLIDATED REQUEST 0/4] meta-yocto updates
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
X-List-Received-Date: Mon, 10 Sep 2012 12:06:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2012-09-08 at 10:02 -0700, Saul Wold wrote:
> The following changes since commit 5343cdb20ee56a8b507733c637dcc2466ae13288:
> 
>   bitbake: fetch2: replace double slashes in paths in encodeurl() (2012-09-07 14:50:04 +0100)
> 
> are available in the git repository at:
>   git://git.yoctoproject.org/poky-contrib sgw/stage
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgw/stage
> 
> Andrei Dinu (1):
>   Manual updates to upstream_tracking.inc up to 04 Sep 2012
> 
> Kang Kai (1):
>   upstream_tracking: update lsb and ltp

I took the two below but didn't take the above since I couldn't get a
sensible combination of patches to apply after your comment about Andrei
needing to resend. Please get a set you're happy with and send a pull
request.

Cheers,

Richard

> Saul Wold (1):
>   poky-tiny: Enable x86-64 to build eglibc correctly
> 
> Tom Zanussi (1):
>   yocto-bsp: remove packagegroup-core-tools-profile.bbappend



