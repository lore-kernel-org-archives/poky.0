Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id A36AD4C80AAC
	for <poky@lists.pokylinux.org>; Wed, 16 Mar 2011 17:10:38 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 39AD116601C0; Wed, 16 Mar 2011 16:10:38 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id E3AB516601A2;
	Wed, 16 Mar 2011 16:10:36 -0600 (MDT)
Message-ID: <4D81355C.5060700@mlbassoc.com>
Date: Wed, 16 Mar 2011 16:10:36 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: Shared library packaging
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
X-List-Received-Date: Wed, 16 Mar 2011 22:10:39 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm working on a recipe which has a number of shared libraries (actually
this is just an import from OE (mozilla/nss) which has the same problem as listed below)
The package creates a number of libraries (from the work tree):
     image/usr/lib/libsmime3.so -> libsmime3.so.1oe
     image/usr/lib/libsmime3.so.1oe
     image/usr/lib/libsoftokn3.so
     image/usr/lib/libfreebl3.so
     image/usr/lib/libnssutil3.so -> libnssutil3.so.1oe
     image/usr/lib/libnssutil3.so.1oe
     image/usr/lib/libnss3.so -> libnss3.so.1oe
     image/usr/lib/libnss3.so.1oe
     image/usr/lib/libssl3.so -> libssl3.so.1oe
     image/usr/lib/libssl3.so.1oe

The .so.1oe files are packaged in nss_XXX.ipk and the .so files are
put into nss-dev_XXX.ipk.  The problem is that there is code out there
that only wants to look for the .so files (no -dev packages installed)
and fail to find libsoftokn3.so and libfreebl3.so

Is there a way to [easily?] force these two libraries to be packaged
into nss-XXX.ipk?

My current workaround is to use a post-install script to create the .so
files from the .so.1oe files for these two libraries.  It gets my code
(chromium-11 browser!) to work, but it's not very satisfying.

Any ideas?  Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

