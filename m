Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A81EE01400
	for <poky@yoctoproject.org>; Thu, 31 Jan 2013 05:16:32 -0800 (PST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r0VDL0S1030635; Thu, 31 Jan 2013 13:21:00 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id HBrcGtRg2DM3; Thu, 31 Jan 2013 13:21:00 +0000 (GMT)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r0VDKrhN030632
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256
	verify=NOT); Thu, 31 Jan 2013 13:20:56 GMT
Message-ID: <1359638160.14071.33.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Kang Kai <kai.kang@windriver.com>
Date: Thu, 31 Jan 2013 13:16:00 +0000
In-Reply-To: <7d6384809071471145ea9ee101bac414e481bc78.1359444101.git.kai.kang@windriver.com>
References: <cover.1359444101.git.kai.kang@windriver.com>
	<7d6384809071471145ea9ee101bac414e481bc78.1359444101.git.kai.kang@windriver.com>
X-Mailer: Evolution 3.6.2-0ubuntu0.1 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] local.conf.sample.extended: add variable ROOT_HOME
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 31 Jan 2013 13:16:33 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2013-01-29 at 15:25 +0800, Kang Kai wrote:
> Add variable ROOT_HOME to local.conf.sample.extended.
> 
> Signed-off-by: Kang Kai <kai.kang@windriver.com>
> ---
>  meta-yocto/conf/local.conf.sample.extended |    4 ++++
>  1 files changed, 4 insertions(+), 0 deletions(-)

I'd suggest someone send Scott a patch to the manual to document this
variable instead.

Cheers,

Richard


