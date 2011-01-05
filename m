Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 94DF34C8086F
	for <poky@yoctoproject.org>; Wed,  5 Jan 2011 08:27:46 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p05EQdZc018438; Wed, 5 Jan 2011 14:26:39 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id St9-Lnw24TZM; Wed,  5 Jan 2011 14:26:39 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p05EQWft018430
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 5 Jan 2011 14:26:34 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Lianhao Lu <lianhao.lu@intel.com>
In-Reply-To: <cover.1294223859.git.lianhao.lu@intel.com>
References: <cover.1294223859.git.lianhao.lu@intel.com>
Date: Wed, 05 Jan 2011 14:24:31 +0000
Message-ID: <1294237471.17519.22876.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] fixing bug #625
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
X-List-Received-Date: Wed, 05 Jan 2011 14:27:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-01-05 at 18:39 +0800, Lianhao Lu wrote:
> Skip building pseudo if the options passing to the bitbake contains one of the followings:
>  --version
>  -h
>  --help
>  -p
>  --parse-only
>  -s
>  --show-versions
>  -e
>  --environment
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: llu/bug625
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/bug625
> 
> Thanks,
>     Lianhao Lu <lianhao.lu@intel.com>

Merged into master, thanks.

Richard


