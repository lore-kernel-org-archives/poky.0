Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 83B764C81065
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 09:21:08 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0HFMmXJ025679; Mon, 17 Jan 2011 15:22:48 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id c81WLD1dlli2; Mon, 17 Jan 2011 15:22:48 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0HFMgHf025672
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 17 Jan 2011 15:22:44 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Saul Wold <saul.wold@intel.com>
In-Reply-To: <4D33FF53.2090103@intel.com>
References: <4D2FD707.4080509@windriver.com> <4D30A632.707@intel.com>
	<4D30A67B.2070004@windriver.com> <4D30BD51.7030305@windriver.com>
	<4D33FF53.2090103@intel.com>
Date: Mon, 17 Jan 2011 15:19:29 +0000
Message-ID: <1295277569.14388.14924.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] pseudo: Update to the latest upstream version
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
X-List-Received-Date: Mon, 17 Jan 2011 15:21:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-01-17 at 00:35 -0800, Saul Wold wrote:
> On 01/14/2011 01:17 PM, Mark Hatle wrote:
> > A potential solution to this problem has been pushed to the poky-contrib
> > mhatle/pseudo tree.
> >
> > If anyone is interested in trying this, I'd appreciate it.  I've so far not been
> > able to reproduce the original problem locally, but based on the symptoms I
> > believe we've got a likely fix in place.
> >
> Mark,
> 
> I have this patch in a distro/master right now, it fixes the original 
> problem, but I am seeing another problem with the poky-image-sdk target 
> where I am getting a load of permission denied during the tar of the 
> do_populate_sdk task.

You mean meta-toolchain-sdk?

Cheers,

Richard


