Return-Path: <holger@freyther.de>
Received: from gandharva.secretlabs.de (gandharva.secretlabs.de
	[78.46.147.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 118DBE00307
	for <poky@yoctoproject.org>; Wed, 16 Nov 2011 14:09:24 -0800 (PST)
Received: from [192.168.1.250] (91-65-246-230-dynip.superkabel.de
	[91.65.246.230])
	by gandharva.secretlabs.de (Postfix) with ESMTPSA id 40EB01B10C0C
	for <poky@yoctoproject.org>; Wed, 16 Nov 2011 22:08:03 +0000 (UTC)
Message-ID: <4EC4348B.7010003@freyther.de>
Date: Wed, 16 Nov 2011 23:09:15 +0100
From: Holger Hans Peter Freyther <holger@freyther.de>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.23) Gecko/20111010 Iceowl/1.0b2 Icedove/3.1.15
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <5c7672eb-ff1d-4bc7-bdf8-81f467051e8d@zimbra33-e6.priv.proxad.net>
	<4EC42C07.7010409@windriver.com>
In-Reply-To: <4EC42C07.7010409@windriver.com>
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
X-List-Received-Date: Wed, 16 Nov 2011 22:09:25 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 11/16/2011 10:32 PM, Mark Hatle wrote:

> 
> I'd like to try to reproduce this linking to openssl, but not getting
> referenced in the dependency set.

Qt has three SSL options:
	1.) no SSL
	2.) dlopen at runtime (the one probably configured), some people
            believe it avoids the OpenSSL advertizement clause.. and saves
	    static initialization when SSL is not used..
	3.) link to OpenSSL (the -openssl-linked config option the original
	    mail is referring to)


Either you do 2.) and make QtNetwork RDEPEND on libssl/libcrypt and make sure
the symlinks are present... or you do 3.) as proposed in the original email.

