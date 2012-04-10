Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 041F2E01374
	for <poky@yoctoproject.org>; Tue, 10 Apr 2012 16:27:14 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3ANRDHQ001724;
	Wed, 11 Apr 2012 00:27:13 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 01483-04; Wed, 11 Apr 2012 00:27:09 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3ANR3QJ001718
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 11 Apr 2012 00:27:04 +0100
Message-ID: <1334100422.10826.99.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
Date: Wed, 11 Apr 2012 00:27:02 +0100
In-Reply-To: <4F8493BB.5070400@mlbassoc.com>
References: <4F8493BB.5070400@mlbassoc.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: SRC checksum checking broken
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
X-List-Received-Date: Tue, 10 Apr 2012 23:27:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-04-10 at 14:10 -0600, Gary Thomas wrote:
> I'm not sure how, but this revision broke the checking of checksums:
> 
> commit 3d69d9462d550ce4e00e14768cc616bc9ad7e8a5
> Author: Richard Purdie <richard.purdie@linuxfoundation.org>
> Date:   Fri Mar 23 14:52:23 2012 +0000
> 
>      bitbake/fetch2: Ensure mirror tarballs have .done stamps so we don't redownload and corrupt them
> 
>      [YOCTO #2154]
> 
>      (Bitbake rev: 521d6b14151d3bf934b9597557f7ae46e50a3d7a)
> 
>      Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> 
> The attached log shows this failure - I've modified the busybox_1.19.4.bb
> recipe to have incorrect checksums.  With revision 67c83a8, the failure
> is correctly identified.  With revision 3d69d94, it is not.
> 
> The error happens with direct downloads (using DL_DIR) and also
> with a mirror setup (using own-mirrors).
> 
> I've reviewed the change and I don't see how/why this happens.

There was a patch just merged for something that sounds very similar. I
was going to give you a link and realised something has gone wrong with
the commit:

http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=a46aafb8b27bd86d046385a569deee6b4c9b8bb6

as its been squashed with a subsequent commit I had to resolve a
conflict with. 

Regardless, could you see whether that change solves your problem
please?

Cheers,

Richard




