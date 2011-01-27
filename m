Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3BE5A4C8118C
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 04:45:02 -0600 (CST)
Received: from [192.168.1.88] (unknown [83.217.123.106])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id C97BC12EC1CA
	for <poky@yoctoproject.org>; Thu, 27 Jan 2011 05:26:03 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <05b4554fa01169237bf8f55e2b6a5de5e64ab32a.1296095614.git.lianhao.lu@intel.com>
References: <cover.1296095614.git.lianhao.lu@intel.com>
	<05b4554fa01169237bf8f55e2b6a5de5e64ab32a.1296095614.git.lianhao.lu@intel.com>
Date: Thu, 27 Jan 2011 10:44:53 +0000
Message-ID: <1296125093.2711.9.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: [PATCH 1/6] cross-canadian/apt-native: support for debian package.
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
X-List-Received-Date: Thu, 27 Jan 2011 10:45:02 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-01-27 at 10:51 +0800, Lianhao Lu wrote:
> From: Lianhao Lu <lianhao.lu@intel.com>
> 
> 1. Set DPKG_ARCH in cross-canadian.bbclass to make debian package to be
> generated with correct architecture.
> 
> 2. Added licence checksum for apt-native.

This should be two patches please as it's two unrelated changed.

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


