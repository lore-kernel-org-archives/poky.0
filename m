Return-Path: <holger@freyther.de>
Received: from gandharva.secretlabs.de (gandharva.secretlabs.de
	[78.46.147.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8D4D44C801DA
	for <poky@yoctoproject.org>; Tue,  5 Jul 2011 17:43:39 -0500 (CDT)
Received: from [192.168.0.101] (91-64-95-94-dynip.superkabel.de [91.64.95.94])
	by gandharva.secretlabs.de (Postfix) with ESMTPSA id 70B481B10C0D
	for <poky@yoctoproject.org>; Tue,  5 Jul 2011 22:51:48 +0000 (UTC)
Message-ID: <4E139399.7010500@freyther.de>
Date: Wed, 06 Jul 2011 00:43:37 +0200
From: Holger Hans Peter Freyther <holger@freyther.de>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110516 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4E133C02.1020707@mlbassoc.com> <1309884260.20015.727.camel@rex>
	<4E1385B2.7050405@mlbassoc.com>
In-Reply-To: <4E1385B2.7050405@mlbassoc.com>
X-Enigmail-Version: 1.1.1
Subject: Re: Image size explosion
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
X-List-Received-Date: Tue, 05 Jul 2011 22:43:40 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 07/05/2011 11:44 PM, Gary Thomas wrote:

> 
> I just updated against the latest master and rebuilt and now my images
> are back to a more sane size.

I have posted a udev (libgudev ends in the wrong package, pulling in
glib/gthread/gio/gmodule/gobject) fix to the OE ml, it might apply to you too.

holger

