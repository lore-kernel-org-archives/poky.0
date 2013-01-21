Return-Path: <Sen.Zhang@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3A21E013CE
	for <poky@yoctoproject.org>; Sun, 20 Jan 2013 23:00:04 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r0L704am027414
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 20 Jan 2013 23:00:04 -0800 (PST)
Received: from [128.224.162.230] (128.224.162.230) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.2.318.4;
	Sun, 20 Jan 2013 23:00:02 -0800
Message-ID: <50FCE77D.3020008@windriver.com>
Date: Mon, 21 Jan 2013 15:00:13 +0800
From: Jesse Zhang <sen.zhang@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <50F6D326.9000500@mlbassoc.com>
In-Reply-To: <50F6D326.9000500@mlbassoc.com>
X-Originating-IP: [128.224.162.230]
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Using gnome icons
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
X-List-Received-Date: Mon, 21 Jan 2013 07:00:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On 01/17/2013 12:19 AM, Gary Thomas wrote:
> I have an image based on core-image-sato.  How can I enable this
> to use the full gnome icon set?  e.g. I run an application
> which uses GTK+ directly which has a button using GTK_STOCK_MEDIA_RECORD
> On my Sato based device, this button just says 'Record' whereas on
> my desktop it shows with a nice red record icon.

Gtk has a config option for that (icons beside button text). You might
need to turn it on.

jesse

