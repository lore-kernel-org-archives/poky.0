Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3882EE003E2
	for <poky@yoctoproject.org>; Fri, 24 Feb 2012 08:49:21 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q1OGk4qA008964;
	Fri, 24 Feb 2012 16:46:04 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 08837-02; Fri, 24 Feb 2012 16:46:00 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q1OGjpc8008956
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 24 Feb 2012 16:45:55 GMT
Message-ID: <1330101943.7512.1.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Fri, 24 Feb 2012 16:45:43 +0000
In-Reply-To: <cover.1330025617.git.paul.eggleton@linux.intel.com>
References: <cover.1330025617.git.paul.eggleton@linux.intel.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Set custom Yocto psplash image
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
X-List-Received-Date: Fri, 24 Feb 2012 16:49:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-02-23 at 19:35 +0000, Paul Eggleton wrote:
> This patch corresponds to the one just sent to OE-Core which sets the OE
> logo as the default splash image there. They should be applied at around
> the same time.
> 
> The following changes since commit d8b3718303c3d56394c722059f1a73bd79131d0a:
> 
>   texi2html: Fix for multilib (2012-02-22 23:03:16 +0000)
> 
> are available in the git repository at:
>   git://git.yoctoproject.org/poky-contrib paule/yocto-psplash
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/yocto-psplash
> 
> Paul Eggleton (1):
>   meta-yocto: add bbappend to restore Yocto psplash image

Merged to master, thanks.

Richard


