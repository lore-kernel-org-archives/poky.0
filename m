Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 393E64C80A6F
	for <poky@yoctoproject.org>; Mon,  7 Feb 2011 15:54:28 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p17LsS3g023811
	for <poky@yoctoproject.org>; Mon, 7 Feb 2011 21:54:28 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP id 22279-05 for <poky@yoctoproject.org>;
	Mon,  7 Feb 2011 21:54:24 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p17LsJmS023805
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <poky@yoctoproject.org>; Mon, 7 Feb 2011 21:54:19 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky <poky@yoctoproject.org>
In-Reply-To: <cover.1297110786.git.tom.zanussi@intel.com>
References: <cover.1297110786.git.tom.zanussi@intel.com>
Date: Mon, 07 Feb 2011 21:54:15 +0000
Message-ID: <1297115655.1350.19609.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Subject: Re: [PATCH 0/1] Fix for endless 'waiting for removable media' problem
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
X-List-Received-Date: Mon, 07 Feb 2011 21:54:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-02-07 at 14:37 -0600, poky-bounces@yoctoproject.org wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> This patch should fix the endless 'waiting for removable media' error
> that sometimes happens when trying to boot off 'live images'.
> 
> For some reason, we started seeing this more often than usual recently
> with the crown bay, but I've seen it randomly occur on other machines,
> and I remember we ran into it in the past when setting up the
> Cambridge demo, and I've seen other people report it sporadically as
> well...
> 
> Hopefully this will fix the problem once and for all.
> 
> Please pull, and also apply to laverne as well.

Merged into master, thanks, nice find :)

Richard


