Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 34E054C804CA
	for <poky@yoctoproject.org>; Fri, 18 Mar 2011 12:24:53 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2IHOpRx010178;
	Fri, 18 Mar 2011 17:24:51 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 09848-05; Fri, 18 Mar 2011 17:24:47 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2IHOgti010172
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 18 Mar 2011 17:24:42 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1300467183.git.paul.eggleton@linux.intel.com>
References: <cover.1300467183.git.paul.eggleton@linux.intel.com>
Date: Fri, 18 Mar 2011 17:24:25 +0000
Message-ID: <1300469065.30423.2210.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Update README.hardware
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
X-List-Received-Date: Fri, 18 Mar 2011 17:24:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-03-18 at 16:59 +0000, Paul Eggleton wrote:
> From: Paul Eggleton <paul.eggleton@linux.intel.com>
> 
> Updates README.hardware for the 1.0 release. 
> 
> Note that this removes a number of sections for machines that have been moved
> to meta-extras. I have created a separate README.hardware.extras file for these
> to be included in meta-extras, which I will post separately.
> 
> Unfortunately we are still missing instructions for the Freescale MPC8315E-RDB;
> hopefully these can be sourced and added in time.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: paule/readme-hardware
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/readme-hardware
> 
> Thanks,
>     Paul Eggleton <paul.eggleton@linux.intel.com>
> ---
> 
> 
> Paul Eggleton (1):
>   README.hardware: update for 1.0 release

Merged to master, thanks.

Richard


