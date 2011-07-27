Return-Path: <holger@freyther.de>
Received: from gandharva.secretlabs.de (gandharva.secretlabs.de
	[78.46.147.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id C263E4C800A1
	for <poky@yoctoproject.org>; Wed, 27 Jul 2011 08:13:54 -0500 (CDT)
Received: from [192.168.0.101] (91-64-80-26-dynip.superkabel.de [91.64.80.26])
	by gandharva.secretlabs.de (Postfix) with ESMTPSA id 5D4D51B10C0D
	for <poky@yoctoproject.org>; Wed, 27 Jul 2011 13:23:48 +0000 (UTC)
Message-ID: <4E300F10.6090102@freyther.de>
Date: Wed, 27 Jul 2011 15:13:52 +0200
From: Holger Hans Peter Freyther <holger@freyther.de>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.18) Gecko/20110617 Lightning/1.0b2 Thunderbird/3.1.11
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4E3008DA.8090401@freyther.de>
	<201107271357.22352.paul.eggleton@linux.intel.com>
In-Reply-To: <201107271357.22352.paul.eggleton@linux.intel.com>
X-Enigmail-Version: 1.1.1
Subject: Re: Another story of a non upstream user of poky
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
X-List-Received-Date: Wed, 27 Jul 2011 13:13:55 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 07/27/2011 02:57 PM, Paul Eggleton wrote:

> 
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"

this works nicely, I think the THISDIR assignment should be removed from
meta-yocto though. Now there appears to be one more bug, PACKAGE_ARCH is not
set to the MACHINE_ARCH even after the right interfaces is used. Is that known?



