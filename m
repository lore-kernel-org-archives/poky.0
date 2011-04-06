Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5E98E4C80132
	for <poky@yoctoproject.org>; Wed,  6 Apr 2011 14:21:21 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p36JLDcD028741;
	Wed, 6 Apr 2011 20:21:13 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 28567-02; Wed,  6 Apr 2011 20:21:09 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p36JL4F7028734
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 6 Apr 2011 20:21:06 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1302101718.git.paul.eggleton@linux.intel.com>
References: <cover.1302101718.git.paul.eggleton@linux.intel.com>
Date: Wed, 06 Apr 2011 11:10:06 -0700
Message-ID: <1302113406.22904.71.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [PATCH 0/2] Update Qt4 to 4.7.2, security update
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
X-List-Received-Date: Wed, 06 Apr 2011 19:21:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-04-06 at 15:57 +0100, Paul Eggleton wrote:
> From: Paul Eggleton <paul.eggleton@linux.intel.com>
> 
> Move Qt 4.7.x from 4.7.1 to 4.7.2 and apply security patch from OE.
> 
> Pull URL: git://git.openembedded.org/openembedded-core-contrib
>   Branch: paule/qt-4.7.2
>   Browse: http://git.openembedded.org/cgit.cgi/openembedded-core-contrib/log/?h=paule/qt-4.7.2
> 
> Thanks,
>     Paul Eggleton <paul.eggleton@linux.intel.com>
> ---
> 
> 
> Denys Dmytriyenko (1):
>   qt4: security advisory - blacklist fraudulent comodo certificates
> 
> Paul Eggleton (1):
>   qt4: replace 4.7.1 with version 4.7.2

Merged to master, thanks.

Richard


