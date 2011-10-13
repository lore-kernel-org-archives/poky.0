Return-Path: <holger@freyther.de>
Received: from mail.symoco.de (sysmocom.de [78.46.147.233])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12137E00B11
	for <poky@yoctoproject.org>; Thu, 13 Oct 2011 03:45:49 -0700 (PDT)
Received: from [87.77.171.181] (zabb5.pia.fu-berlin.de [87.77.171.181])
	by mail.symoco.de (Postfix) with ESMTPSA id 9EFF72543634
	for <poky@yoctoproject.org>; Thu, 13 Oct 2011 10:43:40 +0000 (UTC)
Message-ID: <4E96C156.90402@freyther.de>
Date: Thu, 13 Oct 2011 12:45:42 +0200
From: Holger Hans Peter Freyther <holger@freyther.de>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.23) Gecko/20110922 Lightning/1.0b2 Thunderbird/3.1.15
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4E969C83.9070407@freyther.de>
In-Reply-To: <4E969C83.9070407@freyther.de>
X-Enigmail-Version: 1.1.1
Subject: Re: kernel packages and /etc in FILES
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
X-List-Received-Date: Thu, 13 Oct 2011 10:45:51 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 10/13/2011 10:08 AM, Holger Hans Peter Freyther wrote:

> Does this still apply to the latest version?

I had to put FILES_${PN} = "" into my kernel recipe. Is this something that
applies to the default yocto kernel?

holger

