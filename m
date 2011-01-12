Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6B5944C80050
	for <poky@yoctoproject.org>; Wed, 12 Jan 2011 05:49:04 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0CBokee026615; Wed, 12 Jan 2011 11:50:46 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id T5rTokQxk3E7; Wed, 12 Jan 2011 11:50:46 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0CBoeTO026612
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 12 Jan 2011 11:50:41 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Joshua Lock <josh@openedhand.com>
In-Reply-To: <1294747887.2516.8.camel@scimitar>
References: <cover.1294726280.git.dongxiao.xu@intel.com>
	<571d7dd33677bc0ee071cf3bca2c44dd521f7703.1294726281.git.dongxiao.xu@intel.com>
	<1294747887.2516.8.camel@scimitar>
Date: Wed, 12 Jan 2011 11:48:44 +0000
Message-ID: <1294832924.15313.2042.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 2/3] bitbake: Introduce stamp-extra-info into build stamp file
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
X-List-Received-Date: Wed, 12 Jan 2011 11:49:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-01-11 at 12:11 +0000, Joshua Lock wrote:
> Hi Dongxiao,
> 
> I've done a quick style review of this patch, comments inline.
> 
> On Tue, 2011-01-11 at 14:18 +0800, Dongxiao Xu wrote:
> > For certain tasks, we need additional information in build stamp file
> > except the task name and file name. stamp-extra-info is introduced as
> > an flag adding to the end of stamp file name.
> > 
> > Besides, if we need to add common flags for tasks, we can set value for
> > macro BB_STAMP_EXTRA.
> > 
> > Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>

I talked with Dongxiao about this patch and we agreed the best approach
will be to make bb.build.stampfile() the main entry point so most users
will be converted to use that and then the datacache vs d ugliness can
be contained in one place (stamp_internal) which calls into siggen.

Josh is right about the 0/1 vs. False/True though. Values of 0/1 are
used in many places in the code but we're trying to clean it up as we
update things.

Cheers,

Richard


