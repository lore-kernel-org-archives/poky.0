Return-Path: <Sen.Zhang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A72C1E013CE
	for <poky@yoctoproject.org>; Sun, 20 Jan 2013 22:55:50 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r0L6tmZU028319
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 20 Jan 2013 22:55:48 -0800 (PST)
Received: from [128.224.162.230] (128.224.162.230) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.2.318.4;
	Sun, 20 Jan 2013 22:55:48 -0800
Message-ID: <50FCE67F.70903@windriver.com>
Date: Mon, 21 Jan 2013 14:55:59 +0800
From: Jesse Zhang <sen.zhang@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: "Ali, Nasir" <Nasir_Ali@mentor.com>
References: <53B11A2698485743AAA262E995E2C3F1915F154F@EU-MBX-01.mgc.mentorg.com>
In-Reply-To: <53B11A2698485743AAA262E995E2C3F1915F154F@EU-MBX-01.mgc.mentorg.com>
X-Originating-IP: [128.224.162.230]
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: pandaboard building with nfs client support
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
X-List-Received-Date: Mon, 21 Jan 2013 06:55:50 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On 01/17/2013 12:38 AM, Ali, Nasir wrote:
> I am using yocto danny branch for pandaboard. Could anyone help me out what configurations I need to set to have a support for nfs mounted file system.

Just add "nfs" to DISTRO_FEATURES, through your local.conf. It will
bring in the proper packages.

jesse

