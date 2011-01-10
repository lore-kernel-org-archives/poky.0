Return-Path: <josh@openedhand.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 07DC34C810CE
	for <poky@yoctoproject.org>; Mon, 10 Jan 2011 04:13:48 -0600 (CST)
Received: from [192.168.0.7] (5ad4d7b0.bb.sky.com [90.212.215.176])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 3181412EC32F
	for <poky@yoctoproject.org>; Mon, 10 Jan 2011 04:53:51 -0600 (CST)
From: Joshua Lock <josh@openedhand.com>
To: poky@yoctoproject.org
In-Reply-To: <caa56bdbc2294f3da1ccec752e1ba9e3e452f241.1294469496.git.ke.yu@intel.com>
References: <cover.1294469496.git.ke.yu@intel.com>
	<caa56bdbc2294f3da1ccec752e1ba9e3e452f241.1294469496.git.ke.yu@intel.com>
Date: Mon, 10 Jan 2011 10:13:39 +0000
Message-ID: <1294654419.2451.3.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.1 (2.32.1-1.fc14) 
Subject: Re: [PATCH 3/7] bb: add bb.fetcher as dynamic fetch module instance for fetch/fetch2
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
X-List-Received-Date: Mon, 10 Jan 2011 10:13:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2011-01-08 at 15:15 +0800, Yu Ke wrote:
> bb.fetcher is introduced to swtich between bb.fetch and bb.fetch2.
> all bb.fetch/bb.fetch2 referrence can be replaced with bb.fetcher.instance,
> so that we can cleanly switch between bb.fetch and bb.fetch2
> 
> Signed-off-by: Yu Ke <ke.yu@intel.com>
> ---
>  bitbake/lib/bb/fetcher.py |   26 ++++++++++++++++++++++++++
>  1 files changed, 26 insertions(+), 0 deletions(-)
>  create mode 100644 bitbake/lib/bb/fetcher.py
> 
> diff --git a/bitbake/lib/bb/fetcher.py b/bitbake/lib/bb/fetcher.py
> new file mode 100644
> index 0000000..3818d78
> --- /dev/null
> +++ b/bitbake/lib/bb/fetcher.py
> @@ -0,0 +1,26 @@
> +#!/usr/bin/env python
> +# ex:ts=4:sw=4:sts=4:et
> +# -*- tab-width: 4; c-basic-offset: 4; indent-tabs-mode: nil -*-
> +#
> +# This program is free software; you can redistribute it and/or modify
> +# it under the terms of the GNU General Public License version 2 as
> +# published by the Free Software Foundation.
> +#
> +# This program is distributed in the hope that it will be useful,
> +# but WITHOUT ANY WARRANTY; without even the implied warranty of
> +# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> +# GNU General Public License for more details.
> +#
> +# You should have received a copy of the GNU General Public License along
> +# with this program; if not, write to the Free Software Foundation, Inc.,
> +# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
> +
> +import bb
> +from bb import fetch, fetch2
> +
> +# switch between fetch and fetch2
> +instance = bb.fetch
> +__version__ = "1"
> +
> +#instance = bb.fetch2
> +#__version__ = "2"

I'm not very happy with this, it doesn't feel right. Can we not add some
runtime determination of which module to use (a variable in
bitbake.conf?) and then use some dynamic Python magic to add it to the
imported modules list?

A quick Google makes me thing we could do something more dynamic with
the __import__() function.
 
Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


