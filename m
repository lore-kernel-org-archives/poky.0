Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3CB104C80FA4
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 10:27:50 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0VGTotJ005949; Mon, 31 Jan 2011 16:29:50 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id Xl9KMVgVF+VO; Mon, 31 Jan 2011 16:29:50 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0VGThDJ005944
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 31 Jan 2011 16:29:45 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Qing He <qing.he@intel.com>
In-Reply-To: <cover.1296463869.git.qing.he@intel.com>
References: <cover.1296463869.git.qing.he@intel.com>
Date: Mon, 31 Jan 2011 16:27:33 +0000
Message-ID: <1296491253.13501.13609.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] fix createrepo-native
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
X-List-Received-Date: Mon, 31 Jan 2011 16:27:50 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-01-31 at 16:52 +0800, Qing He wrote:
> From: Qing He <qing.he@intel.com>
> 
> The binaries hard code /usr/share/createrepo to look for python libraries,
> this needs to change for -native version to work.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: qhe/fix
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=qhe/fix
> 
> Thanks,
>     Qing He <qing.he@intel.com>
> ---
> 
> 
> Qing He (1):
>   createrepo: fix native binary
> 
>  .../createrepo/createrepo/fix-native-install.patch |   40 +++++++++++++++++++-
>  .../createrepo/createrepo_0.4.11.bb                |    2 +-
>  2 files changed, 40 insertions(+), 2 deletions(-)

Merged into master, thanks.

Richard


