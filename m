Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFB28E0059C
	for <poky@yoctoproject.org>; Thu, 10 Nov 2011 10:08:28 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pAAI8POo032268;
	Thu, 10 Nov 2011 18:08:25 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 31558-07; Thu, 10 Nov 2011 18:08:21 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pAAI8HZq032262
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 10 Nov 2011 18:08:18 GMT
Message-ID: <1320948500.10252.2.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Thu, 10 Nov 2011 18:08:20 +0000
In-Reply-To: <cover.1320855375.git.paul.eggleton@linux.intel.com>
References: <cover.1320855375.git.paul.eggleton@linux.intel.com>
X-Mailer: Evolution 3.2.1- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] README.hardware fixes
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
X-List-Received-Date: Thu, 10 Nov 2011 18:08:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-11-09 at 16:17 +0000, Paul Eggleton wrote:
> A couple of fixes for the Poky README.hardware. These should also go into the
> edison branch as they are applicable there as well.
> 
> 
> The following changes since commit 23d2eaf9d283cae47e52d1151f0d4ad53bbbe8a0:
> 
>   python: skip setup.py 'import check' when cross-compiling (2011-11-08 21:48:30 +0000)
> 
> are available in the git repository at:
>   git://git.yoctoproject.org/poky-contrib paule/readme-hw
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/readme-hw
> 
> Paul Eggleton (2):
>   README.hardware: update atom-pc instructions
>   README.hardware: declare support for BeagleBoard xM rev B

Merged to master, thanks.

Richard


