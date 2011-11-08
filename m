Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEF1EE013B0
	for <poky@yoctoproject.org>; Tue,  8 Nov 2011 11:50:40 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pA8JocDd005505;
	Tue, 8 Nov 2011 19:50:38 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 04657-06; Tue,  8 Nov 2011 19:50:34 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pA8JoT89005498
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 8 Nov 2011 19:50:29 GMT
Message-ID: <1320781830.10843.105.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Joshua Lock <josh@linux.intel.com>
Date: Tue, 08 Nov 2011 19:50:30 +0000
In-Reply-To: <26f40314be2c476127ba7b33b9aa8116da15dbbb.1320777037.git.josh@linux.intel.com>
References: <cover.1320777037.git.josh@linux.intel.com>
	<26f40314be2c476127ba7b33b9aa8116da15dbbb.1320777037.git.josh@linux.intel.com>
X-Mailer: Evolution 3.2.1- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] clutter-1.8: this should be a bbappend
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
X-List-Received-Date: Tue, 08 Nov 2011 19:50:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-11-08 at 10:31 -0800, Joshua Lock wrote:
> Signed-off-by: Joshua Lock <josh@linux.intel.com>
> ---
>  ...ter-1.8_1.8.0.bb => clutter-1.8_1.8.0.bbappend} |    0
>  1 files changed, 0 insertions(+), 0 deletions(-)
>  rename meta-yocto/recipes-graphics/clutter/{clutter-1.8_1.8.0.bb => clutter-1.8_1.8.0.bbappend} (100%)
> 
> diff --git a/meta-yocto/recipes-graphics/clutter/clutter-1.8_1.8.0.bb b/meta-yocto/recipes-graphics/clutter/clutter-1.8_1.8.0.bbappend
> similarity index 100%
> rename from meta-yocto/recipes-graphics/clutter/clutter-1.8_1.8.0.bb
> rename to meta-yocto/recipes-graphics/clutter/clutter-1.8_1.8.0.bbappend

Merged to master, thanks.

Richard


