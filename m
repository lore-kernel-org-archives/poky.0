Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 544FD4C80815
	for <poky@lists.pokylinux.org>; Wed, 10 Nov 2010 07:44:25 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAADiOBj002898;
	Wed, 10 Nov 2010 13:44:24 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 02821-03; Wed, 10 Nov 2010 13:44:20 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAADiD3k002892
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 10 Nov 2010 13:44:17 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4CD29C94.4070301@mlbassoc.com>
References: <4CD29C94.4070301@mlbassoc.com>
Date: Wed, 10 Nov 2010 21:44:10 +0800
Message-ID: <1289396650.1272.299.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: timestamp overkill?
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
X-List-Received-Date: Wed, 10 Nov 2010 13:44:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-11-04 at 05:44 -0600, Gary Thomas wrote:
> I just noticed that there are two identical functions in image.bbclass
> to set/update the image timestamp.  Why?  Left over from a previous era?
> 
> $ find meta* -name "*.bb*" -or -name "*.inc" | xargs grep create_etc_timestamp
> meta/classes/image.bbclass:create_etc_timestamp() {
> meta/classes/image.bbclass:# export the zap_root_password, create_etc_timestamp and remote_init_link
> meta/classes/image.bbclass:EXPORT_FUNCTIONS zap_root_password create_etc_timestamp remove_init_link do_rootfs make_zimage_symlink_relative set_image_autologin 
> rootfs_update_timestamp rootfs_no_x_startup
> 
> Notice that 'create_etc_timestamp' does not seem to be used by
> any recipe.  Perhaps it should be removed?

The one that is unused should probably be removed. Please file a bug
and/or submit a patch!

Cheers,

Richard



