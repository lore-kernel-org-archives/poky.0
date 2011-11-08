Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCD87E01384
	for <poky@yoctoproject.org>; Tue,  8 Nov 2011 09:53:53 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pA8Hrmm4003281;
	Tue, 8 Nov 2011 17:53:48 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 02982-06; Tue,  8 Nov 2011 17:53:40 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pA8HrZ2w003251
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 8 Nov 2011 17:53:36 GMT
Message-ID: <1320774817.10843.97.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Joshua Lock <josh@linux.intel.com>
Date: Tue, 08 Nov 2011 17:53:37 +0000
In-Reply-To: <e38ded40c965fbf1f3b6242786dfe191322f276b.1320768816.git.josh@linux.intel.com>
References: <cover.1320768816.git.josh@linux.intel.com>
	<e38ded40c965fbf1f3b6242786dfe191322f276b.1320768816.git.josh@linux.intel.com>
X-Mailer: Evolution 3.2.1- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] clutter-1.8: add bbappend for new clutter-1.8 recipe
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
X-List-Received-Date: Tue, 08 Nov 2011 17:53:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-11-08 at 08:14 -0800, Joshua Lock wrote:
> We've a new Clutter version in meta so need to add our
> atom-pc bbappend modifications.
> 
> Signed-off-by: Joshua Lock <josh@linux.intel.com>
> ---
>  .../recipes-graphics/clutter/clutter-1.8_1.8.0.bb  |    4 ++++
>  1 files changed, 4 insertions(+), 0 deletions(-)
>  create mode 100644 meta-yocto/recipes-graphics/clutter/clutter-1.8_1.8.0.bb

Merged to master, thanks.

Richard


