Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7A48D4C811AA
	for <poky@yoctoproject.org>; Tue, 25 Jan 2011 16:34:46 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0PMaeYm006254; Tue, 25 Jan 2011 22:36:42 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id wWwI26cjdUmQ; Tue, 25 Jan 2011 22:36:40 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0PMabTS006250
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 25 Jan 2011 22:36:39 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Saul Wold <sgw@linux.intel.com>
In-Reply-To: <4D3EFAAB.6000605@linux.intel.com>
References: <4D3EFAAB.6000605@linux.intel.com>
Date: Tue, 25 Jan 2011 22:34:20 +0000
Message-ID: <1295994860.27814.195.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PULL] Consolidated Distro Pull Request
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
X-List-Received-Date: Tue, 25 Jan 2011 22:34:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-01-25 at 08:30 -0800, Saul Wold wrote:
> Richard,
> 
> This has a number of important fixes for the -live image and psuedo,
> along with some lsb support infrastructe.
> 
> 
> -- Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: distro/master
>    Browse: 
> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=distro/master
> 
> Thanks,
>      Saul Wold <sgw@linux.intel.com>
> ---
> 
> 
> Dongxiao Xu (1):
>    kernel.bbclass: Fix sstate-output directory
> 
> Jingdong Lu (4):
>    cups: Add cups
>    liburi-perl: Rename liburi-perl
>    base-files: Add to make some directories needed by LSB.
>    task-poky-lsb: add relevant packages into task-poky-lsb
> 
> Mark Hatle (1):
>    pseudo: Revert msg cache changes

The kernel.bbclass change wasn't needed in the end as we merged the rest
of the machine specific sysroot code. I didn't take the cups recipe and
have discussed that with Saul, likewise the lsb change the depends on
it.

The rest have been merged into master.

Cheers,

Richard


