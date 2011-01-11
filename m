Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6A2144C8085F
	for <poky@yoctoproject.org>; Tue, 11 Jan 2011 06:33:11 -0600 (CST)
Received: from [192.168.1.88] (unknown [83.217.123.106])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 4770E12EC118
	for <poky@yoctoproject.org>; Tue, 11 Jan 2011 07:13:17 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <cover.1294686399.git.elizabeth.flanagan@intel.com>
References: <cover.1294686399.git.elizabeth.flanagan@intel.com>
Date: Tue, 11 Jan 2011 12:33:02 +0000
Message-ID: <1294749182.2516.12.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: [PATCH 0/1] Poky License Reporting
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
X-List-Received-Date: Tue, 11 Jan 2011 12:33:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Beth,

I don't see any patches so guess you used the old-style pull script?

On Mon, 2011-01-10 at 11:09 -0800, Beth Flanagan wrote:
> Initial commit of license reporting:
> 
> This is an intial commit for the license reporting system. A few notes:
> The LICENSE fields needs to be standardized throughout poky.

Reading this summary I'd suggest we standardise on whatever the filename
in common-licenses/ is. 
Furthermore we could (should) add a sanity check whereby a LICENSE field
with values that aren't a file in common-licenses/ causes a warning or
error.

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


