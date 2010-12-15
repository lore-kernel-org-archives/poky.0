Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id E312E4C81003
	for <poky@pokylinux.org>; Wed, 15 Dec 2010 03:12:37 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBF9DmUY025196; Wed, 15 Dec 2010 09:13:48 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id gIsERMNShFe0; Wed, 15 Dec 2010 09:13:47 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBF9Dg1I025191
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 15 Dec 2010 09:13:44 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Kevin Tian <kevin.tian@intel.com>
In-Reply-To: <0d30dc$kf5f5e@orsmga001.jf.intel.com>
References: <0d30dc$kf5f5e@orsmga001.jf.intel.com>
Date: Wed, 15 Dec 2010 09:12:18 +0000
Message-ID: <1292404338.26558.1582.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: paul.eggleton@linux.intel.com, poky@pokylinux.org
Subject: Re: [PATCH 0/1] Fix weird rebuild issue even when sstate signature doesn't change
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
X-List-Received-Date: Wed, 15 Dec 2010 09:12:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-12-14 at 21:40 +0800, Kevin Tian wrote:
> This patch is to fix one weird issue I've keeping seeing recently when using sstate.
> Even with a minimal build, there're around 50 recipes rebuilt from scratch even though
> sstate packages in sstate_cache do match. Actually the end result is to just overwrite
> sstate packages again with same sigature for those recipes.
> https://lists.yoctoproject.org/pipermail/poky/2010-December/001063.html
> 
> The cause for this mess is from misinterpretation of the index of a list, which then
> points to wrong setscene tasks instead of desired ones. The end result is that some
> tasks which don't need execution are scheduled while other setscene tasks which need
> run are simply skipped.
> 
> It's based on Paul's sstate branch.

I've merged this patch into master, good catch and hopefully this gets
sstate into a good working state.

I've merged an updated version of Paul's sstate branch too.

I'm hoping this makes sstate packages finally usable!

Cheers,

Richard



