Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id C51C24C80FFE
	for <poky@yoctoproject.org>; Wed, 29 Dec 2010 14:27:42 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBTKT9P6015946; Wed, 29 Dec 2010 20:29:10 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id b85yF3YSiwFY; Wed, 29 Dec 2010 20:29:09 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	oBTKT5jn015941
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 29 Dec 2010 20:29:07 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Saul Wold <saul.wold@intel.com>
In-Reply-To: <4D1B7784.6080604@intel.com>
References: <cover.1293616099.git.ke.yu@intel.com> <4D1B7784.6080604@intel.com>
Date: Wed, 29 Dec 2010 20:26:53 +0000
Message-ID: <1293654413.17519.9146.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] check if lockfile is writable (bug 606 patch V2)
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
X-List-Received-Date: Wed, 29 Dec 2010 20:27:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-12-29 at 10:01 -0800, Saul Wold wrote:
> I still wonder about this.  If the DL_DIR is read-only, since it is a 
> shared environment (as example), when a fetch occurs, it may be for 
> different reasons.
> 
> A couple of examples are:
> 1) an upstream fetch was missed (world build, but different hardware)
> 2) a developer changed the version information
> 
> In cases like this we really do want to do the fetch, so how can we 
> handle that issue correctly, and not just fail and force the user to 
> re-download all the packages (which may not be possible).
> 
> One option I can think of is to add a "WRITABLE_DL_DIR" (losy name but 
> you get the idea) or something like that which if the DL_DIR is 
> read-only could be written to for the lock file and ultimately the fetch 
> of the missing upstream package.

DL_DIR *must* be writeable. We don't support the use case where it is
not. We handle readonly directory sources as part of the mirror
handling. It might be not a lot is written to DL_DIR, that is just fine.

I therefore agree with Ke's patch which errors if the directory is
writeable.

Cheers,

Richard




