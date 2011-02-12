Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id F0C114C8007E
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 18:35:54 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1C0Zk9s013809;
	Sat, 12 Feb 2011 00:35:46 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 13674-03; Sat, 12 Feb 2011 00:35:42 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p1C0Zcd6013797
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sat, 12 Feb 2011 00:35:39 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <cover.1297456506.git.mark.hatle@windriver.com>
References: <cover.1297456506.git.mark.hatle@windriver.com>
Date: Sat, 12 Feb 2011 00:35:35 +0000
Message-ID: <1297470935.2071.36.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Update new fetcher with unpack parm
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
X-List-Received-Date: Sat, 12 Feb 2011 00:35:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-02-11 at 14:37 -0600, Mark Hatle wrote:
> Introduce the unpack param to the new fetcher2.  This allows packages
> to disable the unpack of given files, even if they would normally be
> unpacked automatically.
> 
> The existing "unpack" param for SRPM handling was changed to "extract".
> 
> I did change the cp to a tar action.  This would ensure that any files
> that are hardlinks are preserved once copied.  I'm not sure this is
> really such a big deal in the end..  (note, the hard links are local to
> the set of files.. so the set in ${WORKDIR} are not linked to the set in
> the recipe.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: mhatle/fetcher
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=mhatle/fetcher
> 
> Thanks,
>     Mark Hatle <mark.hatle@windriver.com>

Merged into master, thanks.

Richard


