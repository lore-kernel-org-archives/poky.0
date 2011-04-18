Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id A40D84C805A8
	for <poky@yoctoproject.org>; Mon, 18 Apr 2011 05:09:01 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p3IA8w2N011192;
	Mon, 18 Apr 2011 11:08:58 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 11105-02; Mon, 18 Apr 2011 11:08:55 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p3IA8opi011186
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 18 Apr 2011 11:08:51 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Qing He <qing.he@intel.com>
In-Reply-To: <a55f9845fafefc56a276a1cd6eb354a7fc0e4549.1302863087.git.qing.he@intel.com>
References: <cover.1302863087.git.qing.he@intel.com>
	<a55f9845fafefc56a276a1cd6eb354a7fc0e4549.1302863087.git.qing.he@intel.com>
Date: Mon, 18 Apr 2011 11:08:42 +0100
Message-ID: <1303121322.5518.94.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] sat-solver: fix arch=all packages
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
X-List-Received-Date: Mon, 18 Apr 2011 10:09:02 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Qing,

On Fri, 2011-04-15 at 18:26 +0800, Qing He wrote:
> +diff --git a/CMakeLists.txt b/CMakeLists.txt
> +index 443281e..4456a87 100644
> +--- a/CMakeLists.txt
> ++++ b/CMakeLists.txt
> +@@ -45,6 +45,11 @@ MESSAGE(STATUS "Building for Debian")
> + ADD_DEFINITIONS( -DDEBIAN -DDEBIAN_SEMANTICS)
> + ENDIF ( DEBIAN )
> + 
> ++IF ( POKY )
> ++MESSAGE(STATUS "Building for Poky")
> ++ADD_DEFINITIONS( -DPOKY -DPOKY_SEMANTICS)
> ++ENDIF ( POKY )

We're trying to move away from the Poky branding. Could we use OECORE in
this patch instead please?

Cheers,

Richard


