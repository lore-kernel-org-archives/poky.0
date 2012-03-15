Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC045E01373
	for <poky@yoctoproject.org>; Thu, 15 Mar 2012 06:13:47 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2FDDgbZ021743;
	Thu, 15 Mar 2012 13:13:42 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 21190-04; Thu, 15 Mar 2012 13:13:38 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2FDDXxA021737
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 15 Mar 2012 13:13:35 GMT
Message-ID: <1331817213.18586.81.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Lauri Hintsala <lauri.hintsala@bluegiga.com>
Date: Thu, 15 Mar 2012 13:13:33 +0000
In-Reply-To: <1331812156-32344-1-git-send-email-lauri.hintsala@bluegiga.com>
References: <1331812156-32344-1-git-send-email-lauri.hintsala@bluegiga.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] .gitignore: expand pyshtables.py ignoring
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
X-List-Received-Date: Thu, 15 Mar 2012 13:13:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-03-15 at 13:49 +0200, Lauri Hintsala wrote:
> Bitbake generates pyshtables.py to bitbake/lib/bb/pysh/ folder if the user
> has write permissions there. Let's ignore generated file also on that location.
> 
> Signed-off-by: Lauri Hintsala <lauri.hintsala@bluegiga.com>
> ---
>  .gitignore |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)

Merged to master, thanks.

Richard


