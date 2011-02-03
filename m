Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9CE134C800BC
	for <poky@yoctoproject.org>; Thu,  3 Feb 2011 08:43:52 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p13EjqPi001179; Thu, 3 Feb 2011 14:45:52 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id yFjvTNfh-Z77; Thu,  3 Feb 2011 14:45:52 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p13EjiPl001167
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 3 Feb 2011 14:45:46 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <4D4ABA30.4020505@windriver.com>
References: <20110203141543.0C504D81AE2@gemini.denx.de>
	<4D4ABA30.4020505@windriver.com>
Date: Thu, 03 Feb 2011 14:43:28 +0000
Message-ID: <1296744208.1544.9277.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: Build of prelink_git.bb fails
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
X-List-Received-Date: Thu, 03 Feb 2011 14:43:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-02-03 at 08:22 -0600, Mark Hatle wrote:
> Something is wrong with your host system.  Nothing has changed with the prelink
> integration since late December.
> 
> The failure seems to indicate a broken latex, tetex and/or tex2pdf installation.

Nothing changed in prelink but we did add some doc tools of various
kinds which might have triggered this.

Wolfgang - can you share a list of other native packages which have been
built? You can see this by looking for do_populate_sysroot* stamps in
the tmp/stamps/<native system>/ directory.

Cheers,

Richard


