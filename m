Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3708A4C80039
	for <poky@lists.pokylinux.org>; Tue, 21 Dec 2010 11:29:31 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBLHUqgh020224; Tue, 21 Dec 2010 17:30:52 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id oSz7c+8gJ6aP; Tue, 21 Dec 2010 17:30:52 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBLHUmBc020219
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 21 Dec 2010 17:30:50 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4D10C7E3.6050307@mlbassoc.com>
References: <4D10C095.5040907@mlbassoc.com>
	<1292944575.25087.6170.camel@rex>  <4D10C7E3.6050307@mlbassoc.com>
Date: Tue, 21 Dec 2010 17:29:01 +0000
Message-ID: <1292952541.25087.6312.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: New fetch error
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
X-List-Received-Date: Tue, 21 Dec 2010 17:29:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-12-21 at 08:29 -0700, Gary Thomas wrote:
> Query: is 'cleanall' expected to also remove files from $DL_DIR?
> It does so, but produces no notes about it (it's pretty verbose
> about all the other files it deletes)
> 
> If this is the case, could there be a 'cleansstate' or some
> such?  All I really wanted to do was force a complete rebuild
> of a package, ignoring the local sstate files.  'cleanall'
> gave me more than I bargained for.

Which is one of the reasons I never really wanted to add more "clean"
options. Everyone has some different expectation about what a given
'clean' should actually remove and its not possible to satisfy
everyone :/. I don't really want to end up with twenty different cleans.

Ultimately, I think -c clean should plant something in the system that
has it ignore any sstate packages *anywhere* (including remote) and
rebuild that package.

'cleanall' then makes sense as it is and nothing else should be needed.

So the above is the big hint as to the patch I'd like to see :)

Cheers,

Richard




