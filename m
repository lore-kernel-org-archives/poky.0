Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63BFDE0047F
	for <poky@yoctoproject.org>; Mon,  7 Jan 2013 03:43:09 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id r07Bh5BP004097;
	Mon, 7 Jan 2013 11:43:05 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 32489-10; Mon,  7 Jan 2013 11:43:01 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id r07BgvhB004090
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Mon, 7 Jan 2013 11:42:58 GMT
Message-ID: <1357558979.24865.0.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Saul Wold <sgw@linux.intel.com>
Date: Mon, 07 Jan 2013 11:42:59 +0000
In-Reply-To: <cover.1356630970.git.sgw@linux.intel.com>
References: <cover.1356630970.git.sgw@linux.intel.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [POKY CONSOLIDATED PULL 0/4] Distro Specific Updates
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
X-List-Received-Date: Mon, 07 Jan 2013 11:43:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-12-27 at 09:57 -0800, Saul Wold wrote:
> Richard,
> 
> Here is the split of the package regex along with some updates
> to the distro files.
> 
> Thanks
> 	Sau!
> 
> The following changes since commit 4a36a32567ecfbc7ce7b967803e6e23314953ef5:
> 
>   libpng: fix packaging (2012-12-26 11:34:09 +0000)
> 
> are available in the git repository at:
> 
>   git://git.yoctoproject.org/poky-contrib sgw/poky
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgw/poky
> 
> Constantin Musca (2):
>   gthumb: finalize removal
>   mutter: finalize mutter removal
> 
> Emilia Ciobanu (1):
>   Added regex file in meta-yocto/conf/distro/include.
> 
> Otavio Salvador (1):
>   distro/poky: Add "Debian GNU/Linux 7.0 (wheezy)" as know distribution

Merged to master, thanks.

Richard


