Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 538E14C81021
	for <poky@yoctoproject.org>; Wed, 12 Jan 2011 05:19:16 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0CBKvPE025341; Wed, 12 Jan 2011 11:20:57 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id DodQ+7P6+w4o; Wed, 12 Jan 2011 11:20:57 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0CBKsID025336
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 12 Jan 2011 11:20:56 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Lianhao Lu <lianhao.lu@intel.com>
In-Reply-To: <cover.1294798118.git.lianhao.lu@intel.com>
References: <cover.1294798118.git.lianhao.lu@intel.com>
Date: Wed, 12 Jan 2011 11:18:58 +0000
Message-ID: <1294831138.15313.1961.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Bug #651 fixing
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
X-List-Received-Date: Wed, 12 Jan 2011 11:19:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-01-12 at 10:11 +0800, Lianhao Lu wrote:
> Due to the gcc fixing in commit f13cb20, the c++ include dir is not needed to be
> included in the CXXFLAGS environment variable in the meta-environment files.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: llu/bug651
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/bug651
> 
> Thanks,
>     Lianhao Lu <lianhao.lu@intel.com>


Merged into master, thanks.

Richard


