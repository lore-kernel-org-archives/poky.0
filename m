Return-Path: <holger@freyther.de>
Received: from mail.sysmocom.de (sysmocom.de [78.46.147.233])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C102E01430
	for <poky@lists.yoctoproject.org>; Thu, 13 Sep 2012 23:05:48 -0700 (PDT)
Received: from sangmingze-mail.local (91-66-230-199-dynip.superkabel.de
	[91.66.230.199])
	by mail.sysmocom.de (Postfix) with ESMTPSA id 7BA992543428
	for <poky@lists.yoctoproject.org>; Fri, 14 Sep 2012 06:09:09 +0000 (UTC)
Received: from ich by sangmingze-mail.local with local (Exim 4.80)
	(envelope-from <holger@freyther.de>) id 1TCP24-0005vH-7E
	for poky@lists.yoctoproject.org; Fri, 14 Sep 2012 08:05:40 +0200
Date: Fri, 14 Sep 2012 08:05:40 +0200
From: Holger Hans Peter Freyther <holger@freyther.de>
To: poky@lists.yoctoproject.org
Message-ID: <20120914060540.GA22757@localhost>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: syslog-startup.conf and filesize limit of the logfile
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
X-List-Received-Date: Fri, 14 Sep 2012 06:05:49 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

I am currently rebasing my work from edison to master and while doing
this I noticed that the busysbox syslog changed from using a fixed
internal buffer to a logfile that should reside in memory/tmpfs.

The commit message in 35d1c6821d0ad6557203336a4440cfd8e1480c7d does not
discuss how much space will be consumed as a maximum, the ROTATEGENS
and ROTATESIZE parameters are not set and the commit sadly does not
describe what is the default of busybox.

Looking at the source (and the help message busybox will print) the
default size should be 200kb and the number of rotation is 1? Can somebody
confirm that?


holger

