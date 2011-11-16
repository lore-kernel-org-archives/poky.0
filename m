Return-Path: <holger@freyther.de>
Received: from gandharva.secretlabs.de (gandharva.secretlabs.de
	[78.46.147.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F686E00307
	for <poky@yoctoproject.org>; Wed, 16 Nov 2011 12:38:49 -0800 (PST)
Received: from [192.168.1.250] (91-65-246-230-dynip.superkabel.de
	[91.65.246.230])
	by gandharva.secretlabs.de (Postfix) with ESMTPSA id 7F4C91B10C0C
	for <poky@yoctoproject.org>; Wed, 16 Nov 2011 20:37:27 +0000 (UTC)
Message-ID: <4EC41F50.5090109@freyther.de>
Date: Wed, 16 Nov 2011 21:38:40 +0100
From: Holger Hans Peter Freyther <holger@freyther.de>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.23) Gecko/20111010 Iceowl/1.0b2 Icedove/3.1.15
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <aeedea3c-261d-447f-beb5-d2c6752c583f@zimbra33-e6.priv.proxad.net>
In-Reply-To: <aeedea3c-261d-447f-beb5-d2c6752c583f@zimbra33-e6.priv.proxad.net>
X-Enigmail-Version: 1.1.2
Subject: Re: Qt should be linked to openssl at compilation
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
X-List-Received-Date: Wed, 16 Nov 2011 20:38:50 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 11/16/2011 08:47 PM, Francois Dupoux wrote:

> We just need to add "-openssl-linked" to QT_CONFIG_FLAGS in recipes-qt/qt4.

or make the QtNetwork package have RDEPENDS on libssl/libcrypto.

