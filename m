Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DA03E006B3
	for <poky@yoctoproject.org>; Tue, 29 Nov 2011 08:41:45 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 9BA461660155; Tue, 29 Nov 2011 09:41:42 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 7D994166010C;
	Tue, 29 Nov 2011 09:41:41 -0700 (MST)
Message-ID: <4ED50B45.70903@mlbassoc.com>
Date: Tue, 29 Nov 2011 09:41:41 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:7.0.1) Gecko/20110930 Thunderbird/7.0.1
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: Missing files in Python
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
X-List-Received-Date: Tue, 29 Nov 2011 16:41:45 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm experiencing some Python packaging issues.

* python-setuptools has a bunch of missing depends
   I had to manually install these packages to be able to run a
   simple 'setup.py' script:
       python-audio
       python-codecs
       python-compile
       python-compression
       python-core
       python-crypt
       python-datetime
       python-distutils
       python-email
       python-image
       python-io
       python-lang
       python-logging
       python-math
       python-mime
       python-netclient
       python-netserver
       python-pickle
       python-pprint
       python-re
       python-readline
       python-shell
       python-stringold
       python-threading
       python-zlib

* easy_install shows that the basic Python packages are not exporting
   the 'io' module.  I can't find any package that includes these:
     /usr/lib/python2.7/lib-dynload/_io.so
     /usr/lib/python2.7/io.py

Are these known problems?  Am I missing something?  Perhaps I should file a bug?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

