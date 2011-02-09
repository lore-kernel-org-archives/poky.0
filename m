Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5FAFE4C80053
	for <poky@pokylinux.org>; Wed,  9 Feb 2011 05:26:18 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p19BQ9px031637;
	Wed, 9 Feb 2011 11:26:09 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 31617-01; Wed,  9 Feb 2011 11:26:05 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p19BQ491031631
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 9 Feb 2011 11:26:04 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Ilya Yanok <yanok@emcraft.com>
In-Reply-To: <1297196798-23779-1-git-send-email-yanok@emcraft.com>
References: <1297196798-23779-1-git-send-email-yanok@emcraft.com>
Date: Wed, 09 Feb 2011 11:26:02 +0000
Message-ID: <1297250762.1395.6431.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@pokylinux.org
Subject: Re: [PATCH 1/3] linux: add LIC_FILES_CHKSUM
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
X-List-Received-Date: Wed, 09 Feb 2011 11:26:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-02-08 at 21:26 +0100, Ilya Yanok wrote:
> Linux is licensed under GPL so add appropriate LIC_FILES_CHKSUM to
> linux.inc file.
> 
> Signed-off-by: Ilya Yanok <yanok@emcraft.com>

Thanks for these, I merged patches 1-3 into master. I also updated the
LICENSE field to specify the GPL version for these recipes.

Cheers,

Richard


