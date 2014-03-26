Return-Path: <jeremy@visionaid.com>
Received: from n1plsmtpa01-01.prod.ams1.secureserver.net
	(n1plsmtpa01-01.prod.ams1.secureserver.net [188.121.53.6])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C574E00A44
	for <poky@yoctoproject.org>; Wed, 26 Mar 2014 02:34:40 -0700 (PDT)
Received: from [10.31.15.100] ([135.196.109.35])
	by n1plsmtpa01-01.prod.ams1.secureserver.net with 
	id i9aV1n0080lrq4v019aV39; Wed, 26 Mar 2014 02:34:36 -0700
Message-ID: <53329F23.8020307@visionaid.com>
Date: Wed, 26 Mar 2014 09:34:27 +0000
From: Jeremy Powell <jeremy@visionaid.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: poky@yoctoproject.org
Subject: Poky core-image-minimal fails to build with package_deb
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
X-List-Received-Date: Wed, 26 Mar 2014 09:34:42 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi All,

I'm trying to build poky from the git master head, but there are several 
problems in the DpkgIndexer class in ./meta/lib/oe/package_manager.py

For instance:
cd %s; PSEUDO_UNLOAD=1 %s packages > Packages
should be
cd %s; PSEUDO_UNLOAD=1 %s packages . > Packages

The generation of the "Release" file also appears to be incorrect (maybe 
it is also missing a trailing period?).

Finally, the creation of the Packages.gz file causes an error, but I'm 
not currently familiar enough with Yocto to fix it, but perhaps someone 
else might be able to help? (Seems to me that this part of the build is 
running the commands in parallel but needs to performed be serially)

Kind regards,
Jeremy

-- 
Jeremy Powell
Senior Software Engineer

VisionAid International Ltd
Unit 9
Crawley Business Centre
Stephenson Way
Three Bridges
Crawley
West Sussex
RH10 1TN


