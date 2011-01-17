Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id E07B34C80BEF
	for <poky@yoctoproject.org>; Mon, 17 Jan 2011 16:11:11 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0HMCxd9009643; Mon, 17 Jan 2011 22:12:59 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id ULpSbP+6qQQ2; Mon, 17 Jan 2011 22:12:59 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0HMCskM009639
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 17 Jan 2011 22:12:56 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Dongxiao Xu <dongxiao.xu@intel.com>
In-Reply-To: <5016bc80c8904246650a7a0ab6770ec4c42b2002.1295042140.git.dongxiao.xu@intel.com>
References: <cover.1295042138.git.dongxiao.xu@intel.com>
	<5016bc80c8904246650a7a0ab6770ec4c42b2002.1295042140.git.dongxiao.xu@intel.com>
Date: Mon, 17 Jan 2011 22:10:57 +0000
Message-ID: <1295302257.14388.15777.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 2/5] staging: relocate *.la paths in destination dirs
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
X-List-Received-Date: Mon, 17 Jan 2011 22:11:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2011-01-15 at 06:14 +0800, Dongxiao Xu wrote:
> Keep the la files in source directories unchanged,
> and do relocation in destination directories (sysroot-destdir).
> 
> Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>

This is a standalone change and makes sense so I've merged this one into
master.

Cheers,

Richard


