Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5D9704C808B0
	for <poky@yoctoproject.org>; Tue, 21 Dec 2010 05:04:41 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBLB60fE005027; Tue, 21 Dec 2010 11:06:00 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 5qsTKElGNOHR; Tue, 21 Dec 2010 11:06:00 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBLB5q2w005024
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 21 Dec 2010 11:05:54 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Joshua Lock <josh@openedhand.com>
In-Reply-To: <1292928863.2701.2.camel@scimitar>
References: <cover.1292567626.git.ke.yu@intel.com>
	<1292861428.25087.4661.camel@rex>  <20101221053230.GB20780@kyu3-hedt>
	<1292928863.2701.2.camel@scimitar>
Date: Tue, 21 Dec 2010 11:04:06 +0000
Message-ID: <1292929446.25087.5890.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] SRC_URI checksum support v3
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
X-List-Received-Date: Tue, 21 Dec 2010 11:04:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-12-21 at 10:54 +0000, Joshua Lock wrote:
> On Tue, 2010-12-21 at 13:32 +0800, Yu Ke wrote:
> > BTW, I am also thinking if we could merge Fetch.write_md5sum and
> > Fetch.verify_md5sum into verify_checksum, since they are all checksum
> > related, puting them together would be more clean logically.
> 
> That makes the assumption that you only want to verify a checksum when
> fetching one, which I don't think is correct?

We really only want to take the time to compute the checksums once, then
mark something to say we've checked it and move on.

I think the use of the ".md5" file is misleading and we should probably
find a more logical approach to this but in principle checking after
download should be ok. We can always have something to enable a recheck
if the user really wanted it I guess but most of the time it will be a
waste of time.

Cheers,

Richard


