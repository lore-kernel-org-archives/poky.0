Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 20CD64C808B0
	for <poky@yoctoproject.org>; Mon, 20 Dec 2010 11:56:12 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBKHvVf3004045; Mon, 20 Dec 2010 17:57:31 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id OpSmZWHR3rqF; Mon, 20 Dec 2010 17:57:31 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBKHvRxI004040
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 20 Dec 2010 17:57:29 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <201012201202.45150.paul.eggleton@linux.intel.com>
References: <cover.1290442820.git.paul.eggleton@intel.com>
	<201012201202.45150.paul.eggleton@linux.intel.com>
Date: Mon, 20 Dec 2010 17:55:44 +0000
Message-ID: <1292867744.25087.4847.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] sstate.bbclass: delete sstate files when doing cleanall
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
X-List-Received-Date: Mon, 20 Dec 2010 17:56:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2010-12-20 at 12:02 +0000, Paul Eggleton wrote:
> On Monday 22 November 2010 16:20:20 Paul Eggleton wrote:
> > Single commit which fixes deleting sstate cache files when doing cleanall.
> > 
> > Pull URL: git://git.pokylinux.org/poky-contrib.git
> >   Branch: paule/sstate-clean-fix
> >   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/sstate-clean-fix
> 
> Has anyone had a chance to look at this yet?

I looked at it and wanted to think about the "*" in there further but
never quite got back to it. Its certainly the better way around for this
to work so I've merged it to master, thanks.

The concern btw, is how to disable packages on remote sstate mirrors...

Richard


