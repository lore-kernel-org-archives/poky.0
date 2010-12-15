Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id ACDD54C80FA4
	for <poky@yoctoproject.org>; Wed, 15 Dec 2010 03:09:11 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBF9AOoU025068; Wed, 15 Dec 2010 09:10:24 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id nOPqDhxnTSLi; Wed, 15 Dec 2010 09:10:23 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBF9AJBI025054
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 15 Dec 2010 09:10:21 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1292351445.git.paul.eggleton@linux.intel.com>
References: <cover.1292351445.git.paul.eggleton@linux.intel.com>
Date: Wed, 15 Dec 2010 09:08:54 +0000
Message-ID: <1292404134.26558.1572.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3] reworked environment variable whitelisting fixes
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
X-List-Received-Date: Wed, 15 Dec 2010 09:09:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-12-14 at 18:30 +0000, Paul Eggleton wrote:
> Adjustments to variable whitelisting to fix sstate package hashing. This supersedes
> the paule/sstate contrib branch.
> 
> The bitbake changes have been discussed briefly with Richard Purdie & Chris Larson.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: paule/sstate2
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/sstate2
> 
> Thanks,
>     Paul Eggleton <paul.eggleton@linux.intel.com>

Merged into master, thanks!

Cheers,

Richard



