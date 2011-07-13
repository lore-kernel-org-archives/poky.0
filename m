Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 79BDF4C80BEE
	for <poky@yoctoproject.org>; Wed, 13 Jul 2011 06:32:34 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6DBWRlG028791;
	Wed, 13 Jul 2011 12:32:27 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 28092-10; Wed, 13 Jul 2011 12:32:23 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6DBWLcY028785
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 13 Jul 2011 12:32:22 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4E1C7A3E.6040502@mlbassoc.com>
References: <4E1C7A3E.6040502@mlbassoc.com>
Date: Wed, 13 Jul 2011 12:32:20 +0100
Message-ID: <1310556740.20015.1113.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Bad patch
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
X-List-Received-Date: Wed, 13 Jul 2011 11:32:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-07-12 at 10:45 -0600, Gary Thomas wrote:
> The change applied in the Poky/Yocto tree as f8bf4e2b16f5b36187a966f5bc9121033f038e90
> has a shell syntax error.  In particular, look at these lines:
> 
> @@ -179,8 +185,18 @@ kernel_do_configure() {
>                  cp "${WORKDIR}/defconfig" "${S}/.config"
>          fi
>           yes '' | oe_runmake oldconfig
> +
> +       if [ ! -z "${INITRAMFS_IMAGE}" ]; then
> +               for img in cpio.gz cpio.lzo cpio.lzma cpio.xz; do
> +               if [ -e "${DEPLOY_DIR_IMAGE}/${INITRAMFS_IMAGE}-${MACHINE}.$img"
> +                       cp "${DEPLOY_DIR_IMAGE}/${INITRAMFS_IMAGE}-${MACHINE}.$i
> ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> 
> This line seems to have been broken (no closing quote, etc)

Thanks, this should be fixed now...

Cheers,

Richard



