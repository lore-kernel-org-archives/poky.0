Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id BD7444C800C1
	for <poky@yoctoproject.org>; Wed, 15 Jun 2011 05:50:34 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p5FAoXsE025745;
	Wed, 15 Jun 2011 11:50:33 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 25636-02; Wed, 15 Jun 2011 11:50:29 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p5FAoOi1025739
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 15 Jun 2011 11:50:25 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1307727577.git.paul.eggleton@linux.intel.com>
References: <cover.1307727577.git.paul.eggleton@linux.intel.com>
Date: Wed, 15 Jun 2011 11:50:22 +0100
Message-ID: <1308135022.15712.405.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] meta-yocto: FILESEXTRAPATHS_prepend := in all bbappends
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
X-List-Received-Date: Wed, 15 Jun 2011 10:50:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-06-10 at 18:43 +0100, Paul Eggleton wrote:
> The following changes since commit b30cb584a738915113e88b7db1028d53b2bae5f9:
> 
>   Revert "gcc: rebase the patch to avoid patch rejection" (2011-06-10 13:30:28 +0100)
> 
> are available in the git repository at:
>   git://git.pokylinux.org/poky-contrib paule/filespath
>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/filespath
> 
> Paul Eggleton (1):
>   meta-yocto: use FILESEXTRAPATHS_prepend := in all bbappends

Merged to master, thanks.

Richard


