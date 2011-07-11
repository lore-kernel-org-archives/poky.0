Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id A7D5C4C80095
	for <poky@yoctoproject.org>; Mon, 11 Jul 2011 10:08:17 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6BF8F6H012305;
	Mon, 11 Jul 2011 16:08:15 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 10630-07; Mon, 11 Jul 2011 16:08:11 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6BF89ci012299
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 11 Jul 2011 16:08:10 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4E1B0525.4030107@mlbassoc.com>
References: <4E1B0525.4030107@mlbassoc.com>
Date: Mon, 11 Jul 2011 16:07:23 +0100
Message-ID: <1310396843.20015.965.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: UBIFS images
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
X-List-Received-Date: Mon, 11 Jul 2011 15:08:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-07-11 at 08:13 -0600, Gary Thomas wrote:
> I'm trying to use UBIFS on my target and I found that the images
> are not quite right.  The soft-link points to the wrong file.
> 
> $ ls -l tmp/deploy/images/*ubi*
> -rw-r--r-- 1 gthomas gthomas 7483392 Jul 11 07:56 tmp/deploy/images/my_distro-console-image-my_target-20110711135454.ubifs.img
> lrwxrwxrwx 1 gthomas gthomas      62 Jul 11 07:56 tmp/deploy/images/my_distro-console-image-my_target.ubifs -> my_distro-console-image-my_target-20110711135454.rootfs.ubifs
> 
> I've looked through meta/classes/image_types.bbclass but it's not
> clear to me [yet] where that soft-link gets built and why it gets
> it wrong.
> 
> Any pointers?

image_types.bbclass:

ln -s ${IMAGE_NAME}.rootfs.${type} ${DEPLOY_DIR_IMAGE}/${IMAGE_LINK_NAME}.${type}

The problem is that $type=ubifs but the extenstion the ubifs image
generates is ubifs.img:

IMAGE_CMD_ubifs = "mkfs.ubifs -r ${IMAGE_ROOTFS} -o ${DEPLOY_DIR_IMAGE}/${IMAGE_NAME}.ubifs.img ${MKUBIFS_ARGS}"

and we don't support generating image types where the image extension
and the type name differ...

I'd guess the quick fix is s/ubifs.img/ubifs/ in the above...

Cheers,

Richard


