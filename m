Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F730E0075D
	for <poky@yoctoproject.org>; Mon,  5 Sep 2011 12:26:26 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p85JQKUU000994;
	Mon, 5 Sep 2011 20:26:20 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 00906-03; Mon,  5 Sep 2011 20:26:16 +0100 (BST)
Received: from [192.168.1.40] (dynamic10.rpnet.com [192.168.1.40])
	(authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p85JQDnK000988
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 5 Sep 2011 20:26:14 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <cover.1315019063.git.bruce.ashfield@windriver.com>
References: <cover.1315019063.git.bruce.ashfield@windriver.com>
Date: Mon, 05 Sep 2011 20:26:13 +0100
Message-ID: <1315250773.1243.10.camel@ted>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH 0/1] linux-yocto/meta-yocto: update to v3.0.4
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
X-List-Received-Date: Mon, 05 Sep 2011 19:26:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-09-02 at 23:06 -0400, Bruce Ashfield wrote:
> Richard/Saul,
> 
> This is the meta-yocto update that goes along with the oe-core bump
> to v3.0.4. The same testing applies here as well, and this change is
> stacked directly on top of that series.
> 
> The following changes since commit e77a7093c5abf6d1ca6c3032aa22c724f789a02e:
> 
>   linux-yocto: clean configuration for v3.0.4 (2011-09-02 16:51:22 -0400)
> 
> are available in the git repository at:
>   git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto
> 
> Bruce Ashfield (1):
>   linux-yocto/meta-yocto: update SRCREV for v3.0.4

Merged to master, thanks.

Richard


